/// Copyright (c) 2026 Kodeco Inc. See COPYRIGHT for details.
/// Caution: This is AI-generated code.

import Foundation

enum KPIFormat {
  static func currencyShort(_ value: Double) -> String {
    "$\(trimmed(value / 1_000))K"
  }
  
  static func tokensShort(_ value: Double) -> String {
    "\(trimmed(value / 1e9))B"
  }
  
  static func signedPercent(_ fraction: Double) -> String {
    let sign = fraction >= 0 ? "+" : "-"
    return "\(sign)\(trimmed(abs(fraction) * 100))%"
  }
  
  static func percent(_ fraction: Double) -> String {
    "\(Int((fraction * 100).rounded()))%"
  }
  
  private static func trimmed(_ value: Double) -> String {
    value.formatted(.number.precision(.fractionLength(0...1)))
  }
  
  static func tokensMillionsShort(_ value: Double) -> String {
    "\((value / 1e6).formatted(.number.precision(.fractionLength(0...1))))M"
  }
}
