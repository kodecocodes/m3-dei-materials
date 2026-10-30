# Launch Feedback Analysis: Tokens Dashboard 1.0

This completed sample was created from `launch-feedback-dataset.md`. Use it to follow along with Lesson 3 or compare it with the analysis produced by Prompt 1.

## Dataset scope and limitations

This analysis covers 34 fictional records dated June 3 through June 28, 2026:

- 9 TestFlight feedback records
- 5 internal bug reports
- 8 App Store reviews
- 8 support messages
- 4 analytics or release notes

The dataset can support conclusions about the records it contains. It cannot establish production-wide frequency, business impact, screen usage, crash rate, performance, campaign attribution, or causal relationships.

## Executive summary

The strongest findings are three reproduced accessibility or correctness failures: Dynamic Type clipping, incomplete VoiceOver reading, and incorrect empty-data behavior. A reporting-period mismatch is also reproduced in an internal configuration, while a possible duplicate-identity problem still needs confirmation.

Three messaging themes appear across multiple sources: the `watch` label sounds like a configured warning, users misunderstand whether an LLM processes their data, and the term `usage` is applied to a spend-based metric. Threshold transparency also needs attention.

The evidence supports future consideration of chart deep links, configurable thresholds, PDF export, and email reports. It does not justify treating those requests as confirmed priorities. Feedback about individual scoring is contradictory and conflicts with the product's team-level boundary.

## Confirmed bugs

### Insight cards clip at accessibility Dynamic Type sizes

- Classification: Confirmed bug
- Summary: Essential text at the bottom of an insight card becomes unreadable at large accessibility text sizes.
- Supporting record IDs: TF-005, BUG-001, AS-005
- Frequency within this dataset: 3 records across TestFlight, internal bug reporting, and App Store review
- Impact indicated by the evidence: Affected users cannot read the complete explanation, next step, or caveat.
- Confidence: High
- Contradictory or qualifying evidence: The dataset does not establish how many production users selected these text sizes.
- Information still needed: Confirm every affected card layout and regression-test all accessibility text sizes.

### VoiceOver omits caveats on some insight cards

- Classification: Confirmed bug
- Summary: VoiceOver can move to the next card before reading the caveat.
- Supporting record IDs: TF-006, BUG-002
- Frequency within this dataset: 2 records, including a reproduced internal bug
- Impact indicated by the evidence: A VoiceOver user may hear the signal without the qualification needed to interpret it responsibly.
- Confidence: High
- Contradictory or qualifying evidence: The internal report says two cards are affected, but the dataset does not identify every configuration involved.
- Information still needed: Verify accessibility ordering and labels for every card type.

### Empty model data produces a misleading concentration card

- Classification: Confirmed bug
- Summary: An empty model dataset produces both a zero-percent concentration card and the intended insufficient-data message.
- Supporting record IDs: BUG-003, SUP-005
- Frequency within this dataset: 2 records, including a reproduced internal bug
- Impact indicated by the evidence: The app presents a conclusion when the required source data is missing.
- Confidence: High
- Contradictory or qualifying evidence: The behavior was observed in an internal empty-data configuration rather than described as a broad production pattern.
- Information still needed: Test empty, partial, and zero-value model datasets.

### Summary and insight reporting periods can disagree

- Classification: Confirmed bug
- Summary: The summary screen and insights screen can show different reporting periods when their dates are configured separately.
- Supporting record IDs: BUG-004
- Frequency within this dataset: 1 reproduced internal report
- Impact indicated by the evidence: Users may compare signals that appear to describe the same period but do not.
- Confidence: High for the internal configuration, unknown for the release configuration
- Contradictory or qualifying evidence: No external feedback reports this problem.
- Information still needed: Confirm whether the release build can enter the mismatched configuration.

## Possible bugs

### Duplicate insight identity may prevent a card from updating correctly

- Classification: Possible bug
- Summary: Two records with the same model display name and triggered rule may produce duplicate SwiftUI identities.
- Supporting record IDs: BUG-005
- Frequency within this dataset: 1 internal report needing confirmation
- Impact indicated by the evidence: A card may fail to update or may display inconsistently.
- Confidence: Medium
- Contradictory or qualifying evidence: The report has not been confirmed in the release configuration.
- Information still needed: Reproduce with release data and inspect the identity strategy.

## Feature requests

### Link insight cards to their supporting charts

