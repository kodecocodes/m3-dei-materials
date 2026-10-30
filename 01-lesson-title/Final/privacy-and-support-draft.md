# Privacy and Support Draft: Tokens Dashboard 1.0

## Product and data summary

Tokens Dashboard helps team leads review model spending, token usage, delivery outcomes, and team-level insight signals. The course version uses bundled local sample data rather than connecting to live team systems. [AUD-01, AUD-02, LIMIT-01]

## Data collected

According to the approved course facts, this version does not collect data from users or their devices. No user or device data types are collected in the course scenario. [PRIV-01, PRIV-02]

These statements depend on the supplied source facts. A published policy must be checked against the actual release build and dependencies; absence of a visible upload screen alone would not establish the claim.

## How data is used

Bundled sample data supplies the dashboard charts. AI Usage Insights uses deterministic local rules and makes no runtime LLM calls. Do not describe the feature as uploading dashboard data to an AI provider. [FEAT-03, LIMIT-01]

## Storage, sharing, retention, and deletion

The supplied course facts specify no networking, authentication, persistent user-data storage, analytics, advertising, or crash-reporting integration. They also specify no third-party SDKs or services handling user data. [PRIV-03, PRIV-04]

Retention, deletion, and privacy-choice workflows are marked not applicable in the source because this version does not collect or persist user data. Do not invent retention periods, deletion controls, or sharing recipients. [PRIV-05]

## Third-party services

No third-party SDK or service handling user data is included in the course scenario. Recheck this statement if dependencies or runtime behavior change. [PRIV-04]

## User privacy choices

The source marks privacy-choice workflows not applicable for this course version. No consent screen, opt-out setting, account-deletion control, or data-request process has been supplied. [PRIV-05]

## Support contact copy

Proposed copy: **Questions about Tokens Dashboard? Contact us using the support destination listed here once it has been approved.**

The public support URL or contact method is unknown. Do not publish this sentence with a fabricated email address, or promise response times or support hours. [SUP-01, OPEN-01]

## Claims-to-facts review

| Claim | Supporting facts | Status |
| --- | --- | --- |
| No user/device data collection | PRIV-01, PRIV-02 | Supported by supplied scenario; release-build check pending |
| Local sample data and no runtime LLM call | LIMIT-01, FEAT-03 | Supported by supplied scenario |
| No networking, authentication, analytics, advertising, or crash-reporting integration | PRIV-03 | Final dependency review pending |
| No third-party services handling user data | PRIV-04 | Final dependency review pending |
| Retention/deletion/choice workflows not applicable | PRIV-05 | Source status preserved; no invented workflows |
| Support contact available | None | Unresolved; no approved destination |

## Information requiring owner review

- Confirm the identity of the publisher and the scope of any published policy.
- Verify the release build and dependencies against PRIV-01 through PRIV-05.
- Approve the support contact and published privacy-policy URL. [OPEN-01, OPEN-03]
- Decide effective date, final policy wording, and any applicable publication requirements.
- Keep draft status visible until the responsible owner approves publication.
