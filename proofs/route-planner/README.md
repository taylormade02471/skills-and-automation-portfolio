# Nashville Live Audit Transit Planner

## Proof of work

The Nashville Live Audit Transit Planner is a deployed, map-first field-work planner. It separates open, accepted, needs-completion, and completed work; filters by provider; preserves job requirements; lets the user select stops; and builds a route from the user's current location or a chosen origin.

## Public evidence

- Repository: https://github.com/TaylorMade-Creations/linked-jobs-route-planner
- Live deployment: https://www.routeplanner.space/
- Continuous run: `route_creation_live.mp4`
- Recording format: H.264, 800 x 600, 29.36 seconds
- Automated run: `route_creation_automated_run.mp4`
- Automated recording format: H.264, 1280 x 800, 15.96 seconds

The recording shows the planner, selected job stops, and a generated route map in one continuous browser run. It is not a still-image montage.

The automated recording is produced by `automations/record_route_planner_automation_proof.spec.js`. Playwright opens the local demo, selects two routeable jobs, invokes the route layer, grants a demo geolocation, plans the return route, and leaves the numbered route visible on the map. The run passed with two selected jobs and zero browser console errors. The local demo uses synthetic test records; it does not log into a provider or submit work.

## Verification scope

- Current planner loads from the public deployment.
- Provider-specific job parsing and status filters are covered by tests.
- Android share intake strips credentials before route-visible sync.
- Connection surfaces expose safe metadata and read-only permissions rather than private secrets.
- The integrated local checkout passed 90 tests; the secure provider-connection checkout separately passed 77 tests.
- The automated recording run passed its route-state assertions before the MP4 was encoded.

## Limits

This proof does not claim that provider accounts are authenticated, that a provider website is scraped, that work is accepted automatically, or that revenue increased. Provider login and job acceptance remain user-controlled.
