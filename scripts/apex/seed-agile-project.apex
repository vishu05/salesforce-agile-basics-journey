// Seed Agile Delivery Tracker project, sprints, and sample user stories.
// Idempotent on Story_Key__c / project name.

String projectName = 'Salesforce Agile Basics Journey';
List<Agile_Project__c> existing = [
    SELECT Id FROM Agile_Project__c WHERE Name = :projectName LIMIT 1
];

Agile_Project__c project;
if (existing.isEmpty()) {
    project = new Agile_Project__c(
        Name = projectName,
        Status__c = 'Active',
        Framework__c = 'Scrum',
        Lean_Focus__c = 'Respect People;Eliminate Waste;Deliver Fast;Just-in-Time Decisions;Optimize the Whole;Create Knowledge;Build Quality In',
        Git_Repo_URL__c = 'https://github.com/vishu05/salesforce-agile-basics-journey',
        Vision__c = 'Apply Salesforce Agile Basics so teams deliver customer value every 2-week sprint with a shared Definition of Done and Lean operating principles.',
        Description__c = 'Portfolio project from Trailhead Salesforce Agile Basics: why agile, manifesto values, and seven Lean principles — tracked end-to-end in Salesforce.'
    );
    insert project;
    System.debug('Created project ' + project.Id);
} else {
    project = existing[0];
    project.Status__c = 'Active';
    project.Framework__c = 'Scrum';
    project.Lean_Focus__c = 'Respect People;Eliminate Waste;Deliver Fast;Just-in-Time Decisions;Optimize the Whole;Create Knowledge;Build Quality In';
    project.Git_Repo_URL__c = 'https://github.com/vishu05/salesforce-agile-basics-journey';
    project.Vision__c = 'Apply Salesforce Agile Basics so teams deliver customer value every 2-week sprint with a shared Definition of Done and Lean operating principles.';
    update project;
    System.debug('Updated project ' + project.Id);
}

delete [SELECT Id FROM Agile_Sprint__c WHERE Project__c = :project.Id];

Date today = Date.today();
Agile_Sprint__c sprint0 = new Agile_Sprint__c(
    Name = 'Sprint 0 - Foundation',
    Project__c = project.Id,
    Sprint_Number__c = 0,
    Start_Date__c = today.addDays(-14),
    End_Date__c = today.addDays(-1),
    Status__c = 'Completed',
    Sprint_Goal__c = 'Stand up the Agile Delivery Tracker, working agreements, and product vision.'
);
Agile_Sprint__c sprint1 = new Agile_Sprint__c(
    Name = 'Sprint 1 - First Increment',
    Project__c = project.Id,
    Sprint_Number__c = 1,
    Start_Date__c = today,
    End_Date__c = today.addDays(13),
    Status__c = 'Active',
    Sprint_Goal__c = 'Deliver a demoable increment that proves DoR, DoD, and Lean-informed Scrum cadence.'
);
insert new List<Agile_Sprint__c>{ sprint0, sprint1 };

