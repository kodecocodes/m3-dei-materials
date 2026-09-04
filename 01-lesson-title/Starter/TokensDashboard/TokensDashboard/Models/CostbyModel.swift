/// Copyright (c) 2026 Kodeco Inc. See COPYRIGHT for details.
/// Caution: This is AI-generated code.

import Foundation

struct ModelCost: Identifiable {
  let name: String
  let cost: Double
  let tokens: Double
  let change: Double
  var id: String { name }
}

struct ModelCostStore {
  let modelCosts: [ModelCost] = [
    ModelCost(name: "Claude Opus 4.8", cost: 85_700, tokens: 9.8e9,  change: 0.18),
    ModelCost(name: "Claude Sonnet 4.6", cost: 63_200, tokens: 12.4e9, change: 0.06),
    ModelCost(name: "Claude Haiku 4.5", cost: 28_600, tokens: 7.2e9,  change: -0.04),
    ModelCost(name: "GPT-5 Codex", cost: 18_400, tokens: 2.3e9,  change: 0.02),
    ModelCost(name: "Gemini 3 Pro", cost: 8_200,  tokens: 1.0e9,  change: -0.11),
  ]
  
  var monthToDateSpend: Double { modelCosts.reduce(0) { $0 + $1.cost } }
  var monthToDateTokens: Double { modelCosts.reduce(0) { $0 + $1.tokens } }
}


