# Reworkio Skill and Proof Inventory

Updated: 2026-10-26

This inventory is a truthful map of work that can support Reworkio proof submissions. It is organized by coherent project so a skill is attached only to evidence that actually demonstrates it.

## Scope and evidence rules

This pass reviewed relevant user-authored project folders, public GitHub repository metadata, deployed project metadata, existing proof packages, automation scripts, and focused test results. It intentionally did not inspect password stores, browser cookies, MFA or passkey data, private school records, financial records, or unrelated system files. Duplicate worktrees were treated as copies of the same project rather than separate skills.

The result is a high-confidence working inventory, not a claim that every file on the computer is a portfolio project. A skill belongs in Reworkio only when a reviewer can connect it to a public repository, live demo, walkthrough, technical document, or reproducible test.

## What the Reworkio form supports

The screenshots supplied for the form show four top-level evidence paths: Proof of work, Skills, Portfolio case study, and Certificate. The proof picker accepts Live Automation / Demo URL, GitHub Repository, HuggingFace Model, Automation Demo / Walkthrough, External Certification, Published Research / Article, Technical Documentation, and Manual Entry.

The free-text skill field is useful for project-specific technologies such as `JavaScript`, `Python`, `Playwright`, or `Vercel`. The preset skill buttons should be selected only when the attached proof visibly supports them. A certificate can support course completion, but it does not by itself prove that a working automation was built.

## Evidence status legend

- **Proof-ready:** a public artifact and a verification path are available now.
- **Supporting:** the skill or code exists in a project, but it needs a focused public demo, file link, or walkthrough before attaching it as a verified skill.
- **Do not claim yet:** the current scan did not find a defensible artifact for the claim.

## Proof-ready project entries

### 1. Nashville Live Audit Transit Planner

- **Title:** Nashville Live Audit Transit Planner
- **Category:** Workflow Automation, Software, or Other AI / Automation
- **Subcategory:** Route Planning / Data Integration / AI QA if available
- **Description:** Built a browser-based job and route planner that normalizes job data, preserves source details, selects verified stops, builds an outward-first route, and reports route readiness without inventing unknown coordinates or provider data. The workflow includes safe provider boundaries and a return path to the captured location.
- **Skills to attach:** `JavaScript`, `HTML`, `CSS`, `Node.js`, `Workflow Automation`, `Browser Automation`, `Playwright`, `Data Pipelines & ETL`, `REST APIs`, `Git`, `GitHub`, `Vercel`, `Automated Testing`, `Map Applications`, `PWA`
- **Repository:** https://github.com/TaylorMade-Creations/linked-jobs-route-planner
- **Live demo:** https://www.routeplanner.space
- **Walkthrough:** https://raw.githubusercontent.com/taylormade02471/skills-and-automation-portfolio/main/proofs/route-planner/route_creation_automated_run.mp4
- **Automation source:** https://github.com/taylormade02471/skills-and-automation-portfolio/blob/main/automations/record_route_planner_automation_proof.spec.js
- **Measured verification:** The integrated planner test suite passed 90 tests. A focused automated browser run passed and recorded a route with 2 selected jobs, a current-route-ready status, a numbered route, and a return path. A separate secure route-planner worktree also passed 77 focused tests.
- **Reviewer check:** Open the repository, run the focused test command from its README, or watch the walkthrough and inspect the linked automation source.

### 2. Wasteland Survivor

- **Title:** Wasteland Survivor Interactive Game Prototype
- **Category:** Software, Games, or Other AI / Automation
- **Subcategory:** Browser Game / PWA / Interactive Application
- **Description:** Built an interactive browser survival game prototype with offline guest access, lobby and loadout flow, Nightfall gameplay, campaign progression, store validation, survival scoring, capture-the-flag rules, and responsive presentation.
- **Skills to attach:** `JavaScript`, `HTML`, `CSS`, `Browser Application Development`, `Game Development`, `Game State`, `PWA`, `Vercel`, `Automated Testing`, `Git`, `GitHub`
- **Repository:** https://github.com/taylormade02471/wasteland-survivor
- **Live demo:** https://wastland-surviror.vercel.app
- **Existing proof package:** `proofs/wasteland-survivor/`
- **Measured verification:** The current game test run passed 71 tests, including campaign progression, store validation, survival scoring, elimination rules, capture-the-flag scoring, reward rules, and Nightfall presentation behavior.
- **Reviewer check:** Open the live demo, inspect the repository, and run the documented test files. Use a fresh walkthrough showing the actual browser state rather than a still image.

