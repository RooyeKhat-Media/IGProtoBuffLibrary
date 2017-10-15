// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ClientCountRoomHistory.proto
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

public struct IGPClientCountRoomHistory: SwiftProtobuf.RequestMessage {
  public static let protoMessageName: String = "IGPClientCountRoomHistory"

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
        case 2: try decoder.decodeSingularInt64Field(value: &_storage._igpRoomID)
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
      if _storage._igpRoomID != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpRoomID, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct IGPClientCountRoomHistoryResponse: SwiftProtobuf.ResponseMessage {
  public static let protoMessageName: String = "IGPClientCountRoomHistoryResponse"

  public var igpResponse: IGPResponse {
    get {return _storage._igpResponse ?? IGPResponse()}
    set {_uniqueStorage()._igpResponse = newValue}
  }
  /// Returns true if `igpResponse` has been explicitly set.
  public var hasIgpResponse: Bool {return _storage._igpResponse != nil}
  /// Clears the value of `igpResponse`. Subsequent reads from it will return its default value.
  public mutating func clearIgpResponse() {_storage._igpResponse = nil}

  public var igpMedia: Int32 {
    get {return _storage._igpMedia}
    set {_uniqueStorage()._igpMedia = newValue}
  }

  public var igpImage: Int32 {
    get {return _storage._igpImage}
    set {_uniqueStorage()._igpImage = newValue}
  }

  public var igpVideo: Int32 {
    get {return _storage._igpVideo}
    set {_uniqueStorage()._igpVideo = newValue}
  }

  public var igpAudio: Int32 {
    get {return _storage._igpAudio}
    set {_uniqueStorage()._igpAudio = newValue}
  }

  public var igpVoice: Int32 {
    get {return _storage._igpVoice}
    set {_uniqueStorage()._igpVoice = newValue}
  }

  public var igpGif: Int32 {
    get {return _storage._igpGif}
    set {_uniqueStorage()._igpGif = newValue}
  }

  public var igpFile: Int32 {
    get {return _storage._igpFile}
    set {_uniqueStorage()._igpFile = newValue}
  }

  public var igpURL: Int32 {
    get {return _storage._igpURL}
    set {_uniqueStorage()._igpURL = newValue}
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._igpResponse)
        case 2: try decoder.decodeSingularInt32Field(value: &_storage._igpMedia)
        case 3: try decoder.decodeSingularInt32Field(value: &_storage._igpImage)
        case 4: try decoder.decodeSingularInt32Field(value: &_storage._igpVideo)
        case 5: try decoder.decodeSingularInt32Field(value: &_storage._igpAudio)
        case 6: try decoder.decodeSingularInt32Field(value: &_storage._igpVoice)
        case 7: try decoder.decodeSingularInt32Field(value: &_storage._igpGif)
        case 8: try decoder.decodeSingularInt32Field(value: &_storage._igpFile)
        case 9: try decoder.decodeSingularInt32Field(value: &_storage._igpURL)
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
      if _storage._igpMedia != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpMedia, fieldNumber: 2)
      }
      if _storage._igpImage != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpImage, fieldNumber: 3)
      }
      if _storage._igpVideo != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpVideo, fieldNumber: 4)
      }
      if _storage._igpAudio != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpAudio, fieldNumber: 5)
      }
      if _storage._igpVoice != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpVoice, fieldNumber: 6)
      }
      if _storage._igpGif != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpGif, fieldNumber: 7)
      }
      if _storage._igpFile != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpFile, fieldNumber: 8)
      }
      if _storage._igpURL != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpURL, fieldNumber: 9)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension IGPClientCountRoomHistory: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_request"),
    2: .standard(proto: "IGP_room_id"),
  ]

  fileprivate class _StorageClass {
    var _igpRequest: IGPRequest? = nil
    var _igpRoomID: Int64 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpRequest = source._igpRequest
      _igpRoomID = source._igpRoomID
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: IGPClientCountRoomHistory) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._igpRequest != other_storage._igpRequest {return false}
        if _storage._igpRoomID != other_storage._igpRoomID {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension IGPClientCountRoomHistoryResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_response"),
    2: .standard(proto: "IGP_media"),
    3: .standard(proto: "IGP_image"),
    4: .standard(proto: "IGP_video"),
    5: .standard(proto: "IGP_audio"),
    6: .standard(proto: "IGP_voice"),
    7: .standard(proto: "IGP_gif"),
    8: .standard(proto: "IGP_file"),
    9: .standard(proto: "IGP_url"),
  ]

  fileprivate class _StorageClass {
    var _igpResponse: IGPResponse? = nil
    var _igpMedia: Int32 = 0
    var _igpImage: Int32 = 0
    var _igpVideo: Int32 = 0
    var _igpAudio: Int32 = 0
    var _igpVoice: Int32 = 0
    var _igpGif: Int32 = 0
    var _igpFile: Int32 = 0
    var _igpURL: Int32 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpResponse = source._igpResponse
      _igpMedia = source._igpMedia
      _igpImage = source._igpImage
      _igpVideo = source._igpVideo
      _igpAudio = source._igpAudio
      _igpVoice = source._igpVoice
      _igpGif = source._igpGif
      _igpFile = source._igpFile
      _igpURL = source._igpURL
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: IGPClientCountRoomHistoryResponse) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._igpResponse != other_storage._igpResponse {return false}
        if _storage._igpMedia != other_storage._igpMedia {return false}
        if _storage._igpImage != other_storage._igpImage {return false}
        if _storage._igpVideo != other_storage._igpVideo {return false}
        if _storage._igpAudio != other_storage._igpAudio {return false}
        if _storage._igpVoice != other_storage._igpVoice {return false}
        if _storage._igpGif != other_storage._igpGif {return false}
        if _storage._igpFile != other_storage._igpFile {return false}
        if _storage._igpURL != other_storage._igpURL {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
