// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: UserLogin.proto
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

public struct IGPUserLogin: SwiftProtobuf.RequestMessage {
  public static let protoMessageName: String = "IGPUserLogin"

  public var igpRequest: IGPRequest {
    get {return _storage._igpRequest ?? IGPRequest()}
    set {_uniqueStorage()._igpRequest = newValue}
  }
  /// Returns true if `igpRequest` has been explicitly set.
  public var hasIgpRequest: Bool {return _storage._igpRequest != nil}
  /// Clears the value of `igpRequest`. Subsequent reads from it will return its default value.
  public mutating func clearIgpRequest() {_storage._igpRequest = nil}

  public var igpToken: String {
    get {return _storage._igpToken}
    set {_uniqueStorage()._igpToken = newValue}
  }

  public var igpAppName: String {
    get {return _storage._igpAppName}
    set {_uniqueStorage()._igpAppName = newValue}
  }

  public var igpAppID: Int32 {
    get {return _storage._igpAppID}
    set {_uniqueStorage()._igpAppID = newValue}
  }

  public var igpAppBuildVersion: Int32 {
    get {return _storage._igpAppBuildVersion}
    set {_uniqueStorage()._igpAppBuildVersion = newValue}
  }

  public var igpAppVersion: String {
    get {return _storage._igpAppVersion}
    set {_uniqueStorage()._igpAppVersion = newValue}
  }

  public var igpPlatform: IGPPlatform {
    get {return _storage._igpPlatform}
    set {_uniqueStorage()._igpPlatform = newValue}
  }

  public var igpPlatformVersion: String {
    get {return _storage._igpPlatformVersion}
    set {_uniqueStorage()._igpPlatformVersion = newValue}
  }

  public var igpDevice: IGPDevice {
    get {return _storage._igpDevice}
    set {_uniqueStorage()._igpDevice = newValue}
  }

  public var igpDeviceName: String {
    get {return _storage._igpDeviceName}
    set {_uniqueStorage()._igpDeviceName = newValue}
  }

