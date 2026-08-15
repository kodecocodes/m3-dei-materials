# Lesson 3 Prompts: Synthesize Launch Feedback

Use these prompts with the supplied `launch-feedback-dataset.md`.

## Prompting note

The dataset is fictional, but the review habits are real. AI should organize evidence, not turn every comment into a product requirement.

Every meaningful conclusion must cite feedback record IDs. A confident summary without traceable evidence is not ready for prioritization.

## Prompt 1: Create an Evidence-Backed Feedback Analysis

```text
Analyze this fictional early-launch feedback dataset.

Dataset:
[Attach or paste launch-feedback-dataset.md]

Goals:
- Group records that describe the same underlying issue.
- Keep different issues separate even when they use similar words.
- Preserve contradictory feedback.
- Include positive signals as well as complaints.
- Cite every record ID that supports a conclusion.

Classify each finding as one:
- Confirmed bug
- Possible bug
- Feature request
- Messaging confusion
- Positive signal
- Low-value noise
- Insufficient evidence

Rules:
- Do not describe an isolated comment as a widespread pattern.
- Treat an isolated preference as low-value noise when it does not reveal a supported product, usability, or accessibility problem.
- Do not claim causation from ratings, downloads, or incomplete analytics.
- Do not invent user counts, crash data, screen usage, or business impact.
- Do not merge a privacy concern with a convenience request.
- Do not recommend individual employee scoring as an automatic next step.
- State when the supplied evidence cannot answer a question.

Return launch-feedback-analysis.md with:
1. Dataset scope and limitations
2. Executive summary
3. Findings grouped by classification
4. For each finding:
   - Title
   - Classification
   - Summary
   - Supporting record IDs
   - Frequency within this dataset
   - Impact indicated by the evidence
   - Confidence
   - Contradictory or qualifying evidence
   - Information still needed
5. Positive signals
6. Evidence that should not drive action yet
7. Open questions

Do not create the final roadmap. Produce the evidence review first.
```

## Prompt 2: Challenge the Analysis and Propose Triage Options

Run this prompt in a fresh AI context when possible.

```text
Review this early-launch analysis adversarially, then propose triage options for human review.

Original dataset:
[Attach or paste launch-feedback-dataset.md]

Draft analysis:
[Attach or paste launch-feedback-analysis.md]

First, check for:
- Conclusions without supporting record IDs
- Record IDs that do not support the conclusion
- Bugs, feature requests, and messaging issues classified incorrectly
- Low-value noise promoted into an unsupported product requirement
- Separate problems combined into one theme
- Isolated comments presented as trends
- Contradictions or positive feedback omitted from the analysis
- Product recommendations that conflict with team-level privacy constraints
- Conclusions drawn from analytics that the dataset says are unavailable
- Priority recommendations based on invented frequency, impact, or effort

Then return prioritized-launch-actions.md with two sections.

Section 1: Review findings

For each issue include:
- Finding
- Record IDs checked
- Why it matters
- Recommended correction

Section 2: Proposed triage options

For each well-supported finding include:
- Finding
- Classification
- Supporting record IDs
- Suggested action: Fix now, Investigate, Clarify messaging, Add to backlog, Defer, or Ignore
- Evidence-based reason
- Confidence
- Effort or dependency that still needs human estimation
- Risk of acting too quickly

Do not make the final roadmap decision. Clearly label the actions as recommendations for a human reviewer.
```
