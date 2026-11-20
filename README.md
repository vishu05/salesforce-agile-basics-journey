# Salesforce Agile Basics — End-to-End Delivery Journey

Standalone portfolio project applying **Salesforce Agile Basics** (Trailhead) to a real delivery model: business case, functional/technical design, end-to-end agile runbook, and a Salesforce **Agile Delivery Tracker** app.

**Author:** Vishwender Saida  
**Version:** 1.0 — 20 November 2026  
**Trailhead module:** [Salesforce Agile Basics](https://trailhead.salesforce.com/content/learn/modules/salesforce-agile-basics)

## Units covered

| Unit | Focus |
|------|--------|
| 1. Why Salesforce adopted Agile | Growth pains (2006), waterfall vs agile, Scrum intro, Definition of Done |
| 2. Learn the basics of Agile | Agile Manifesto, values, principles, frameworks, practices — *being* vs *doing* agile |
| 3. Learn to use Lean principles | Seven Lean values: Respect People, Eliminate Waste, Deliver Fast, Just-in-Time Decisions, Optimize the Whole, Create Knowledge, Build Quality In |

## Delivery model

```text
Vision / V2MOM
  -> Product Backlog (prioritized)
  -> Sprint Planning (2-week cadence)
  -> Build + Daily Stand-up
  -> Definition of Done
  -> Sprint Demo (inspect deliverable)
  -> Retrospective (inspect process)
  -> Release increment
```

## Documents

| Document | Purpose |
|----------|---------|
| [docs/01-Business-Requirements-Document.md](docs/01-Business-Requirements-Document.md) | Business case and BRD from Trailhead learning |
| [docs/02-Functional-and-Technical-Specification.md](docs/02-Functional-and-Technical-Specification.md) | Functional + technical design for the tracker |
| [docs/03-End-to-End-Agile-Delivery-Process.md](docs/03-End-to-End-Agile-Delivery-Process.md) | Step-by-step agile delivery runbook |
| [docs/04-User-Stories-Scratch-to-Done.md](docs/04-User-Stories-Scratch-to-Done.md) | Backlog from foundation through first release |

## Salesforce org (personal DE)

| Item | Value |
|------|-------|
| Org | `vishu4sfdc@saibersys.com` (alias `vscodeOrg`) |
| App | **Agile Delivery Tracker** |
| Objects | `Agile_Project__c`, `Agile_Sprint__c`, `Agile_User_Story__c` |

```powershell
cd Salesforce-Agile-Basics-Project
sf project deploy start --source-dir force-app --target-org vscodeOrg
sf org assign permset --name Agile_Delivery_Tracker_User --target-org vscodeOrg
sf apex run --file scripts/apex/seed-agile-project.apex --target-org vscodeOrg
sf org open --path /lightning/o/Agile_Project__c/list --target-org vscodeOrg
```

**Note (Developer Edition):** This DE org is at the custom-app limit, so objects/tabs/permset/data were deployed successfully, but the Lightning app `Agile_Delivery_Tracker` may need a free custom-app slot (or a non-DE org) before it can be deployed. Until then, open **Agile Projects / Agile Sprints / Agile User Stories** from App Launcher.

## GitHub

Repo: https://github.com/vishu05/salesforce-agile-basics-journey
