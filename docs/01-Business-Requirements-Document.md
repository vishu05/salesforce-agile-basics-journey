# Business Requirements Document

## Salesforce Agile Basics — Delivery Transformation

| Item | Detail |
|------|--------|
| **Version** | 1.0 — 20 November 2026 |
| **Author** | Vishwender Saida |
| **Source** | Trailhead: Salesforce Agile Basics (3 units) |
| **Audience** | Sponsors, product owners, delivery leads, developers, admins |

---

## 1. Executive summary

In 2006 Salesforce faced a scaling crisis: more customers, more product, more people — and slower innovation. The Technology & Products organization reinvented delivery by adopting **agile** and **Lean** practices, with **Scrum** as a primary framework and a shared **Definition of Done**.

This project captures those lessons as a **business operating model** and implements an **Agile Delivery Tracker** in Salesforce so a team can run vision → backlog → sprint → demo → retrospective → release end to end.

---

## 2. Business problem

| Symptom | Impact |
|---------|--------|
| Waterfall-style big-bang planning | Late discovery of wrong requirements |
| Unclear “finished” | Partially tested work reaches customers; trust erodes |
| Siloed teams / weak collaboration | Communication cost grows faster than headcount |
| Waste (multitasking, reactive work, unfinished WIP) | Slow delivery and low learning rate |
| Process for process’ sake | Teams *do* agile ceremonies without *being* agile |

---

## 3. Business objectives

| ID | Objective | Success measure |
|----|-----------|-----------------|
| BO-01 | Deliver customer value every 2-week sprint | Demoable increment each sprint |
| BO-02 | Standardize Definition of Done | Zero “done” stories without DoD checklist |
| BO-03 | Reduce waste with Definition of Ready | Stories enter sprint only when ready |
| BO-04 | Make progress visible | Product + sprint backlog always current |
| BO-05 | Continuously improve | ≥1 actionable experiment per retrospective |

---

## 4. Scope

### In scope
- Agile mindset: Manifesto values, principles, frameworks, practices
- Lean principles applied to delivery decisions
- Scrum-style cadence: backlog, sprint planning, stand-up, demo, retrospective
- Salesforce app to track projects, sprints, and user stories
- End-to-end business and technical documentation

### Out of scope
- Installing Salesforce GUS or third-party ALM tools
- Full SAFe / multi-cloud program management
- Automated CI/CD (covered in companion Copado DevOps project)

---

## 5. Stakeholders & personas

| Persona | Needs |
|---------|--------|
| Sponsor / leadership | Predictable release risk, alignment to company priorities |
| Product Owner | Prioritized backlog, clear vision, customer value |
| Scrum Lead | Healthy process, removed blockers, team accountability |
| Delivery team | Small cross-functional team, clear DoR/DoD, autonomy |
| Customer / stakeholder | Frequent demos, ability to change direction |

---

## 6. Business requirements

| ID | Requirement | Priority |
|----|-------------|----------|
| BR-01 | Capture why agile was chosen vs waterfall for complex/innovative work | Must |
| BR-02 | Encode Agile Manifesto values into team working agreements | Must |
| BR-03 | Apply seven Lean principles to delivery decisions | Must |
| BR-04 | Maintain a living product backlog owned by the Product Owner | Must |
| BR-05 | Plan 2-week sprints with a committed sprint backlog | Must |
| BR-06 | Enforce Definition of Ready before sprint pull | Must |
| BR-07 | Enforce Definition of Done before calling work complete | Must |
| BR-08 | Run sprint demo and retrospective every sprint | Must |
| BR-09 | Track stories from Backlog → Done in Salesforce | Must |
| BR-10 | Document end-to-end process for onboarding | Must |

---

## 7. Agile & Lean foundation (from Trailhead)

### 7.1 Why Salesforce adopted agile
- Growth made previous collaboration patterns insufficient.
- Innovation work is **complex**: learn by building, feedback, and adapting.
- Scrum provides roles, meetings, and deliverables for faster high-quality value.
- Shared **Definition of Done** protects Trust (a core Salesforce value).

### 7.2 Being agile (not only doing agile)
Teams are becoming agile when they can answer yes to:
1. Do our activities focus on **people**?
2. Are we **continuously learning and improving** process and product?
3. Are we frequently delivering **value and delight** to customers?

### 7.3 Agile Manifesto values
- Individuals and interactions over processes and tools  
- Working software over comprehensive documentation  
- Customer collaboration over contract negotiation  
- Responding to change over following a plan  

### 7.4 Frameworks used at Salesforce
Scrum · Kanban · Scrumban · eXtreme Programming (technical practices)

### 7.5 Seven Lean principles (Salesforce)
| Principle | Business meaning |
|-----------|------------------|
| Respect People | Servant leadership; Ohana; autonomous teams |
| Eliminate Waste | DoR; avoid multitasking, unfinished WIP, reactive thrash |
| Deliver Fast | Short sprints; learn and pivot quickly |
| Just-in-Time Decisions | Decide at the last responsible moment |
| Optimize the Whole | Cross-team collaboration; no local optimization |
| Create Knowledge | Inspect/adapt; share skills; continuous improvement |
| Build Quality In | Everyone owns quality; refactor; robust testing |

---

## 8. Assumptions & constraints

| Type | Statement |
|------|-----------|
| Assumption | Team size 3–9 with cross-functional skills |
| Assumption | Sprint length defaults to 2 weeks |
| Constraint | Tracker runs on a Developer Edition org |
| Constraint | Documentation is English; process is framework-agnostic enough for Scrumban |

---

## 9. Risks

| Risk | Mitigation |
|------|------------|
| Ceremony without outcomes | Tie every meeting to a decision or artifact |
| Half-finished work | Swarming / finish before starting; DoD gate |
| Big upfront design | JIT decisions; backlog refinement every sprint |
| Single quality owner | Hybrid ownership — whole team owns quality |

---

## 10. Acceptance of this BRD

This BRD is accepted when:
1. Stakeholders agree BO-01…BO-05 are the success bar.
2. The Agile Delivery Tracker is deployed and seeded with the sample project.
3. The end-to-end runbook is usable by a new team member without prior Trailhead completion.