- Classification: Feature request
- Summary: Users want a direct path from an insight or supporting metric to the relevant chart.
- Supporting record IDs: TF-008, SUP-006
- Frequency within this dataset: 2 records across TestFlight and support
- Impact indicated by the evidence: The current navigation makes the relationship between an insight and its evidence less obvious.
- Confidence: High that the request exists; unknown priority
- Contradictory or qualifying evidence: Deep links were intentionally deferred from version 1.0.
- Information still needed: Design, navigation, and implementation effort.

### Allow teams to configure insight thresholds

- Classification: Feature request
- Summary: At least one reviewer explicitly requests configurable thresholds, while other records ask why the fixed thresholds were chosen.
- Supporting record IDs: AS-004, TF-003, SUP-003
- Frequency within this dataset: 3 related records, but only AS-004 explicitly requests configuration
- Impact indicated by the evidence: Fixed thresholds may not match every team's context.
- Confidence: High that explanation is needed; medium that configuration is the correct solution
- Contradictory or qualifying evidence: Version 1.0 intentionally uses fixed thresholds, and explanation may resolve part of the concern without adding settings.
- Information still needed: Product need, configuration model, defaults, validation, and engineering effort.

### Add PDF export and weekly email reports

- Classification: Feature request
- Summary: One support message asks to distribute dashboard information without opening the app.
- Supporting record IDs: SUP-007
- Frequency within this dataset: 1 record
- Impact indicated by the evidence: The request could support leadership reporting workflows.
- Confidence: High that the request exists; low confidence in broader demand
- Contradictory or qualifying evidence: No other record requests export or email delivery.
- Information still needed: Audience demand, privacy requirements, delivery infrastructure, and maintenance cost.

### Add individual developer scores

- Classification: Feature request
- Summary: One reviewer requests named employee comparisons for performance review.
- Supporting record IDs: AS-006
- Frequency within this dataset: 1 requesting record
- Impact indicated by the evidence: The request would materially change the product from team-level review to individual evaluation.
- Confidence: High that the request exists; low that it fits the product direction
- Contradictory or qualifying evidence: TF-007, AS-007, and SUP-008 explicitly value or request preservation of the team-level boundary.
- Information still needed: No prioritization evidence is needed unless product leadership reopens the approved privacy boundary.

## Messaging confusion

### The `watch` label sounds like a policy warning

- Classification: Messaging confusion
- Summary: Users interpret `watch` as an alert, danger state, or organization-specific policy violation.
- Supporting record IDs: TF-001, AS-002, SUP-001
- Frequency within this dataset: 3 records across TestFlight, App Store review, and support
- Impact indicated by the evidence: Normal variation may appear more alarming or authoritative than intended.
- Confidence: High
- Contradictory or qualifying evidence: The card explanations are described as calmer than the label.
- Information still needed: Test alternative labels and confirm whether explanation alone resolves the confusion.

### Users misunderstand how AI Usage Insights is generated

- Classification: Messaging confusion
- Summary: The feature name leads some users to believe dashboard data is uploaded to ChatGPT or another AI provider.
- Supporting record IDs: TF-002, AS-003, SUP-002
- Frequency within this dataset: 3 records across TestFlight, App Store review, and support
- Impact indicated by the evidence: Users may misunderstand the product's privacy behavior and expected capabilities.
- Confidence: High
- Contradictory or qualifying evidence: The app actually uses deterministic local rules and sample data.
- Information still needed: Determine the clearest placement for the local-processing explanation.

### Spend concentration is described as general usage concentration

- Classification: Messaging confusion
- Summary: The title uses the broad term `usage`, while the supporting metric measures month-to-date spend.
- Supporting record IDs: TF-004, SUP-004
- Frequency within this dataset: 2 records across TestFlight and support
- Impact indicated by the evidence: Users may believe the card measures calls or tokens rather than dollars.
- Confidence: High
- Contradictory or qualifying evidence: None in the supplied records.
- Information still needed: Confirm the intended metric name throughout the app and launch copy.

### Fixed thresholds are not explained clearly

- Classification: Messaging confusion
- Summary: Users ask why 40 percent and 15 percent trigger particular insights and where those rules can be reviewed.
- Supporting record IDs: TF-003, SUP-003, AN-003
- Frequency within this dataset: 2 direct records; AN-003 confirms that threshold, processing, or metric questions appear in 4 of 8 supplied support messages
- Impact indicated by the evidence: The cards can appear arbitrary or more authoritative than the underlying rules justify.
- Confidence: High that explanation is missing
- Contradictory or qualifying evidence: The dataset does not establish whether users require configurable thresholds or only better explanation.
- Information still needed: Product-approved rationale and placement for rule explanations.

