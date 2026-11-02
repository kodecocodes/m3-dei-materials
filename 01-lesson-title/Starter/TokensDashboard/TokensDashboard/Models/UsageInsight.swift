/// Copyright (c) 2026 Kodeco Inc. See COPYRIGHT for details.
/// Caution: This is AI-generated code.

import Foundation

enum UsageInsightCategory: String, CaseIterable, Hashable {
  case activity
  case modelMix
}

enum UsageInsightTrendDirection {
  case increased
  case decreased
}

struct UsageInsight: Identifiable {
  let category: UsageInsightCategory
  let title: String
  let evidence: String
  let reviewPrompt: String
  let reportingPeriodLabel: String
  let trendDirection: UsageInsightTrendDirection?
  var id: UsageInsightCategory { category }
}

enum UsageInsightsState {
  case insights(cards: [UsageInsight], unavailableCategories: Set<UsageInsightCategory>)
  case noQualifyingChanges
  case insufficientData
}
