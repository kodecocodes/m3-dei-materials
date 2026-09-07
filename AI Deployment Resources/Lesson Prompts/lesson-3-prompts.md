# Lesson 3 Prompts: Synthesize Launch Feedback

Use these two prompts with the supplied `launch-feedback-dataset.md`.

Prompt 1 creates the initial evidence-backed analysis. Verify a few cited record IDs and request any corrections in the same conversation. Then start a fresh conversation for Prompt 2. The second prompt challenges the analysis, pauses for your priority decisions, and creates both final files after you respond.

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

Create `launch-feedback-analysis.md` with:
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

If your environment supports file creation, create or update `launch-feedback-analysis.md`. Otherwise, return only its complete Markdown content without introductory commentary.
```

## Prompt 2: Challenge, Decide, and Finalize

Run this prompt in a fresh AI conversation when possible.

```text
Review this early-launch analysis adversarially and propose triage options for human review.

Original dataset:
[Attach or paste launch-feedback-dataset.md]

Draft analysis:
[Attach or paste launch-feedback-analysis.md]

Check for:
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

First, return a concise adversarial review. For each issue include:
- Finding
- Record IDs checked
- Why it matters
- Recommended correction

Then propose triage options for each well-supported finding:
- Finding
- Classification
- Supporting record IDs
- Suggested action: Fix now, Investigate, Clarify messaging, Add to backlog, Defer, or Ignore
- Evidence-based reason
- Confidence
- Effort or dependency that still needs human estimation
- Risk of acting too quickly

Ask me which corrections and actions I accept, reject, want revised, or want deferred. Stop and wait for my response.

After I respond:
- Apply only the corrections I accepted to the analysis.
- Follow my priority decisions instead of treating the AI ranking as final.
- Do not reintroduce rejected recommendations.
- Preserve contradictory evidence and unresolved questions.
- Do not invent frequency, impact, effort, analytics, or business context.
- Create the complete final `launch-feedback-analysis.md` and `prioritized-launch-actions.md` files.

The final action file must include:
1. Fix now
2. Investigate
3. Clarify messaging
4. Add to backlog
5. Defer
6. Reject or ignore
7. Open questions and dependencies

For every action, include the supporting record IDs, evidence-based reason, confidence, and human decision.

If your environment supports file creation, create or update both named files. Otherwise, return only their complete Markdown contents with the filename before each file.
```