### 3. Account Integration Truth Base

- **Title:** Account Integration Truth Base and Guarded Workflow Router
- **Category:** Workflow Automation or Other AI / Automation
- **Subcategory:** AI QA / Testing, Account Routing, or Automation Governance
- **Description:** Built a class-scoped and account-scoped workflow system that routes coursework work by approved metadata, keeps connector roles separate, refuses secret-like values, preserves user approval gates, and produces safe handoffs for review. The system is designed to stop when a route or identity is uncertain.
- **Skills to attach:** `JavaScript`, `Workflow Automation`, `AI Agents & Assistants`, `Browser Automation`, `API Integration`, `Data Pipelines & ETL`, `Class-Scoped Routing`, `Safe Account Controls`, `Automated Testing`
- **Repository:** https://github.com/taylormade02471/account-integration-truth-base
- **Portfolio proof package:** https://github.com/taylormade02471/skills-and-automation-portfolio/tree/main/proofs/account-integration-truth-base
- **Measured verification:** The coursework workflow contract passes. The related control-unit test suite passed 35 tests, including secret rejection, safe vault-reference handling, route approval behavior, pending-route reporting, and account verification without storing secret values.
- **Reviewer check:** Review the public contract and test fixtures. A new short walkthrough should show the router choosing a class-scoped route and stopping at an approval gate with synthetic data.
- **Boundary:** This is a workflow and safety proof. It does not claim unattended Blackboard access or automatic academic submission.

### 4. Blackboard Planner Synthetic Workflow

- **Title:** Blackboard Weekly Coursework Planner, Synthetic Demonstration
- **Category:** Workflow Automation or Technical Documentation
- **Subcategory:** Scheduling / Data Indexing / QA
- **Description:** Created a synthetic, class-separated planner that scopes work Monday through Sunday, extracts current items, tracks prompts and status, prepares class-specific packet metadata, builds PDF preparation handoffs, and stops before external posting or submission. The example keeps CRJ and PSY records separate and uses synthetic course labels.
- **Skills to attach:** `PowerShell`, `JavaScript`, `Workflow Automation`, `Data Indexing`, `ETL`, `Weekly Scheduling`, `Class-Scoped Routing`, `PDF Packet Preparation`, `Technical Documentation`, `Synthetic Test Data`
- **Repository:** https://github.com/taylormade02471/skills-and-automation-portfolio
- **Proof package:** https://github.com/taylormade02471/skills-and-automation-portfolio/tree/main/proofs/blackboard-planner
- **Automation source:** `proofs/blackboard-planner/record_reworkio_blackboard_planner_demo.ps1`
- **Reviewer check:** Read the proof README and run the synthetic demo. The reviewer should see the approval gate and the absence of credentials, private course content, or real submission actions.
- **Boundary:** Do not describe this as a live school integration or as proof of submitting coursework.

## Supporting projects that need a focused proof

These are real project areas found in the scan, but they should receive their own demo, repository link, or technical-documentation proof before being used to verify a skill.

