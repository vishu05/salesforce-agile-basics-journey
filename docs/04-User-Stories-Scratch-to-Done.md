# User Stories — Scratch to Done

## Salesforce Agile Basics Journey Backlog

| Item | Detail |
|------|--------|
| **Version** | 1.0 — 20 November 2026 |
| **Author** | Vishwender Saida |
| **Project** | Salesforce Agile Basics Journey |
| **Sprint 0** | Foundation & enablement |
| **Sprint 1** | First valuable increment |

---

## Epic map

| Epic | Intent |
|------|--------|
| E0 Foundation | Project setup, working agreements, tracker deploy |
| E1 Agile Mindset | Manifesto values, being vs doing agile |
| E2 Lean Operating System | Seven Lean principles in practice |
| E3 Scrum Cadence | Backlog, sprint, demo, retro |
| E4 First Release | Ship a demoable increment with DoD |

---

## Sprint 0 — Foundation

### AG-001 — Provision Agile Delivery Tracker
**As a** delivery lead  
**I want** the Agile Delivery Tracker deployed to our org  
**So that** the team has a single place for projects, sprints, and stories  

**Acceptance criteria**
- App, objects, tabs, and permission set deployed
- Permission set assigned to working users
- Sample project record exists

**Status:** Done (seeded)

---

### AG-002 — Publish working agreements
**As a** Scrum Lead  
**I want** DoR, DoD, sprint length, and roles written down  
**So that** the team shares expectations  

**Acceptance criteria**
- 2-week sprint agreed
- DoR and DoD checklists published in project Description/Vision
- Product Owner and Scrum Lead named

---

### AG-003 — Capture product vision
**As a** Product Owner  
**I want** a clear project vision  
**So that** backlog prioritization maps to customer value  

**Acceptance criteria**
- Vision field populated on Agile Project
- Framework selected (Scrum)
- Lean Focus multi-select set

---

## Sprint 1 — First increment

### AG-010 — Teach waterfall vs agile decision
**As a** team member  
**I want** a simple guide for when to use agile vs waterfall  
**So that** we pick the right process for work complexity  

**Acceptance criteria**
- Decision questions documented in runbook §2.1
- Complex/innovative work defaults to agile

**Lean principle:** Create Knowledge

---

### AG-011 — Adopt Agile Manifesto values
**As a** team  
**I want** the four Manifesto values as working norms  
**So that** we prioritize people, working software, collaboration, and change  

**Acceptance criteria**
- Values posted in project Description
- Team can answer the three “being agile” questions

**Lean principle:** Respect People

---

### AG-012 — Implement Definition of Ready
**As a** Product Owner  
**I want** a Definition of Ready  
**So that** we eliminate waste from starting unclear work  

**Acceptance criteria**
- DoR checklist exists
- Stories cannot move to Sprint without Ready status
- At least 3 stories refined to Ready

**Lean principle:** Eliminate Waste

---

### AG-013 — Implement Definition of Done
**As a** team  
**I want** a shared Definition of Done  
**So that** “done” means trustworthy, demoable work  

**Acceptance criteria**
- DoD checklist covers build, test, review, demo-ready
- No story marked Done without DoD notes

**Lean principle:** Build Quality In

---

### AG-014 — Run first sprint planning
**As a** Scrum Lead  
**I want** a committed sprint backlog and goal  
**So that** the team focuses on one outcome for 2 weeks  

**Acceptance criteria**
- Sprint 1 record Active with Sprint Goal
- Ready stories linked to Sprint 1
- Points/priority visible

**Lean principle:** Deliver Fast

---

### AG-015 — Deliver demoable increment
**As a** stakeholder  
**I want** a sprint demo of finished work  
**So that** we inspect outcomes and adapt  

**Acceptance criteria**
- ≥1 story meets DoD
- Demo held; feedback logged as backlog notes
- Incomplete stories returned to Ready (not forced Done)

**Lean principle:** Optimize the Whole

---

### AG-016 — Run retrospective with experiments
**As a** team  
**I want** actionable experiments after the retro  
**So that** process improves every sprint  

**Acceptance criteria**
- Retro completed
- 1–2 experiments added to next sprint backlog
- Owner assigned for each experiment

**Lean principle:** Create Knowledge

---

### AG-017 — Just-in-time design decision
**As a** developer  
**I want** to delay detailed design until the last responsible moment  
**So that** we learn from customers before over-building  

**Acceptance criteria**
- No big-bang design doc required before Sprint 1 start
- Decisions recorded when enough information exists

**Lean principle:** Just-in-Time Decisions

---

## Story status legend

| Status | Meaning |
|--------|---------|
| Backlog | Identified, not refined |
| Ready | Meets Definition of Ready |
| Sprint | Committed to active sprint |
| In Progress | Actively being built |
| Review | Built; awaiting acceptance / DoD check |
| Done | DoD met; demoable |