  public var igpLanguage: IGPLanguage {
    get {return _storage._igpLanguage}
    set {_uniqueStorage()._igpLanguage = newValue}
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
        case 2: try decoder.decodeSingularStringField(value: &_storage._igpToken)
        case 3: try decoder.decodeSingularStringField(value: &_storage._igpAppName)
        case 4: try decoder.decodeSingularInt32Field(value: &_storage._igpAppID)
        case 5: try decoder.decodeSingularInt32Field(value: &_storage._igpAppBuildVersion)
        case 6: try decoder.decodeSingularStringField(value: &_storage._igpAppVersion)
        case 7: try decoder.decodeSingularEnumField(value: &_storage._igpPlatform)
        case 8: try decoder.decodeSingularStringField(value: &_storage._igpPlatformVersion)
        case 9: try decoder.decodeSingularEnumField(value: &_storage._igpDevice)
        case 10: try decoder.decodeSingularStringField(value: &_storage._igpDeviceName)
        case 11: try decoder.decodeSingularEnumField(value: &_storage._igpLanguage)
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
      if !_storage._igpToken.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpToken, fieldNumber: 2)
      }
      if !_storage._igpAppName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpAppName, fieldNumber: 3)
      }
      if _storage._igpAppID != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpAppID, fieldNumber: 4)
      }
      if _storage._igpAppBuildVersion != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpAppBuildVersion, fieldNumber: 5)
      }
      if !_storage._igpAppVersion.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpAppVersion, fieldNumber: 6)
      }
      if _storage._igpPlatform != .unknownPlatform {
        try visitor.visitSingularEnumField(value: _storage._igpPlatform, fieldNumber: 7)
      }
      if !_storage._igpPlatformVersion.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpPlatformVersion, fieldNumber: 8)
      }
      if _storage._igpDevice != .unknownDevice {
        try visitor.visitSingularEnumField(value: _storage._igpDevice, fieldNumber: 9)
      }
      if !_storage._igpDeviceName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpDeviceName, fieldNumber: 10)
      }
      if _storage._igpLanguage != .enUs {
        try visitor.visitSingularEnumField(value: _storage._igpLanguage, fieldNumber: 11)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct IGPUserLoginResponse: SwiftProtobuf.ResponseMessage {
  public static let protoMessageName: String = "IGPUserLoginResponse"

  public var igpResponse: IGPResponse {
    get {return _storage._igpResponse ?? IGPResponse()}
    set {_uniqueStorage()._igpResponse = newValue}
  }
  /// Returns true if `igpResponse` has been explicitly set.
  public var hasIgpResponse: Bool {return _storage._igpResponse != nil}
  /// Clears the value of `igpResponse`. Subsequent reads from it will return its default value.
  public mutating func clearIgpResponse() {_storage._igpResponse = nil}

  public var igpDeprecatedClient: Bool {
    get {return _storage._igpDeprecatedClient}
    set {_uniqueStorage()._igpDeprecatedClient = newValue}
  }

  public var igpSecondaryNodeName: String {
    get {return _storage._igpSecondaryNodeName}
    set {_uniqueStorage()._igpSecondaryNodeName = newValue}
  }

  public var igpUpdateAvailable: Bool {
    get {return _storage._igpUpdateAvailable}
    set {_uniqueStorage()._igpUpdateAvailable = newValue}
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
        case 2: try decoder.decodeSingularBoolField(value: &_storage._igpDeprecatedClient)
        case 3: try decoder.decodeSingularStringField(value: &_storage._igpSecondaryNodeName)
        case 4: try decoder.decodeSingularBoolField(value: &_storage._igpUpdateAvailable)
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
      if _storage._igpDeprecatedClient != false {
        try visitor.visitSingularBoolField(value: _storage._igpDeprecatedClient, fieldNumber: 2)
      }
      if !_storage._igpSecondaryNodeName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpSecondaryNodeName, fieldNumber: 3)
      }
      if _storage._igpUpdateAvailable != false {
        try visitor.visitSingularBoolField(value: _storage._igpUpdateAvailable, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension IGPUserLogin: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_request"),
    2: .standard(proto: "IGP_token"),
    3: .standard(proto: "IGP_app_name"),
    4: .standard(proto: "IGP_app_id"),
    5: .standard(proto: "IGP_app_build_version"),
    6: .standard(proto: "IGP_app_version"),
    7: .standard(proto: "IGP_platform"),
    8: .standard(proto: "IGP_platform_version"),
    9: .standard(proto: "IGP_device"),
    10: .standard(proto: "IGP_device_name"),
    11: .standard(proto: "IGP_language"),
  ]

  fileprivate class _StorageClass {
    var _igpRequest: IGPRequest? = nil
    var _igpToken: String = String()
    var _igpAppName: String = String()
    var _igpAppID: Int32 = 0
    var _igpAppBuildVersion: Int32 = 0
    var _igpAppVersion: String = String()
    var _igpPlatform: IGPPlatform = .unknownPlatform
    var _igpPlatformVersion: String = String()
    var _igpDevice: IGPDevice = .unknownDevice
    var _igpDeviceName: String = String()
    var _igpLanguage: IGPLanguage = .enUs

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpRequest = source._igpRequest
      _igpToken = source._igpToken
      _igpAppName = source._igpAppName
      _igpAppID = source._igpAppID
      _igpAppBuildVersion = source._igpAppBuildVersion
      _igpAppVersion = source._igpAppVersion
      _igpPlatform = source._igpPlatform
      _igpPlatformVersion = source._igpPlatformVersion
      _igpDevice = source._igpDevice
      _igpDeviceName = source._igpDeviceName
      _igpLanguage = source._igpLanguage
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: IGPUserLogin) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._igpRequest != other_storage._igpRequest {return false}
        if _storage._igpToken != other_storage._igpToken {return false}
        if _storage._igpAppName != other_storage._igpAppName {return false}
        if _storage._igpAppID != other_storage._igpAppID {return false}
        if _storage._igpAppBuildVersion != other_storage._igpAppBuildVersion {return false}
        if _storage._igpAppVersion != other_storage._igpAppVersion {return false}
        if _storage._igpPlatform != other_storage._igpPlatform {return false}
        if _storage._igpPlatformVersion != other_storage._igpPlatformVersion {return false}
        if _storage._igpDevice != other_storage._igpDevice {return false}
        if _storage._igpDeviceName != other_storage._igpDeviceName {return false}
        if _storage._igpLanguage != other_storage._igpLanguage {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension IGPUserLoginResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_response"),
    2: .standard(proto: "IGP_deprecated_client"),
    3: .standard(proto: "IGP_secondary_node_name"),
    4: .standard(proto: "IGP_update_available"),
  ]

  fileprivate class _StorageClass {
    var _igpResponse: IGPResponse? = nil
    var _igpDeprecatedClient: Bool = false
    var _igpSecondaryNodeName: String = String()
    var _igpUpdateAvailable: Bool = false

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpResponse = source._igpResponse
      _igpDeprecatedClient = source._igpDeprecatedClient
      _igpSecondaryNodeName = source._igpSecondaryNodeName
      _igpUpdateAvailable = source._igpUpdateAvailable
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: IGPUserLoginResponse) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._igpResponse != other_storage._igpResponse {return false}
        if _storage._igpDeprecatedClient != other_storage._igpDeprecatedClient {return false}
        if _storage._igpSecondaryNodeName != other_storage._igpSecondaryNodeName {return false}
        if _storage._igpUpdateAvailable != other_storage._igpUpdateAvailable {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
