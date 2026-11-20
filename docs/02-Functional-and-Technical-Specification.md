# Functional & Technical Specification

## Salesforce Agile Basics — Agile Delivery Tracker

| Item | Detail |
|------|--------|
| **Version** | 1.0 — 20 November 2026 |
| **Author** | Vishwender Saida |
| **Project** | Salesforce Agile Basics portfolio / delivery playbook |
| **Companion** | BRD · End-to-end runbook · User stories |

---

# PART A — FUNCTIONAL DESIGN

## 1. Executive summary

Provide a lightweight Salesforce application — **Agile Delivery Tracker** — so a delivery team can manage an **Agile Project**, timeboxed **Sprints**, and **User Stories** through Product Backlog → Sprint Backlog → Done, aligned to Trailhead Agile Basics and Lean principles.

## 2. Goals & non-goals

### Goals
| ID | Goal |
|----|------|
| G1 | Single releasable unit of work = User Story |
| G2 | Sprint is the planning/execution container (typically 2 weeks) |
| G3 | Status workflow mirrors backlog → sprint → done |
| G4 | Capture Framework (Scrum/Kanban/Scrumban/XP) and Lean principle tags |
| G5 | Support Definition of Ready / Definition of Done fields |

### Non-goals
- Replacing Jira/Azure DevOps at enterprise scale
- Full capacity planning / burndown charts (can be added later)
- Automating Git promotions (see Copado DevOps Journey)

## 3. Personas

| Persona | Responsibilities in the app |
|---------|------------------------------|
| Product Owner | Prioritize backlog, set story value, accept done work |
| Scrum Lead | Protect process, track sprint goal, remove blockers |
| Team member | Update story status, note progress, honor DoD |
| Stakeholder | Review demos; optional read access |

## 4. Functional requirements

| ID | Requirement | Priority |
|----|-------------|----------|
| FR-P-01 | Create/edit Agile Project with status, framework, vision | Must |
| FR-P-02 | Record Lean principles emphasized for the project | Should |
| FR-S-01 | Create Sprints under a Project with start/end and goal | Must |
| FR-S-02 | Sprint status: Planned / Active / Completed | Must |
| FR-U-01 | Create User Stories with key, epic, priority, points | Must |
| FR-U-02 | Link story to Project and optional Sprint | Must |
| FR-U-03 | Status: Backlog / Ready / Sprint / In Progress / Review / Done | Must |
| FR-U-04 | Capture Description, Acceptance Criteria, DoR, DoD notes | Must |
| FR-U-05 | Flag Lean principle(s) the story advances | Should |
| FR-A-01 | Lightning app with tabs for Project, Sprint, User Story | Must |
| FR-A-02 | Permission set for full CRUD on tracker objects | Must |

## 5. Business rules

| ID | Rule |
|----|------|
| BR-01 | Product backlog items live at Project level with Status = Backlog or Ready |
| BR-02 | Only Ready stories may be pulled into an Active sprint |
| BR-03 | A story may belong to at most one Sprint at a time |
| BR-04 | Done requires Acceptance Criteria met and DoD checklist complete |
| BR-05 | Unfinished work at sprint end returns to Ready/Backlog (not auto-Done) |
| BR-06 | Sprint Goal is mandatory before Sprint Status = Active |

## 6. End-to-end process (functional)

```text
Create Project (vision + framework + Lean focus)
  -> Build Product Backlog (stories)
  -> Refine until Definition of Ready
  -> Plan Sprint (select Ready stories + Sprint Goal)
  -> Execute (stand-ups; update status)
  -> Meet Definition of Done
  -> Sprint Demo
  -> Retrospective (actionable experiment)
  -> Next Sprint / Release increment
```

---

# PART B — TECHNICAL DESIGN

## 7. Org & packaging

| Item | Value |
|------|-------|
| Target org | Developer Edition (`vscodeOrg`) |
| API version | 68.0 |
| Packaging | Unlocked / source deploy via Salesforce CLI |
| Namespace | none |

## 8. Data model

```text
Agile_Project__c
    ├── Agile_Sprint__c (Master-Detail / Lookup: Project)
    └── Agile_User_Story__c (Lookup: Project, Lookup: Sprint)
```

### 8.1 Agile_Project__c
| Field | Type | Notes |
|-------|------|-------|
| Name | Text | Project name |
| Status__c | Picklist | Draft / Active / Completed |
| Framework__c | Picklist | Scrum / Kanban / Scrumban / XP |
| Vision__c | Long Text | Product vision |
| Lean_Focus__c | Multi-select | Seven Lean principles |
| Git_Repo_URL__c | URL | Documentation / source repo |
| Description__c | Long Text | Scope summary |

### 8.2 Agile_Sprint__c
| Field | Type | Notes |
|-------|------|-------|
| Name | Text | e.g. Sprint 1 |
| Project__c | Lookup | Parent project |
| Sprint_Number__c | Number | Sequence |
| Start_Date__c | Date | |
| End_Date__c | Date | |
| Sprint_Goal__c | Long Text | |
| Status__c | Picklist | Planned / Active / Completed |

### 8.3 Agile_User_Story__c
| Field | Type | Notes |
|-------|------|-------|
| Name | Text | Story title |
| Story_Key__c | Text (External Id, Unique) | e.g. AG-001 |
| Project__c | Lookup | Required |
| Sprint__c | Lookup | Optional until planned |
| Epic__c | Text | Epic label |
| Status__c | Picklist | Backlog → Done |
| Priority__c | Picklist | High / Medium / Low |
| Story_Points__c | Number | Relative size |
| Description__c | Long Text | As a… I want… so that… |
| Acceptance_Criteria__c | Long Text | |
| Definition_of_Ready__c | Long Text | Ready checklist notes |
| Definition_of_Done__c | Long Text | Done checklist notes |
| Lean_Principle__c | Picklist | Primary Lean principle |

## 9. Security

| Artifact | Purpose |
|----------|---------|
| `Agile_Delivery_Tracker_User` permission set | App + object + field access |
| OWD | ReadWrite (DE portfolio use) |

## 10. Seed data

Apex script `scripts/apex/seed-agile-project.apex` creates:
- Project: **Salesforce Agile Basics Journey**
- Sprints: Sprint 0 (Foundation), Sprint 1 (First Increment)
- User stories covering BRD → DoD → first release

## 11. Non-functional

| Area | Target |
|------|--------|
| Usability | Standard Lightning record pages / tabs |
| Maintainability | Source-driven metadata in Git |
| Traceability | Story keys map to docs/04 backlog |