| Project area | Skills that may be supportable | Evidence needed before submission |
| --- | --- | --- |
| Ph4antonarchitect / portfolio tooling | Python, TypeScript, JavaScript, HTML, CSS, technical writing | A public repository path and a short run showing the specific Python or TypeScript feature |
| Job Slinger / MegaLog importer | JavaScript, data normalization, browser integration, ETL, REST APIs | A redacted importer walkthrough with a fixture and output |
| Shopify Product Intelligence | JavaScript, Shopify, product data, CSV or API integration | A public-safe repository or screen recording using synthetic product data |
| YouTube upload agent and media automation | JavaScript, OAuth integration, workflow automation, video processing | A clean run using an owned test video and explicit rights; no private OAuth tokens in the proof |
| Firmware downloader and device tooling | Java, Android, PowerShell, download automation, technical documentation | A lawful firmware-download or recovery walkthrough; do not describe it as bypassing device security |
| TaylorMade storefront and Stone Wick work | TypeScript, JavaScript, storefront integration, product operations | A public URL or redacted repository plus a focused feature walkthrough |
| Movie Room and media catalog tooling | JavaScript, media cataloging, file automation, deployment | A rights-safe catalog demo; keep media ownership and distribution claims separate |

## Skills to add now, by proof

Use these as the custom free-text tags in the matching proof. Do not paste the entire list onto every project.

### Route planner

`JavaScript, HTML, CSS, Node.js, Workflow Automation, Browser Automation, Playwright, Data Pipelines & ETL, REST APIs, Git, GitHub, Vercel, Automated Testing, Map Applications, PWA`

### Wasteland Survivor

`JavaScript, HTML, CSS, Browser Application Development, Game Development, Game State, PWA, Vercel, Automated Testing, Git, GitHub`

### Account Integration Truth Base

`JavaScript, Workflow Automation, AI Agents & Assistants, Browser Automation, API Integration, Data Pipelines & ETL, Class-Scoped Routing, Safe Account Controls, Automated Testing`

### Blackboard synthetic planner

`PowerShell, JavaScript, Workflow Automation, Data Indexing, ETL, Weekly Scheduling, Class-Scoped Routing, PDF Packet Preparation, Technical Documentation, Synthetic Test Data`

## Skills found but not ready to verify with the current proof

These names appeared in relevant project code or adjacent work, but they need a dedicated demonstration before being presented as a verified Reworkio skill:

- **Supporting:** `Python`, `TypeScript`, `Java`, `Android`, `Docker`, `SQL`, `Firestore`, `Shopify`, `C/C++`, `REST APIs` when the exact endpoint is not shown, and `Video Processing`.
- **No dedicated proof found in this pass:** `n8n`, `Zapier`, `LangChain`, `Model Fine-tuning`, `Audio & Speech`, `Computer Vision`, `Multimodal AI`, `Predictive Analytics`, `ONNX`, `TensorRT`, `AI Safety & Red Teaming`, `Data Annotation & Labeling`, `HuggingFace Model`, and `Published Research / Article`.

Do not add a skill merely because it appears as an example in the Reworkio form or because it is a familiar technology. Add it after attaching a reviewer-checkable artifact.

## Certificate handling

External certificates can be added separately with the issuer, year, and public verification URL. The Google and Coursera certificates previously listed are supporting credentials, not substitutes for a working project proof. When a certificate form asks what was built with the course, link it to the matching project only when the connection is accurate and visible.

## Recommended submission order

1. Submit the Nashville Live Audit Transit Planner with the repository, live URL, automated walkthrough, and the route-specific tags.
2. Submit Wasteland Survivor with the repository, live URL, and a moving browser walkthrough that shows the game running.
3. Submit Account Integration Truth Base with the repository and a fresh synthetic router walkthrough.
4. Add the Blackboard Planner as a separate synthetic workflow proof if the form accepts governance and technical-documentation work.
5. Create focused proofs for Python, TypeScript, Shopify, Android, Docker, SQL, n8n, Zapier, or LangChain only after a corresponding run is recorded.

## Submission safety

No Reworkio submission, external upload, certificate claim, or account change was performed by this inventory pass. Before submitting, review each title, category, skill set, repository URL, live URL, and video URL yourself. Use only public-safe artifacts. Never upload passwords, MFA codes, cookies, session URLs, private course material, student information, or unreleased keys.
