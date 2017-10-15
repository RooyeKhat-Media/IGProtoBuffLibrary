// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: SignalingGetConfiguration.proto
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

public struct IGPSignalingGetConfiguration: SwiftProtobuf.RequestMessage {
  public static let protoMessageName: String = "IGPSignalingGetConfiguration"

  public var igpRequest: IGPRequest {
    get {return _storage._igpRequest ?? IGPRequest()}
    set {_uniqueStorage()._igpRequest = newValue}
  }
  /// Returns true if `igpRequest` has been explicitly set.
  public var hasIgpRequest: Bool {return _storage._igpRequest != nil}
  /// Clears the value of `igpRequest`. Subsequent reads from it will return its default value.
  public mutating func clearIgpRequest() {_storage._igpRequest = nil}

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
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct IGPSignalingGetConfigurationResponse: SwiftProtobuf.ResponseMessage {
  public static let protoMessageName: String = "IGPSignalingGetConfigurationResponse"

  public var igpResponse: IGPResponse {
    get {return _storage._igpResponse ?? IGPResponse()}
    set {_uniqueStorage()._igpResponse = newValue}
  }
  /// Returns true if `igpResponse` has been explicitly set.
  public var hasIgpResponse: Bool {return _storage._igpResponse != nil}
  /// Clears the value of `igpResponse`. Subsequent reads from it will return its default value.
  public mutating func clearIgpResponse() {_storage._igpResponse = nil}

  public var igpIceServer: [IGPSignalingGetConfigurationResponse.IGPIceServer] {
    get {return _storage._igpIceServer}
    set {_uniqueStorage()._igpIceServer = newValue}
  }

  public var igpVoiceCalling: Bool {
    get {return _storage._igpVoiceCalling}
    set {_uniqueStorage()._igpVoiceCalling = newValue}
  }

  public var igpVideoCalling: Bool {
    get {return _storage._igpVideoCalling}
    set {_uniqueStorage()._igpVideoCalling = newValue}
  }

  public var igpScreenSharing: Bool {
    get {return _storage._igpScreenSharing}
    set {_uniqueStorage()._igpScreenSharing = newValue}
  }

  public var igpSecretChat: Bool {
    get {return _storage._igpSecretChat}
    set {_uniqueStorage()._igpSecretChat = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public struct IGPIceServer: SwiftProtobuf.Message {
    public static let protoMessageName: String = IGPSignalingGetConfigurationResponse.protoMessageName + ".IGPIceServer"

    public var igpURL: String = String()

    public var igpCredential: String = String()

    public var igpUsername: String = String()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    /// Used by the decoding initializers in the SwiftProtobuf library, not generally
    /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
    /// initializers are defined in the SwiftProtobuf library. See the Message and
    /// Message+*Additions` files.
    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &self.igpURL)
        case 2: try decoder.decodeSingularStringField(value: &self.igpCredential)
        case 3: try decoder.decodeSingularStringField(value: &self.igpUsername)
        default: break
        }
      }
    }

    /// Used by the encoding methods of the SwiftProtobuf library, not generally
    /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
    /// other serializer methods are defined in the SwiftProtobuf library. See the
    /// `Message` and `Message+*Additions` files.
    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      if !self.igpURL.isEmpty {
        try visitor.visitSingularStringField(value: self.igpURL, fieldNumber: 1)
      }
      if !self.igpCredential.isEmpty {
        try visitor.visitSingularStringField(value: self.igpCredential, fieldNumber: 2)
      }
      if !self.igpUsername.isEmpty {
        try visitor.visitSingularStringField(value: self.igpUsername, fieldNumber: 3)
      }
      try unknownFields.traverse(visitor: &visitor)
    }
  }

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
        case 2: try decoder.decodeRepeatedMessageField(value: &_storage._igpIceServer)
        case 3: try decoder.decodeSingularBoolField(value: &_storage._igpVoiceCalling)
        case 4: try decoder.decodeSingularBoolField(value: &_storage._igpVideoCalling)
        case 5: try decoder.decodeSingularBoolField(value: &_storage._igpScreenSharing)
        case 6: try decoder.decodeSingularBoolField(value: &_storage._igpSecretChat)
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
      if !_storage._igpIceServer.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._igpIceServer, fieldNumber: 2)
      }
      if _storage._igpVoiceCalling != false {
        try visitor.visitSingularBoolField(value: _storage._igpVoiceCalling, fieldNumber: 3)
      }
      if _storage._igpVideoCalling != false {
        try visitor.visitSingularBoolField(value: _storage._igpVideoCalling, fieldNumber: 4)
      }
      if _storage._igpScreenSharing != false {
        try visitor.visitSingularBoolField(value: _storage._igpScreenSharing, fieldNumber: 5)
      }
      if _storage._igpSecretChat != false {
        try visitor.visitSingularBoolField(value: _storage._igpSecretChat, fieldNumber: 6)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension IGPSignalingGetConfiguration: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_request"),
  ]

  fileprivate class _StorageClass {
    var _igpRequest: IGPRequest? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpRequest = source._igpRequest
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: IGPSignalingGetConfiguration) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._igpRequest != other_storage._igpRequest {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension IGPSignalingGetConfigurationResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_response"),
    2: .standard(proto: "IGP_ice_server"),
    3: .standard(proto: "IGP_voice_calling"),
    4: .standard(proto: "IGP_video_calling"),
    5: .standard(proto: "IGP_screen_sharing"),
    6: .standard(proto: "IGP_secret_chat"),
  ]

  fileprivate class _StorageClass {
    var _igpResponse: IGPResponse? = nil
    var _igpIceServer: [IGPSignalingGetConfigurationResponse.IGPIceServer] = []
    var _igpVoiceCalling: Bool = false
    var _igpVideoCalling: Bool = false
    var _igpScreenSharing: Bool = false
    var _igpSecretChat: Bool = false

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpResponse = source._igpResponse
      _igpIceServer = source._igpIceServer
      _igpVoiceCalling = source._igpVoiceCalling
      _igpVideoCalling = source._igpVideoCalling
      _igpScreenSharing = source._igpScreenSharing
      _igpSecretChat = source._igpSecretChat
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: IGPSignalingGetConfigurationResponse) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._igpResponse != other_storage._igpResponse {return false}
        if _storage._igpIceServer != other_storage._igpIceServer {return false}
        if _storage._igpVoiceCalling != other_storage._igpVoiceCalling {return false}
        if _storage._igpVideoCalling != other_storage._igpVideoCalling {return false}
        if _storage._igpScreenSharing != other_storage._igpScreenSharing {return false}
        if _storage._igpSecretChat != other_storage._igpSecretChat {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension IGPSignalingGetConfigurationResponse.IGPIceServer: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_url"),
    2: .standard(proto: "IGP_credential"),
    3: .standard(proto: "IGP_username"),
  ]

  public func _protobuf_generated_isEqualTo(other: IGPSignalingGetConfigurationResponse.IGPIceServer) -> Bool {
    if self.igpURL != other.igpURL {return false}
    if self.igpCredential != other.igpCredential {return false}
    if self.igpUsername != other.igpUsername {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
