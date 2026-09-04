/// Copyright (c) 2026 Kodeco Inc. See COPYRIGHT for details.
/// Caution: This is AI-generated code.

import SwiftUI

struct TicketToMergeViewModel {
  struct Point: Identifiable {
    let month: Date
    let cohortName: String
    let avgDays: Double
    let detailDisplay: String
    var id: String { "\(cohortName)·\(month.timeIntervalSinceReferenceDate)" }
  }
  
  let periodLine: String
  let subtitleLine = "Avg days from ticket to merge · lower is better"
  let points: [Point]
  let cohortNames: [String]
  let daysDomain: ClosedRange<Double>
  
  let xAxisCaption = "Month"
  let yAxisCaption = "Days"
  
  let latestAIHeavyDays: Double
  let heavyAIImprovement: Double
  let latestGapDays: Double
  
  init(store: TicketToMergeStore = TicketToMergeStore()) {
    periodLine = DashboardStartDate.today.formatted(.dateTime.month(.wide).year()) + " · Trailing 5 months"
    
    let samples = store.samples.sorted { $0.month < $1.month }
    cohortNames = AIUsageCohort.allCases.map(\.rawValue)
    
    let maxDays = samples.map(\.avgDays).max() ?? 0
    daysDomain = 0...(maxDays.rounded(.up) + 1)
    
    points = samples.map { sample in
      Point(
        month: sample.month,
        cohortName: sample.cohort.rawValue,
        avgDays: sample.avgDays,
        detailDisplay: "\(sample.cohort.rawValue), \(sample.month.formatted(.dateTime.month(.wide))): \(Self.days(sample.avgDays)) days"
      )
    }
    
    let heavyAISeries = samples.filter { $0.cohort == .heavyUsers }
    let firstAIHeavy = heavyAISeries.first?.avgDays ?? 0
    let lastAIHeavy = heavyAISeries.last?.avgDays ?? 0
    let lastAILight = samples.last { $0.cohort == .lightUsers }?.avgDays ?? 0
    latestAIHeavyDays = lastAIHeavy
    heavyAIImprovement = firstAIHeavy > 0 ? (firstAIHeavy - lastAIHeavy) / firstAIHeavy : 0
    latestGapDays = lastAILight - lastAIHeavy
  }
  
  static func days(_ value: Double) -> String {
    value.formatted(.number.precision(.fractionLength(0...1)))
  }
}
