/// Copyright (c) 2026 Kodeco Inc. See COPYRIGHT for details.
/// Caution: This is AI-generated code.

struct DeveloperOutcome: Identifiable {
  let name: String
  let tokens: Double
  let mergedPRs: Int
  var id: String { name }
}

struct DeveloperOutcomeStore {
  let developerOutcomes: [DeveloperOutcome] = [
    DeveloperOutcome(name: "Priya",  tokens: 8.2e6, mergedPRs: 24),
    DeveloperOutcome(name: "Marcus", tokens: 7.4e6, mergedPRs: 21),
    DeveloperOutcome(name: "Elena",  tokens: 2.9e6, mergedPRs: 14),
    DeveloperOutcome(name: "Sofia",  tokens: 1.8e6, mergedPRs: 13),
    DeveloperOutcome(name: "Ken",    tokens: 2.2e6, mergedPRs: 12),
    DeveloperOutcome(name: "Amy",    tokens: 0.9e6, mergedPRs: 10),
    DeveloperOutcome(name: "Raj",    tokens: 1.1e6, mergedPRs: 9),
    DeveloperOutcome(name: "Dave",   tokens: 6.8e6, mergedPRs: 7),
    DeveloperOutcome(name: "Tom",    tokens: 0.4e6, mergedPRs: 6),
    DeveloperOutcome(name: "Lin",    tokens: 0.3e6, mergedPRs: 5),
  ]
}
