# Lesson 1 Prompts: Prepare Landing Page and Privacy Materials

Use these two prompts during Lesson 1 after completing `app-facts.md` from the supplied template.

Prompt 1 creates the initial launch materials. Review the response and request any immediate corrections in the same conversation. Then start a fresh conversation for Prompt 2. The second prompt audits the drafts, pauses for your decisions, and creates the final files after you respond.

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

Create two separate Markdown drafts.

File 1: landing-page-copy.md

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

File 2: privacy-and-support-draft.md

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

If your environment supports file creation, create or update both named files. Otherwise, return their complete Markdown contents with the filename before each draft.
```

## Prompt 2: Audit and Finalize the Launch Materials

Run this prompt in a fresh AI conversation when possible.

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

First, return a concise review with:
1. Must-fix findings
2. Items to verify with an owner
3. Optional improvements
4. Supported claims worth keeping

For every finding, explain the evidence and recommended change. Then ask me which findings I accept, reject, want revised, or want left open. Stop and wait for my response.

After I respond:
- Apply only the findings I accepted.
- Follow any revisions I requested.
- Do not apply rejected suggestions.
- Keep unresolved owner or legal questions visibly open.
- Preserve supported claims and their fact IDs.
- Create the complete final `landing-page-copy.md` and `privacy-and-support-draft.md` files.

If your environment supports file creation, create or update both named files. Otherwise, return only their complete Markdown contents with the filename before each file.
```
