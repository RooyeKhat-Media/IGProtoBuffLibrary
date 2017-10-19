// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: UserTwoStepVerificationChangeRecoveryQuestion.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct IGPUserTwoStepVerificationChangeRecoveryQuestion: SwiftProtobuf.RequestMessage {
  public static let protoMessageName: String = "IGPUserTwoStepVerificationChangeRecoveryQuestion"

  public var igpRequest: IGPRequest {
    get {return _storage._igpRequest ?? IGPRequest()}
    set {_uniqueStorage()._igpRequest = newValue}
  }
  /// Returns true if `igpRequest` has been explicitly set.
  public var hasIgpRequest: Bool {return _storage._igpRequest != nil}
  /// Clears the value of `igpRequest`. Subsequent reads from it will return its default value.
  public mutating func clearIgpRequest() {_storage._igpRequest = nil}

  public var igpPassword: String {
    get {return _storage._igpPassword}
    set {_uniqueStorage()._igpPassword = newValue}
  }

  public var igpQuestionOne: String {
    get {return _storage._igpQuestionOne}
    set {_uniqueStorage()._igpQuestionOne = newValue}
  }

  public var igpAnswerOne: String {
    get {return _storage._igpAnswerOne}
    set {_uniqueStorage()._igpAnswerOne = newValue}
  }

  public var igpQuestionTwo: String {
    get {return _storage._igpQuestionTwo}
    set {_uniqueStorage()._igpQuestionTwo = newValue}
  }

  public var igpAnswerTwo: String {
    get {return _storage._igpAnswerTwo}
    set {_uniqueStorage()._igpAnswerTwo = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._igpRequest)
        case 2: try decoder.decodeSingularStringField(value: &_storage._igpPassword)
        case 3: try decoder.decodeSingularStringField(value: &_storage._igpQuestionOne)
        case 4: try decoder.decodeSingularStringField(value: &_storage._igpAnswerOne)
        case 5: try decoder.decodeSingularStringField(value: &_storage._igpQuestionTwo)
        case 6: try decoder.decodeSingularStringField(value: &_storage._igpAnswerTwo)
        default: break
        }
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._igpRequest {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if !_storage._igpPassword.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpPassword, fieldNumber: 2)
      }
      if !_storage._igpQuestionOne.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpQuestionOne, fieldNumber: 3)
      }
      if !_storage._igpAnswerOne.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpAnswerOne, fieldNumber: 4)
      }
      if !_storage._igpQuestionTwo.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpQuestionTwo, fieldNumber: 5)
      }
      if !_storage._igpAnswerTwo.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpAnswerTwo, fieldNumber: 6)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct IGPUserTwoStepVerificationChangeRecoveryQuestionResponse: SwiftProtobuf.ResponseMessage {
  public static let protoMessageName: String = "IGPUserTwoStepVerificationChangeRecoveryQuestionResponse"

  public var igpResponse: IGPResponse {
    get {return _storage._igpResponse ?? IGPResponse()}
    set {_uniqueStorage()._igpResponse = newValue}
  }
  /// Returns true if `igpResponse` has been explicitly set.
  public var hasIgpResponse: Bool {return _storage._igpResponse != nil}
  /// Clears the value of `igpResponse`. Subsequent reads from it will return its default value.
  public mutating func clearIgpResponse() {_storage._igpResponse = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._igpResponse)
        default: break
        }
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._igpResponse {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension IGPUserTwoStepVerificationChangeRecoveryQuestion: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_request"),
    2: .standard(proto: "IGP_password"),
    3: .standard(proto: "IGP_question_one"),
    4: .standard(proto: "IGP_answer_one"),
    5: .standard(proto: "IGP_question_two"),
    6: .standard(proto: "IGP_answer_two"),
  ]

  fileprivate class _StorageClass {
    var _igpRequest: IGPRequest? = nil
    var _igpPassword: String = String()
    var _igpQuestionOne: String = String()
    var _igpAnswerOne: String = String()
    var _igpQuestionTwo: String = String()
    var _igpAnswerTwo: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpRequest = source._igpRequest
      _igpPassword = source._igpPassword
      _igpQuestionOne = source._igpQuestionOne
      _igpAnswerOne = source._igpAnswerOne
      _igpQuestionTwo = source._igpQuestionTwo
      _igpAnswerTwo = source._igpAnswerTwo
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: IGPUserTwoStepVerificationChangeRecoveryQuestion) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._igpRequest != other_storage._igpRequest {return false}
        if _storage._igpPassword != other_storage._igpPassword {return false}
        if _storage._igpQuestionOne != other_storage._igpQuestionOne {return false}
        if _storage._igpAnswerOne != other_storage._igpAnswerOne {return false}
        if _storage._igpQuestionTwo != other_storage._igpQuestionTwo {return false}
        if _storage._igpAnswerTwo != other_storage._igpAnswerTwo {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension IGPUserTwoStepVerificationChangeRecoveryQuestionResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_response"),
  ]

  fileprivate class _StorageClass {
    var _igpResponse: IGPResponse? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpResponse = source._igpResponse
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: IGPUserTwoStepVerificationChangeRecoveryQuestionResponse) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._igpResponse != other_storage._igpResponse {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}