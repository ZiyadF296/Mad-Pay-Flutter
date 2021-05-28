// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: mad_pay.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

enum PaymentEnvironment: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case test // = 0
  case production // = 1
  case UNRECOGNIZED(Int)

  init() {
    self = .test
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .test
    case 1: self = .production
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .test: return 0
    case .production: return 1
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension PaymentEnvironment: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [PaymentEnvironment] = [
    .test,
    .production,
  ]
}

#endif  // swift(>=4.2)

enum PaymentNetwork: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case visa // = 0
  case mastercard // = 1
  case amex // = 2
  case interact // = 3
  case discover // = 4
  case jcb // = 5
  case maestro // = 6
  case electron // = 7
  case mir // = 8
  case cartesbancarries // = 9
  case unionpay // = 10
  case eftpos // = 11
  case elo // = 12
  case idcredit // = 13
  case mada // = 14
  case privatelabel // = 15
  case quicpay // = 16
  case suica // = 17
  case vpay // = 18
  case UNRECOGNIZED(Int)

  init() {
    self = .visa
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .visa
    case 1: self = .mastercard
    case 2: self = .amex
    case 3: self = .interact
    case 4: self = .discover
    case 5: self = .jcb
    case 6: self = .maestro
    case 7: self = .electron
    case 8: self = .mir
    case 9: self = .cartesbancarries
    case 10: self = .unionpay
    case 11: self = .eftpos
    case 12: self = .elo
    case 13: self = .idcredit
    case 14: self = .mada
    case 15: self = .privatelabel
    case 16: self = .quicpay
    case 17: self = .suica
    case 18: self = .vpay
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .visa: return 0
    case .mastercard: return 1
    case .amex: return 2
    case .interact: return 3
    case .discover: return 4
    case .jcb: return 5
    case .maestro: return 6
    case .electron: return 7
    case .mir: return 8
    case .cartesbancarries: return 9
    case .unionpay: return 10
    case .eftpos: return 11
    case .elo: return 12
    case .idcredit: return 13
    case .mada: return 14
    case .privatelabel: return 15
    case .quicpay: return 16
    case .suica: return 17
    case .vpay: return 18
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension PaymentNetwork: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [PaymentNetwork] = [
    .visa,
    .mastercard,
    .amex,
    .interact,
    .discover,
    .jcb,
    .maestro,
    .electron,
    .mir,
    .cartesbancarries,
    .unionpay,
    .eftpos,
    .elo,
    .idcredit,
    .mada,
    .privatelabel,
    .quicpay,
    .suica,
    .vpay,
  ]
}

#endif  // swift(>=4.2)

struct PaymentItem {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var name: String = String()

  var price: Double = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct PaymentRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var parameters: PaymentRequest.OneOf_Parameters? = nil

  var google: Google_GoogleParameters {
    get {
      if case .google(let v)? = parameters {return v}
      return Google_GoogleParameters()
    }
    set {parameters = .google(newValue)}
  }

  var apple: Apple_AppleParameters {
    get {
      if case .apple(let v)? = parameters {return v}
      return Apple_AppleParameters()
    }
    set {parameters = .apple(newValue)}
  }

  var currencyCode: String = String()

  var countryCode: String = String()

  var allowedPaymentNetworks: [PaymentNetwork] = []

  var paymentItems: [PaymentItem] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Parameters: Equatable {
    case google(Google_GoogleParameters)
    case apple(Apple_AppleParameters)

  #if !swift(>=4.1)
    static func ==(lhs: PaymentRequest.OneOf_Parameters, rhs: PaymentRequest.OneOf_Parameters) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.google, .google): return {
        guard case .google(let l) = lhs, case .google(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.apple, .apple): return {
        guard case .apple(let l) = lhs, case .apple(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  init() {}
}

struct EnvironmentRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var environment: PaymentEnvironment = .test

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct CheckActiveCardRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var allowedPaymentNetworks: [PaymentNetwork] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Response {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var success: Bool = false

  var errorCode: String = String()

  var message: String = String()

  var data: Data = Data()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension PaymentEnvironment: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "TEST"),
    1: .same(proto: "PRODUCTION"),
  ]
}

extension PaymentNetwork: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "VISA"),
    1: .same(proto: "MASTERCARD"),
    2: .same(proto: "AMEX"),
    3: .same(proto: "INTERACT"),
    4: .same(proto: "DISCOVER"),
    5: .same(proto: "JCB"),
    6: .same(proto: "MAESTRO"),
    7: .same(proto: "ELECTRON"),
    8: .same(proto: "MIR"),
    9: .same(proto: "CARTESBANCARRIES"),
    10: .same(proto: "UNIONPAY"),
    11: .same(proto: "EFTPOS"),
    12: .same(proto: "ELO"),
    13: .same(proto: "IDCREDIT"),
    14: .same(proto: "MADA"),
    15: .same(proto: "PRIVATELABEL"),
    16: .same(proto: "QUICPAY"),
    17: .same(proto: "SUICA"),
    18: .same(proto: "VPAY"),
  ]
}

