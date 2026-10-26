# Blackboard Planner Automation

Class separated weekly coursework intake, tagging, packet preparation, and approval routing.

## What this proof demonstrates

The planner runs one Monday through Sunday school week at a time and keeps two class routes separate. A synthetic run demonstrates:

1. Locking the current school week.
2. Checking a user controlled browser connection.
3. Extracting current item metadata.
4. Routing two class records into separate destinations.
5. Building searchable tags.
6. Preparing editable and PDF packet states.
7. Writing a review and downloader handoff.
8. Stopping before submission, external messaging, or account changes.

## Evidence

- [Synthetic proof packet](reworkio_blackboard_planner_demo_packet.json)
- [Synthetic audit trail](reworkio_blackboard_planner_demo_audit.md)
- [Screen recording](reworkio_blackboard_planner_proof_demo.mp4)
- [Reproducible demo script](record_reworkio_blackboard_planner_demo.ps1)

## Reviewer notes

The data in this folder is synthetic. The browser host, course identifiers, destinations, item titles, and dates are demo values. No private school page, credential, student record, grade, classmate post, or real submission is included.

The proof is intentionally honest about its boundary. It demonstrates the workflow design, routing, audit trail, and safe stop. It does not claim unattended access to a live learning system or automatic submission of academic work.

## Safe design choices

- Current page evidence takes priority over stale notes.
- Authentication, MFA, passkeys, account selection, and remember device prompts stop the run.
- CRJ and PSY outputs never cross route boundaries.
- Credentials and session material are never stored in the workflow.
- Final posting, sending, uploading, certification, and submission require user approval.
