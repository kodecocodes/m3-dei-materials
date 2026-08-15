# Lesson 2 Prompts: Prepare the App Store Listing

Use these prompts during Lesson 2. Start with the approved `app-facts.md` and reviewed `landing-page-copy.md` from Lesson 1.

## Prompting note

App Store copy has tighter fields than a landing page. The goal is not to squeeze every product fact into every field. Give each field one clear job, compare options, and verify important claims against the fact IDs.

The field limits used in the lesson reflect the course's current production date. Check Apple's current requirements before using the package for a real submission.

## Prompt 1: Draft the App Store Copy Package

```text
Create an App Store copy package for the first public release of this iOS app.

Approved app facts:
[Attach or paste app-facts.md]

Reviewed landing-page copy:
[Attach or paste landing-page-copy.md]

Current exercise limits:
- App name: fixed approved name, maximum 30 characters
- Subtitle: maximum 30 characters
- Promotional text: maximum 170 characters
- Description: maximum 4,000 characters
- Keywords: maximum 100 bytes for the complete comma-separated field

Rules:
- Do not rename the app.
- Use only verified facts.
- Add supporting fact IDs beside important claims during drafting.
- Do not invent awards, rankings, testimonials, integrations, pricing, privacy practices, or performance outcomes.
- Do not use names of unrelated apps or companies as keywords.
- Do not repeat the app name or company name in the keyword field.
- This is version 1.0, so mark What's New as Not applicable for first release.
- Do not create App Store Connect setup or submission instructions.
- Keep screenshot captions tied to real screens in the screenshot inventory.
- Report character counts for text fields and the UTF-8 byte count for the keyword field.

Return app-store-copy-package.md with:
1. Approved app name
2. Three subtitle options with counts
3. Three promotional-text options with counts
4. One recommended plain-text description with count
5. One keyword field with byte count
6. Support URL recommendation based on approved facts
7. Marketing URL recommendation based on approved facts
8. What's New: Not applicable for first release
9. Claims-to-facts review table
10. Open questions

Then return app-store-screenshot-plan.md with:
1. Screenshot goal
2. Ordered screenshot sequence
3. Real screen or workflow for each screenshot
4. Caption options
5. Supporting feature and screenshot inventory IDs
6. Safe sample-data check
7. Capture or design notes

Recommend one subtitle and promotional-text option, but explain the tradeoff. The human developer makes the final choice.
```

## Prompt 2: Review First-Release Readiness

Run this prompt in a fresh AI context when possible.

```text
Review this App Store package for accuracy and first-release readiness.

Approved app facts:
[Attach or paste app-facts.md]

Draft copy package:
[Attach or paste app-store-copy-package.md]

Draft screenshot plan:
[Attach or paste app-store-screenshot-plan.md]

Current exercise limits:
- App name: maximum 30 characters
- Subtitle: maximum 30 characters
- Promotional text: maximum 170 characters
- Description: maximum 4,000 characters
- Keywords: maximum 100 bytes for the complete comma-separated field

Review for:
- Unsupported or overstated claims
- Claims that reference the wrong fact ID
- Unknown facts presented as approved
- Copy placed in the wrong metadata field
- Field-limit problems
- Repetitive or vague language
- Irrelevant or prohibited keyword suggestions
- What's New content that should not exist for version 1.0
- Screenshot captions that do not match the named real screens
- Personal, confidential, or unsafe sample information
- Missing support, marketing, or privacy information that requires human confirmation

Return a draft release-readiness-checklist.md with:
1. Source-fact checks
2. Required and applicable field checks
3. Field-count checks
4. First-release checks, including What's New marked Not applicable
5. Copy and keyword checks
6. Screenshot accuracy and safe-data checks
7. Support, marketing, and privacy URL checks
8. Must-fix findings
9. Items to verify with a human owner
10. Optional improvements
11. Supported content worth keeping
12. Final status: Ready for final human review, Ready with open questions, or Not ready

Use checkboxes for the readiness checks. Leave a checkbox unchecked when the supplied artifacts do not prove that it passes.

Do not rewrite the package until the human reviewer accepts the findings.
```