extension PaymentItem: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "PaymentItem"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "price"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularDoubleField(value: &self.price) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if self.price != 0 {
      try visitor.visitSingularDoubleField(value: self.price, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: PaymentItem, rhs: PaymentItem) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.price != rhs.price {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension PaymentRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "PaymentRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "google"),
    2: .same(proto: "apple"),
    3: .standard(proto: "currency_code"),
    4: .standard(proto: "country_code"),
    5: .standard(proto: "allowed_payment_networks"),
    6: .standard(proto: "payment_items"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Google_GoogleParameters?
        var hadOneofValue = false
        if let current = self.parameters {
          hadOneofValue = true
          if case .google(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.parameters = .google(v)
        }
      }()
      case 2: try {
        var v: Apple_AppleParameters?
        var hadOneofValue = false
        if let current = self.parameters {
          hadOneofValue = true
          if case .apple(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.parameters = .apple(v)
        }
      }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.currencyCode) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.countryCode) }()
      case 5: try { try decoder.decodeRepeatedEnumField(value: &self.allowedPaymentNetworks) }()
      case 6: try { try decoder.decodeRepeatedMessageField(value: &self.paymentItems) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.parameters {
    case .google?: try {
      guard case .google(let v)? = self.parameters else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .apple?: try {
      guard case .apple(let v)? = self.parameters else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    if !self.currencyCode.isEmpty {
      try visitor.visitSingularStringField(value: self.currencyCode, fieldNumber: 3)
    }
    if !self.countryCode.isEmpty {
      try visitor.visitSingularStringField(value: self.countryCode, fieldNumber: 4)
    }
    if !self.allowedPaymentNetworks.isEmpty {
      try visitor.visitPackedEnumField(value: self.allowedPaymentNetworks, fieldNumber: 5)
    }
    if !self.paymentItems.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.paymentItems, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: PaymentRequest, rhs: PaymentRequest) -> Bool {
    if lhs.parameters != rhs.parameters {return false}
    if lhs.currencyCode != rhs.currencyCode {return false}
    if lhs.countryCode != rhs.countryCode {return false}
    if lhs.allowedPaymentNetworks != rhs.allowedPaymentNetworks {return false}
    if lhs.paymentItems != rhs.paymentItems {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension EnvironmentRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "EnvironmentRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "environment"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.environment) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.environment != .test {
      try visitor.visitSingularEnumField(value: self.environment, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: EnvironmentRequest, rhs: EnvironmentRequest) -> Bool {
    if lhs.environment != rhs.environment {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CheckActiveCardRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "CheckActiveCardRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "allowed_payment_networks"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedEnumField(value: &self.allowedPaymentNetworks) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.allowedPaymentNetworks.isEmpty {
      try visitor.visitPackedEnumField(value: self.allowedPaymentNetworks, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CheckActiveCardRequest, rhs: CheckActiveCardRequest) -> Bool {
    if lhs.allowedPaymentNetworks != rhs.allowedPaymentNetworks {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Response: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Response"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "success"),
    2: .standard(proto: "error_code"),
    3: .same(proto: "message"),
    4: .same(proto: "data"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBoolField(value: &self.success) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.errorCode) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.message) }()
      case 4: try { try decoder.decodeSingularBytesField(value: &self.data) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.success != false {
      try visitor.visitSingularBoolField(value: self.success, fieldNumber: 1)
    }
    if !self.errorCode.isEmpty {
      try visitor.visitSingularStringField(value: self.errorCode, fieldNumber: 2)
    }
    if !self.message.isEmpty {
      try visitor.visitSingularStringField(value: self.message, fieldNumber: 3)
    }
    if !self.data.isEmpty {
      try visitor.visitSingularBytesField(value: self.data, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Response, rhs: Response) -> Bool {
    if lhs.success != rhs.success {return false}
    if lhs.errorCode != rhs.errorCode {return false}
    if lhs.message != rhs.message {return false}
    if lhs.data != rhs.data {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}