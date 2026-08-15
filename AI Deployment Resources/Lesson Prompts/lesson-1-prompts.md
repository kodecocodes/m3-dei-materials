# Lesson 1 Prompts: Prepare Landing Page and Privacy Materials

Use these prompts during Lesson 1 after completing `app-facts.md` from the supplied template.

## Prompting note

These prompts are intentionally detailed. Launch copy becomes unreliable when AI receives only a product name and a vague feature summary.

You can use the prompts with any capable AI assistant that accepts text or Markdown. If your tool supports file attachments, attach the requested files. Otherwise, paste their contents where shown.

AI output is a draft, not evidence. Unknown facts must remain unresolved until a human owner confirms them.

## Prompt 1: Draft the Launch Foundation

```text
Create draft landing-page, privacy, and support materials from the verified app facts below.

App facts:
[Attach or paste app-facts.md]

Rules:
- Use only facts marked Verified in app or code or Verified by owner.
- Do not turn Unknown items into claims.
- Do not invent features, platforms, integrations, data practices, support promises, testimonials, awards, or performance results.
- Preserve the fact ID beside each important claim so a human can verify it.
- Treat this as a first public release, version 1.0.
- Use real screens from the screenshot inventory. Do not propose AI-generated interfaces as app screenshots.
- Keep privacy language factual and plain. Do not claim legal compliance or present the draft as legal advice.
- If required information is missing, list it under Open questions instead of guessing.

Return two separate Markdown drafts.

Draft 1: landing-page-copy.md

Use this structure:
1. Page goal and audience
2. Hero heading and supporting copy
3. Primary call to action
4. Feature sections
5. How it works
6. Visual placement plan using screenshot inventory IDs
7. Support and privacy links
8. Claims-to-facts review table
9. Open questions

Draft 2: privacy-and-support-draft.md

Use this structure:
1. Draft status notice
2. Plain-language product and data summary
3. Data collected
4. How data is used
5. Storage, sharing, retention, and deletion
6. Third-party services
7. User privacy choices
8. Support contact copy
9. Claims-to-facts review table
10. Information requiring owner or legal review

If a section cannot be completed from verified facts, say what is missing. Do not fill the gap with generic policy language.
```

## Prompt 2: Audit the Launch Materials

Run this prompt in a fresh AI context when possible.

```text
Review these launch materials as a skeptical product, privacy, and support reviewer.

Approved app facts:
[Attach or paste app-facts.md]

Landing-page draft:
[Attach or paste landing-page-copy.md]

Privacy and support draft:
[Attach or paste privacy-and-support-draft.md]

Check for:
- Claims without a verified fact ID
- Fact IDs that do not support the claim
- Unknown information presented as settled
- Features or benefits that the app does not provide
- Guaranteed outcomes or causal claims
- Privacy language inferred only from missing code
- Missing third-party, retention, sharing, or deletion information
- Support promises that have not been approved
- Visual suggestions that do not use real app screens
- Personal or unsafe information in proposed screenshots
- Language that sounds legally final when the artifact is still a draft

Return:

## Must fix
- Finding
- Affected section
- Fact or missing evidence
- Recommended change

## Verify with an owner
- Question
- Why AI cannot answer it
- Suggested owner

## Optional improvements
- Suggestion
- Why it is optional

## Supported claims worth keeping
- Claim
- Supporting fact IDs

Do not rewrite the drafts. The human reviewer will decide what to accept, reject, verify, or defer.
```
