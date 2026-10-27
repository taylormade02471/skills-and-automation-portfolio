# Nashville Live Audit Transit Planner

## Proof of work

The Nashville Live Audit Transit Planner is a deployed, map-first field-work planner. It separates open, accepted, needs-completion, and completed work; filters by provider; preserves job requirements; lets the user select stops; and builds a route from the user's current location or a chosen origin.

## Public evidence

- Repository: https://github.com/TaylorMade-Creations/linked-jobs-route-planner
- Live deployment: https://www.routeplanner.space/
- Continuous run: `route_creation_live.mp4`
- Recording format: H.264, 800 x 600, 29.36 seconds

The recording shows the planner, selected job stops, and a generated route map in one continuous browser run. It is not a still-image montage.

## Verification scope

- Current planner loads from the public deployment.
- Provider-specific job parsing and status filters are covered by tests.
- Android share intake strips credentials before route-visible sync.
- Connection surfaces expose safe metadata and read-only permissions rather than private secrets.
- The integrated local checkout passed 90 tests; the secure provider-connection checkout separately passed 77 tests.

## Limits

This proof does not claim that provider accounts are authenticated, that a provider website is scraped, that work is accepted automatically, or that revenue increased. Provider login and job acceptance remain user-controlled.
