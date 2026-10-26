# Blackboard Planner Synthetic Proof Run

**Run type:** Demonstration only

**Run status:** Complete as a synthetic local proof; live Blackboard and Rework actions not performed

**Video:** `outputs/reworkio_blackboard_planner_proof_demo.mp4`

**Video verification:** 1920 x 1080 H.264 MP4, 27 seconds. The final frame shows the approval gate and the blocked external actions.

## Audit trail

| Step | Result | Evidence |
|---|---|---|
| Start one Monday through Sunday school week | Passed | Demo packet uses Week 7, October 26 through November 1, 2026 |
| Check connection state | Passed in demo mode | Synthetic Blackboard host and page type are explicitly marked demo only |
| Keep class routes separate | Passed | CRJ and PSY have different course keys, course IDs, destinations, and output folders |
| Extract item metadata | Passed | Each demo item includes week, type, title, due date, source, draft, PDF, destination, and approval status |
| Prepare downloader output | Passed in demo mode | Each route has a separate prepared files folder |
| Apply approval gate | Passed | Both items remain `user_review_required` |
| Submit to Blackboard | Not run | The proof packet forbids Blackboard submission |
| Send to a class chat | Not run | The proof packet forbids external sends until destination and approval are resolved |
| Upload to Rework | Not run | Requires a connected Chrome tab and user approval at the final control |

## What this proves

The planner can represent a repeatable weekly workflow, separate class data, create searchable item records, prepare downloader packets, and stop before high consequence external actions.

## What this does not prove

This synthetic run does not prove that a current Blackboard page was read, that an assignment is currently open, that a real deadline is current, or that any coursework was submitted. Those claims require a live, user controlled Chrome run and visible evidence.
