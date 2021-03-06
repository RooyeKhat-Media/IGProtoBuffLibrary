// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ChatConvertToGroup.proto
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

public struct IGPChatConvertToGroup: SwiftProtobuf.RequestMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var igpRequest: IGPRequest {
    get {return _storage._igpRequest ?? IGPRequest()}
    set {_uniqueStorage()._igpRequest = newValue}
  }
  /// Returns true if `igpRequest` has been explicitly set.
  public var hasIgpRequest: Bool {return _storage._igpRequest != nil}
  /// Clears the value of `igpRequest`. Subsequent reads from it will return its default value.
  public mutating func clearIgpRequest() {_storage._igpRequest = nil}

  public var igpRoomID: Int64 {
    get {return _storage._igpRoomID}
    set {_uniqueStorage()._igpRoomID = newValue}
  }

  public var igpName: String {
    get {return _storage._igpName}
    set {_uniqueStorage()._igpName = newValue}
  }

  public var igpDescription: String {
    get {return _storage._igpDescription}
    set {_uniqueStorage()._igpDescription = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct IGPChatConvertToGroupResponse: SwiftProtobuf.ResponseMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var igpResponse: IGPResponse {
    get {return _storage._igpResponse ?? IGPResponse()}
    set {_uniqueStorage()._igpResponse = newValue}
  }
  /// Returns true if `igpResponse` has been explicitly set.
  public var hasIgpResponse: Bool {return _storage._igpResponse != nil}
  /// Clears the value of `igpResponse`. Subsequent reads from it will return its default value.
  public mutating func clearIgpResponse() {_storage._igpResponse = nil}

  public var igpRoomID: Int64 {
    get {return _storage._igpRoomID}
    set {_uniqueStorage()._igpRoomID = newValue}
  }

  public var igpName: String {
    get {return _storage._igpName}
    set {_uniqueStorage()._igpName = newValue}
  }

  public var igpDescription: String {
    get {return _storage._igpDescription}
    set {_uniqueStorage()._igpDescription = newValue}
  }

  public var igpRole: IGPGroupRoom.IGPRole {
    get {return _storage._igpRole}
    set {_uniqueStorage()._igpRole = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension IGPChatConvertToGroup: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPChatConvertToGroup"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_request"),
    2: .standard(proto: "IGP_room_id"),
    3: .standard(proto: "IGP_name"),
    4: .standard(proto: "IGP_description"),
  ]

  fileprivate class _StorageClass {
    var _igpRequest: IGPRequest? = nil
    var _igpRoomID: Int64 = 0
    var _igpName: String = String()
    var _igpDescription: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpRequest = source._igpRequest
      _igpRoomID = source._igpRoomID
      _igpName = source._igpName
      _igpDescription = source._igpDescription
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._igpRequest)
        case 2: try decoder.decodeSingularInt64Field(value: &_storage._igpRoomID)
        case 3: try decoder.decodeSingularStringField(value: &_storage._igpName)
        case 4: try decoder.decodeSingularStringField(value: &_storage._igpDescription)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._igpRequest {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if _storage._igpRoomID != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpRoomID, fieldNumber: 2)
      }
      if !_storage._igpName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpName, fieldNumber: 3)
      }
      if !_storage._igpDescription.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpDescription, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public func _protobuf_generated_isEqualTo(other: IGPChatConvertToGroup) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._igpRequest != other_storage._igpRequest {return false}
        if _storage._igpRoomID != other_storage._igpRoomID {return false}
        if _storage._igpName != other_storage._igpName {return false}
        if _storage._igpDescription != other_storage._igpDescription {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension IGPChatConvertToGroupResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPChatConvertToGroupResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_response"),
    2: .standard(proto: "IGP_room_id"),
    3: .standard(proto: "IGP_name"),
    4: .standard(proto: "IGP_description"),
    5: .standard(proto: "IGP_role"),
  ]

  fileprivate class _StorageClass {
    var _igpResponse: IGPResponse? = nil
    var _igpRoomID: Int64 = 0
    var _igpName: String = String()
    var _igpDescription: String = String()
    var _igpRole: IGPGroupRoom.IGPRole = .member

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpResponse = source._igpResponse
      _igpRoomID = source._igpRoomID
      _igpName = source._igpName
      _igpDescription = source._igpDescription
      _igpRole = source._igpRole
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._igpResponse)
        case 2: try decoder.decodeSingularInt64Field(value: &_storage._igpRoomID)
        case 3: try decoder.decodeSingularStringField(value: &_storage._igpName)
        case 4: try decoder.decodeSingularStringField(value: &_storage._igpDescription)
        case 5: try decoder.decodeSingularEnumField(value: &_storage._igpRole)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._igpResponse {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if _storage._igpRoomID != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpRoomID, fieldNumber: 2)
      }
      if !_storage._igpName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpName, fieldNumber: 3)
      }
      if !_storage._igpDescription.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpDescription, fieldNumber: 4)
      }
      if _storage._igpRole != .member {
        try visitor.visitSingularEnumField(value: _storage._igpRole, fieldNumber: 5)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public func _protobuf_generated_isEqualTo(other: IGPChatConvertToGroupResponse) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._igpResponse != other_storage._igpResponse {return false}
        if _storage._igpRoomID != other_storage._igpRoomID {return false}
        if _storage._igpName != other_storage._igpName {return false}
        if _storage._igpDescription != other_storage._igpDescription {return false}
        if _storage._igpRole != other_storage._igpRole {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