### Some suggested next steps are too cautious to guide action

- Classification: Messaging confusion
- Summary: Responsible caveats are appreciated, but one reviewer cannot identify the intended next action on some cards.
- Supporting record IDs: AS-008
- Frequency within this dataset: 1 record
- Impact indicated by the evidence: An insight may be accurate yet fail to support a useful review workflow.
- Confidence: Medium
- Contradictory or qualifying evidence: AS-001 values the cautious language and caveats.
- Information still needed: Identify the affected cards and test clearer action wording without overstating certainty.

## Positive signals

### Users value cautious, team-level interpretation

- Classification: Positive signal
- Summary: Multiple records support the decision to include caveats and avoid individual employee ranking.
- Supporting record IDs: AS-001, TF-007, AS-007, SUP-008
- Frequency within this dataset: 4 records across TestFlight, App Store reviews, and support
- Impact indicated by the evidence: The product boundary contributes to trust and differentiates the dashboard from an employee-ranking tool.
- Confidence: High within this dataset
- Contradictory or qualifying evidence: AS-006 requests individual scoring, and AS-008 asks for clearer next steps despite valuing responsible interpretation.
- Information still needed: Broader research before claiming this preference represents the full audience.

## Low-value noise

### Change the entire app from indigo to green

- Classification: Low-value noise
- Summary: One tester expresses a personal color preference without identifying a usability or accessibility problem.
- Supporting record IDs: TF-009
- Frequency within this dataset: 1 record
- Impact indicated by the evidence: No supported product impact
- Confidence: High
- Contradictory or qualifying evidence: None, but the dataset does not contain a formal visual-accessibility assessment.
- Information still needed: No action needed unless broader usability or accessibility evidence appears.

## Insufficient evidence

### Product-page conversion performance

- Classification: Insufficient evidence
- Summary: The product page received 500 impressions and 90 downloads, but no benchmark, attribution, or previous release exists.
- Supporting record IDs: AN-002
- Frequency within this dataset: 1 analytics note
- Impact indicated by the evidence: None can be established from the supplied information.
- Confidence: High that the dataset is insufficient
- Contradictory or qualifying evidence: The raw counts are available, but their meaning is not.
- Information still needed: Benchmarks, comparable periods, campaign attribution, and acquisition context.

### In-app screen usage

- Classification: Insufficient evidence
- Summary: The dataset cannot show which screens users opened or how long they used them.
- Supporting record IDs: AN-001
- Frequency within this dataset: 1 analytics note
- Impact indicated by the evidence: No screen-engagement conclusion is supportable.
- Confidence: High that the dataset is insufficient
- Contradictory or qualifying evidence: Individual feedback mentions some screens, but that is not usage instrumentation.
- Information still needed: Approved analytics instrumentation or structured usability research.

### Crash rate and production performance

- Classification: Insufficient evidence
- Summary: No crash or performance diagnostics were supplied.
- Supporting record IDs: AN-004
- Frequency within this dataset: 1 release note
- Impact indicated by the evidence: No stability or performance conclusion is supportable.
- Confidence: High that the dataset is insufficient
- Contradictory or qualifying evidence: Internal functional bug reports exist, but they do not establish crash rate or launch performance.
- Information still needed: Crash diagnostics, performance measurements, affected builds, and release population.

## Evidence that should not drive action yet

- TF-009 should not drive a visual redesign because it is one unsupported personal preference.
- AN-002 should not drive a conversion strategy because no benchmark or attribution exists.
- AS-006 should not overturn the team-level product boundary, especially given TF-007, AS-007, and SUP-008.
- SUP-007 should not automatically create an export or email project because broader demand, privacy implications, and effort are unknown.
- AS-004, TF-003, and SUP-003 support investigating threshold clarity, but they do not prove configurable thresholds are the required solution.

## Open questions

- Which alternative to `watch` communicates review priority without implying danger or policy enforcement?
- Where should the app and product page explain that insights use deterministic local rules?
- Should spend-based insights replace `usage` with more precise wording throughout the UI?
- What product rationale should accompany the fixed 40 percent and 15 percent thresholds?
- Which cards need clearer suggested next steps without weakening their caveats?
- Can the release build reproduce the reporting-period and duplicate-identity issues?
- What engineering effort and privacy review would chart links, configurable thresholds, PDF export, or email reports require?
