# Landing Page Copy: Tokens Dashboard 1.0

## Page goal and audience

Help team leads, engineering managers, and project leads understand the dashboard and decide whether to explore it. Keep every benefit tied to team-level review, without promising better delivery outcomes. [AUD-01, AUD-03]

## Hero

### Put your team's AI spending and delivery patterns in context

Explore model spending, token usage, and delivery outcomes in one dashboard. Use cautious, team-level insight cards to find patterns worth reviewing before changing team guidance. [AUD-02, AUD-03, FEAT-01, FEAT-02]

The course version uses local sample data. It does not connect to your team's live systems. [LIMIT-01]

## Primary call to action

Proposed button copy: **Explore Tokens Dashboard**.

Destination: pending an approved public destination. Do not publish a download button that implies an available App Store listing until the owner confirms the listing and URL. [SUP-02, OPEN-02]

## Feature sections

### See spending by model

Open Cost by Model from the summary to explore the sample spending breakdown. [FEAT-01, LIMIT-01]

### Review tokens alongside delivery outcomes

Explore Tokens versus Outcomes and Ticket to Merge. Use the charts to identify questions for your team, without assuming that token use caused a delivery result. [FEAT-01, AUD-03]

### Keep the evidence and its limits together

AI Usage Insights pairs a supporting metric with an explanation, a suggested next step, and a caveat. The course scenario uses deterministic local rules, with no runtime LLM call. [FEAT-02, FEAT-03]

### Review teams without ranking individuals

The app does not provide individual employee scores or performance rankings. Version 1.0 uses fixed insight thresholds and does not link insight cards directly to charts. [LIMIT-02, LIMIT-03]

## How it works

1. Start with the summary and its local sample data. [FEAT-01, LIMIT-01]
2. Open a detail chart to review spending, tokens, or delivery patterns. [FEAT-01]
3. Read an insight's metric, next step, and caveat before deciding what to investigate. [FEAT-02, AUD-03]

## Visual placement plan

| Placement | Actual screen | Inventory ID | Purpose |
| --- | --- | --- | --- |
| Hero | Summary | SHOT-01 | Establish the dashboard workflow |
| Spending section | Cost by Model | SHOT-03 | Show the spending breakdown |
| Insights section | AI Usage Insights | SHOT-02 | Show a metric, action, and caveat together |
| Delivery section | Ticket to Merge | SHOT-04 | Illustrate the delivery review workflow |

Capture real screens from the approved recording build. Use safe sample data. Do not generate replacement app interfaces. The inventory is supplied by the scenario; actual captures and the finished insights feature still require a build check.

## Support and privacy links

- Support: destination pending owner confirmation. [SUP-01, OPEN-01]
- Privacy: policy destination pending owner review and publication. [SUP-03, OPEN-03]
- Marketing page: public URL pending owner confirmation. [SUP-02, OPEN-02]

## Claims-to-facts review

| Claim | Supporting facts | Review note |
| --- | --- | --- |
| Team-level audience and interpretation | AUD-01, AUD-03 | No individual scoring or guaranteed outcomes |
| Three detail charts | FEAT-01 | Check real screens before capture |
| Local rule-based insights | FEAT-02, FEAT-03 | Verify finished build; do not imply a runtime LLM |
| Sample data, no live integrations | LIMIT-01 | Keep visible beside launch claims |
| Fixed thresholds and no chart deep links | LIMIT-03 | Do not market deferred functionality |

## Open questions

- Which public destination should the primary call to action use?
- What are the approved support, marketing, and privacy URLs?
- Does the final recording build match every supplied feature and screenshot fact?
- Do the final copy and screenshots match the course demonstration?
