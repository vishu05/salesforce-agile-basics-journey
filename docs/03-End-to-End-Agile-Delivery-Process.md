# End-to-End Agile Delivery Process

## Salesforce Agile Basics Runbook

| Item | Detail |
|------|--------|
| **Version** | 1.0 — 20 November 2026 |
| **Author** | Vishwender Saida |
| **Audience** | Product owners, Scrum leads, developers, admins |
| **Cadence** | 2-week sprints (default) |

---

## 1. Process overview

This runbook turns Trailhead **Salesforce Agile Basics** into an operable delivery loop. Work is packaged as a **User Story**, refined until **Definition of Ready**, pulled into a **Sprint**, completed against **Definition of Done**, demoed, and improved via retrospective — guided by Lean principles.

```text
Vision -> Backlog -> Ready -> Sprint Plan -> Build -> Done -> Demo -> Retro -> Release
```

---

## 2. Phase 0 — Foundation

### 2.1 Choose the right process for the work
Ask:
1. How much do we know about the work?
2. How clear are objectives and requirements?
3. How clear is the solution?
4. What is our experience with the methodology?
5. How complex is the work?

| Work type | Prefer |
|-----------|--------|
| Simple / predictable | Standard procedures (or waterfall-like) |
| Complicated / expert | Expertise + automation |
| Complex / innovative | **Agile** (inspect and adapt) |

### 2.2 Create the Agile Project (Salesforce)
1. Open **Agile Delivery Tracker**.
2. Create **Agile Project** with Vision, Framework (usually Scrum), and Lean Focus.
3. Record Git / docs URL for the team.

### 2.3 Agree working agreements
Document as a team:
- Sprint length (2 weeks)
- Stand-up rhythm (daily; optional no-meeting Thursday)
- Definition of Ready
- Definition of Done
- Who plays Product Owner and Scrum Lead

---

## 3. Phase 1 — Product backlog

### 3.1 Build the backlog
1. Product Owner owns the ordered list of work.
2. Include features, maintenance, non-functionals, and research.
3. Higher-priority items get more detail first.

### 3.2 Story format
```text
As a <persona>
I want <capability>
So that <business value>
```

### 3.3 Definition of Ready (eliminate waste)
A story is Ready when:
- [ ] Outcome and persona are clear
- [ ] Acceptance criteria drafted
- [ ] Dependencies identified
- [ ] Rough size (points) agreed
- [ ] No major open questions blocking start

Create/update `Agile_User_Story__c` with Status = **Ready**.

---

## 4. Phase 2 — Sprint planning (every 2 weeks)

1. Review product backlog top items.
2. Confirm Ready stories.
3. Create/activate `Agile_Sprint__c` with **Sprint Goal**.
4. Pull Ready stories into the sprint (Status = **Sprint** / **In Progress**).
5. Team commits to the plan together (shared accountability).

**Tip:** Focus on outcome (potentially shippable value), not output count.

---

## 5. Phase 3 — Execute the sprint

### 5.1 Daily stand-up
Brief sync:
- Are we focused on the sprint goal?
- Any blockers?
- Who needs help to finish work?

### 5.2 Swarming / finish before start
Unfinished WIP is waste. Prefer helping finish the last 20% over starting new work.

### 5.3 Update the tracker
Move stories: Sprint → In Progress → Review → Done.

---

## 6. Phase 4 — Definition of Done

Before Status = **Done**, confirm:
- [ ] Acceptance criteria met
- [ ] Built and reviewed
- [ ] Tested (team owns quality — Build Quality In)
- [ ] Documented enough for the next person
- [ ] Demo-ready
- [ ] No known security/performance blockers for the increment

Capture notes in `Definition_of_Done__c`.

---

## 7. Phase 5 — Inspect and adapt

### 7.1 Sprint demo
Present finished work to Product Owner / stakeholders. Capture feedback into the backlog.

### 7.2 Retrospective
Inspect process and team. Produce **1–2 actionable experiments** for the next sprint (Create Knowledge).

Examples:
- Timebox meetings with agendas
- Pair on high-risk stories
- Tighten DoR checklist

### 7.3 Close the sprint
Set Sprint Status = **Completed**. Incomplete stories return to Ready/Backlog — never mark Done early.

---

## 8. Phase 6 — Release & continuous improvement

1. Ship the increment (or hold for release train if needed).
2. Respond to change — backlog re-prioritization is expected.
3. Apply Lean checks each sprint:

| Lean principle | Sprint check |
|----------------|--------------|
| Respect People | Did the team decide how to work? |
| Eliminate Waste | Did unfinished / reactive work creep in? |
| Deliver Fast | Did we demo something valuable? |
| Just-in-Time Decisions | Did we avoid unnecessary upfront design? |
| Optimize the Whole | Did we coordinate dependencies early? |
| Create Knowledge | Did retro experiments land? |
| Build Quality In | Did everyone own testing/quality? |

---

## 9. Roles quick reference (Salesforce Scrum)

| Role | Focus |
|------|-------|
| Product Owner | What & why; prioritize backlog |
| Scrum Lead | Process health; remove blockers; coach |
| Team (3–9) | Self-organizing delivery of Done work |
| Shared SMEs | Specialized help across teams |
| TPM / Functional Manager | Cross-cloud logistics / people matters |

---

## 10. Happy path checklist

```text
[ ] Project created with vision + framework
[ ] Working agreements + DoR/DoD published
[ ] Product backlog seeded and prioritized
[ ] Stories refined to Ready
[ ] Sprint created with goal
[ ] Sprint executed with stand-ups
[ ] Stories meet Definition of Done
[ ] Demo completed; feedback captured
[ ] Retro experiments logged
[ ] Sprint closed; next sprint planned
```

---

## 11. Related documents

- `01-Business-Requirements-Document.md` — why and business scope  
- `02-Functional-and-Technical-Specification.md` — app design  
- `04-User-Stories-Scratch-to-Done.md` — sample backlog  
