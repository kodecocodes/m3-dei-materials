# Lesson 2 Prompts: Prepare the App Store Listing

Use these two prompts during Lesson 2. Start with the approved `app-facts.md` and reviewed `landing-page-copy.md` from Lesson 1.

Prompt 1 creates the initial App Store package. Review the options, tell the AI which subtitle and promotional text you prefer, and request any immediate corrections in the same conversation. Then start a fresh conversation for Prompt 2. The second prompt reviews the package, pauses for your decisions, and creates the final files after you respond.

The field limits used in this lesson reflect the course's production date. Check Apple's current requirements before using the package for a real submission.

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

Create `app-store-copy-package.md` with:
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

Create `app-store-screenshot-plan.md` with:
1. Screenshot goal
2. Ordered screenshot sequence
3. Real screen or workflow for each screenshot
4. Caption options
5. Supporting feature and screenshot inventory IDs
6. Safe sample-data check
7. Capture or design notes

Recommend one subtitle and promotional-text option, but explain the tradeoff. The human developer makes the final choice.

If your environment supports file creation, create or update both named files. Otherwise, return their complete Markdown contents with the filename before each file.
```

## Prompt 2: Review and Finalize First-Release Materials

Run this prompt in a fresh AI conversation when possible.

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

First, return a concise review with:
1. Must-fix findings
2. Items requiring human confirmation
3. Optional improvements
4. Supported content worth keeping
5. A draft readiness status

For every finding, explain the evidence and recommended change. Then ask me which findings I accept, reject, want revised, or want left open. Stop and wait for my response.

After I respond:
- Apply only the findings I accepted.
- Follow my selected subtitle and promotional-text choices.
- Follow any revisions I requested.
- Do not apply rejected suggestions.
- Keep unresolved owner questions visibly open.
- Recalculate every character and UTF-8 byte count.
- Create the complete final `app-store-copy-package.md`, `app-store-screenshot-plan.md`, and `release-readiness-checklist.md` files.

The final readiness checklist must use checkboxes and include:
1. Source-fact checks
2. Required and applicable field checks
3. Field-count checks
4. First-release checks, including What's New marked Not applicable
5. Copy and keyword checks
6. Screenshot accuracy and safe-data checks
7. Support, marketing, and privacy URL checks
8. Remaining must-fix findings
9. Items still requiring a human owner
10. Final status: Ready for final human review, Ready with open questions, or Not ready

Leave a checkbox unchecked when the supplied artifacts do not prove that it passes.

If your environment supports file creation, create or update all three named files. Otherwise, return only their complete Markdown contents with the filename before each file.
```
