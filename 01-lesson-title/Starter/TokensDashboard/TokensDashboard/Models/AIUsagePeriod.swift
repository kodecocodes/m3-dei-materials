/// Copyright (c) 2026 Kodeco Inc. See COPYRIGHT for details.
/// Caution: This is AI-generated code.

import Foundation

struct AIUsagePeriod {
  let start: Date
  let end: Date
  let isComplete: Bool
  let contributorCount: Int
  let totalTokens: Double
  let tokensByModel: [String: Double]
}

struct AIUsagePeriodStore {
  let reportingPeriod: AIUsagePeriod
  let precedingPeriod: AIUsagePeriod

  init() {
    let calendar = Calendar.current
    let anchor = DashboardStartDate.today

    let reportingStart = calendar.date(
      from: calendar.dateComponents([.year, .month],
        from: calendar.date(byAdding: .month, value: -1, to: anchor)!))!
    let reportingEnd = calendar.date(byAdding: .day, value: -1,
      to: calendar.date(byAdding: .month, value: 1, to: reportingStart)!)!

    reportingPeriod = AIUsagePeriod(
      start: reportingStart,
      end: reportingEnd,
      isComplete: true,
      contributorCount: 42,
      totalTokens: 50_000_000,
      tokensByModel: [
        "Claude Opus 4.8":  22_500_000,
        "Claude Sonnet 4.6": 15_000_000,
        "Claude Haiku 4.5":   7_500_000,
        "GPT-5 Codex":        3_500_000,
        "Gemini 3 Pro":       1_500_000,
      ]
    )

    let precedingStart = calendar.date(
      from: calendar.dateComponents([.year, .month],
        from: calendar.date(byAdding: .month, value: -2, to: anchor)!))!
    let precedingEnd = calendar.date(byAdding: .day, value: -1,
      to: calendar.date(byAdding: .month, value: 1, to: precedingStart)!)!

    precedingPeriod = AIUsagePeriod(
      start: precedingStart,
      end: precedingEnd,
      isComplete: true,
      contributorCount: 42,
      totalTokens: 40_000_000,
      tokensByModel: [
        "Claude Opus 4.8":  12_000_000,
        "Claude Sonnet 4.6": 16_000_000,
        "Claude Haiku 4.5":   8_000_000,
        "GPT-5 Codex":        3_000_000,
        "Gemini 3 Pro":       1_000_000,
      ]
    )
  }
}
