import { test, expect } from '@playwright/test';

test.use({
  viewport: { width: 1280, height: 800 },
  video: { mode: 'on', size: { width: 1280, height: 800 } },
});

test('record an automated route creation run', async ({ page }) => {
  const consoleErrors = [];
  page.on('console', message => {
    if (message.type() === 'error') consoleErrors.push(message.text());
  });

  const proofUrl = process.env.PROOF_URL || 'http://127.0.0.1:3300/';
  const proofOrigin = new URL(proofUrl).origin;
  await page.context().grantPermissions(['geolocation'], { origin: proofOrigin });
  await page.context().setGeolocation({ latitude: 36.5296, longitude: -87.3594 });
  await page.goto(proofUrl, { waitUntil: 'domcontentloaded' });
  await page.waitForLoadState('networkidle').catch(() => {});
  await page.waitForTimeout(2500);

  await expect(page.getByRole('heading', { name: 'Nashville Live Audit Transit Planner' })).toBeVisible();
  await page.locator('button[data-app-view="jobs"]').click();
  await page.waitForTimeout(1200);

  const jobs = page.locator('input[data-route-job-id]');
  const jobCount = await jobs.count();
  if (jobCount < 2) throw new Error(`Expected at least two routeable jobs, found ${jobCount}`);

  await jobs.nth(0).check();
  await page.waitForTimeout(900);
  await jobs.nth(1).check();
  await page.waitForTimeout(1000);

  await expect(page.locator('#jobSelectionStatus')).toContainText('2 selected');
  await page.locator('#viewSelectedRoute').click();
  await page.waitForTimeout(2400);
  await expect(page.locator('#jobSelectionStatus')).toContainText('Showing route layer for 2 selected job(s).');

  await page.locator('#planFurthestFirstRoute').click();
  await page.waitForTimeout(2400);
  await expect(page.locator('#jobSelectionStatus')).toContainText('Current route ready:');

  await page.locator('button[data-app-view="map"]').click();
  await page.locator('#mainMap').scrollIntoViewIfNeeded();
  await page.waitForTimeout(2600);

  const result = {
    url: page.url(),
    routeJobsSelected: 2,
    routeStatus: await page.locator('#jobSelectionStatus').innerText(),
    consoleErrors,
    completedAt: new Date().toISOString(),
  };
  console.log(`AUTOMATED_PROOF_RESULT ${JSON.stringify(result)}`);
});