List<Map<String, String>> storyDefs = new List<Map<String, String>>{
    new Map<String, String>{
        'key'=>'AG-001', 'epic'=>'E0 Foundation', 'title'=>'Provision Agile Delivery Tracker',
        'status'=>'Done', 'priority'=>'High', 'points'=>'3', 'sprint'=>'0',
        'lean'=>'Build Quality In',
        'desc'=>'As a delivery lead I want the Agile Delivery Tracker deployed so the team has one place for projects, sprints, and stories.',
        'ac'=>'App/objects/tabs/permset deployed; permset assigned; sample project exists.',
        'dor'=>'Org access confirmed; metadata ready to deploy.',
        'dod'=>'Deployed to vscodeOrg; seed script run; app opens.'
    },
    new Map<String, String>{
        'key'=>'AG-002', 'epic'=>'E0 Foundation', 'title'=>'Publish working agreements',
        'status'=>'Done', 'priority'=>'High', 'points'=>'2', 'sprint'=>'0',
        'lean'=>'Respect People',
        'desc'=>'As a Scrum Lead I want DoR, DoD, sprint length, and roles written down so the team shares expectations.',
        'ac'=>'2-week sprint agreed; DoR/DoD published; PO and Scrum Lead named.',
        'dor'=>'Team available for working-agreement workshop.',
        'dod'=>'Agreements captured on project Description/Vision.'
    },
    new Map<String, String>{
        'key'=>'AG-003', 'epic'=>'E0 Foundation', 'title'=>'Capture product vision',
        'status'=>'Done', 'priority'=>'High', 'points'=>'2', 'sprint'=>'0',
        'lean'=>'Optimize the Whole',
        'desc'=>'As a Product Owner I want a clear project vision so backlog prioritization maps to customer value.',
        'ac'=>'Vision populated; Framework=Scrum; Lean Focus set.',
        'dor'=>'Sponsor intent understood.',
        'dod'=>'Vision field reviewed with team.'
    },
    new Map<String, String>{
        'key'=>'AG-010', 'epic'=>'E1 Agile Mindset', 'title'=>'Teach waterfall vs agile decision',
        'status'=>'In Progress', 'priority'=>'Medium', 'points'=>'3', 'sprint'=>'1',
        'lean'=>'Create Knowledge',
        'desc'=>'As a team member I want a guide for when to use agile vs waterfall so we pick the right process for complexity.',
        'ac'=>'Decision questions in runbook; complex work defaults to agile.',
        'dor'=>'Runbook section drafted.',
        'dod'=>'Team can apply decision questions in stand-up examples.'
    },
    new Map<String, String>{
        'key'=>'AG-011', 'epic'=>'E1 Agile Mindset', 'title'=>'Adopt Agile Manifesto values',
        'status'=>'Ready', 'priority'=>'High', 'points'=>'2', 'sprint'=>'1',
        'lean'=>'Respect People',
        'desc'=>'As a team I want the four Manifesto values as working norms so we prioritize people, working software, collaboration, and change.',
        'ac'=>'Values posted; team answers three being-agile questions.',
        'dor'=>'Manifesto reviewed as a team.',
        'dod'=>'Values reflected in working agreements.'
    },
    new Map<String, String>{
        'key'=>'AG-012', 'epic'=>'E2 Lean Operating System', 'title'=>'Implement Definition of Ready',
        'status'=>'Ready', 'priority'=>'High', 'points'=>'3', 'sprint'=>'1',
        'lean'=>'Eliminate Waste',
        'desc'=>'As a Product Owner I want a Definition of Ready so we eliminate waste from starting unclear work.',
        'ac'=>'DoR checklist exists; stories need Ready before Sprint; 3+ stories Ready.',
        'dor'=>'Waste examples reviewed with team.',
        'dod'=>'DoR checklist used in backlog refinement.'
    },
    new Map<String, String>{
        'key'=>'AG-013', 'epic'=>'E2 Lean Operating System', 'title'=>'Implement Definition of Done',
        'status'=>'Ready', 'priority'=>'High', 'points'=>'3', 'sprint'=>'1',
        'lean'=>'Build Quality In',
        'desc'=>'As a team I want a shared Definition of Done so done means trustworthy, demoable work.',
        'ac'=>'DoD covers build/test/review/demo; no Done without DoD notes.',
        'dor'=>'Quality ownership agreed (whole team).',
        'dod'=>'DoD applied to at least one finished story.'
    },
    new Map<String, String>{
        'key'=>'AG-014', 'epic'=>'E3 Scrum Cadence', 'title'=>'Run first sprint planning',
        'status'=>'Sprint', 'priority'=>'High', 'points'=>'2', 'sprint'=>'1',
        'lean'=>'Deliver Fast',
        'desc'=>'As a Scrum Lead I want a committed sprint backlog and goal so the team focuses on one outcome for 2 weeks.',
        'ac'=>'Sprint 1 Active with goal; Ready stories linked; points visible.',
        'dor'=>'Backlog refined; capacity discussed.',
        'dod'=>'Sprint goal published; stories in Sprint status.'
    },
    new Map<String, String>{
        'key'=>'AG-015', 'epic'=>'E4 First Release', 'title'=>'Deliver demoable increment',
        'status'=>'Backlog', 'priority'=>'High', 'points'=>'5', 'sprint'=>'',
        'lean'=>'Optimize the Whole',
        'desc'=>'As a stakeholder I want a sprint demo of finished work so we inspect outcomes and adapt.',
        'ac'=>'>=1 story meets DoD; demo held; incomplete stories return to Ready.',
        'dor'=>'Demo audience scheduled.',
        'dod'=>'Feedback logged to backlog.'
    },
    new Map<String, String>{
        'key'=>'AG-016', 'epic'=>'E3 Scrum Cadence', 'title'=>'Run retrospective with experiments',
        'status'=>'Backlog', 'priority'=>'Medium', 'points'=>'2', 'sprint'=>'',
        'lean'=>'Create Knowledge',
        'desc'=>'As a team I want actionable experiments after the retro so process improves every sprint.',
        'ac'=>'Retro done; 1-2 experiments owned for next sprint.',
        'dor'=>'Sprint nearly complete.',
        'dod'=>'Experiments appear on next sprint board.'
    },
    new Map<String, String>{
        'key'=>'AG-017', 'epic'=>'E2 Lean Operating System', 'title'=>'Just-in-time design decision',
        'status'=>'Backlog', 'priority'=>'Low', 'points'=>'2', 'sprint'=>'',
        'lean'=>'Just-in-Time Decisions',
        'desc'=>'As a developer I want to delay detailed design until the last responsible moment so we learn before over-building.',
        'ac'=>'No big-bang design required before Sprint 1; decisions logged when enough info exists.',
        'dor'=>'Team agrees last-responsible-moment guideline.',
        'dod'=>'Example decision recorded on a story.'
    }
};

Set<String> keys = new Set<String>();
for (Map<String, String> d : storyDefs) keys.add(d.get('key'));
Map<String, Agile_User_Story__c> byKey = new Map<String, Agile_User_Story__c>();
for (Agile_User_Story__c s : [
    SELECT Id, Story_Key__c FROM Agile_User_Story__c WHERE Story_Key__c IN :keys
]) {
    byKey.put(s.Story_Key__c, s);
}

List<Agile_User_Story__c> upserts = new List<Agile_User_Story__c>();
for (Map<String, String> d : storyDefs) {
    Agile_User_Story__c s = byKey.containsKey(d.get('key'))
        ? byKey.get(d.get('key'))
        : new Agile_User_Story__c(Story_Key__c = d.get('key'));
    s.Name = d.get('title');
    s.Project__c = project.Id;
    s.Epic__c = d.get('epic');
    s.Status__c = d.get('status');
    s.Priority__c = d.get('priority');
    s.Story_Points__c = Decimal.valueOf(d.get('points'));
    s.Lean_Principle__c = d.get('lean');
    s.Description__c = d.get('desc');
    s.Acceptance_Criteria__c = d.get('ac');
    s.Definition_of_Ready__c = d.get('dor');
    s.Definition_of_Done__c = d.get('dod');
    if (d.get('sprint') == '0') s.Sprint__c = sprint0.Id;
    else if (d.get('sprint') == '1') s.Sprint__c = sprint1.Id;
    else s.Sprint__c = null;
    upserts.add(s);
}
upsert upserts Story_Key__c;

System.debug('Seed complete. Project Id=' + project.Id + ' Sprints=2 Stories=' + upserts.size());
