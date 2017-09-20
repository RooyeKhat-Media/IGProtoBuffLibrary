/// Generated by the Protocol Buffers 3.4.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.22
/// Source file "PushLoginToken.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct PushLoginTokenRoot {
    public static let `default` = PushLoginTokenRoot()
    public var extensionRegistry:ExtensionRegistry

    init() {
        extensionRegistry = ExtensionRegistry()
        registerAllExtensions(registry: extensionRegistry)
        ResponseRoot.default.registerAllExtensions(registry: extensionRegistry)
    }
    public func registerAllExtensions(registry: ExtensionRegistry) {
    }
}

final public class IGPPushLoginTokenResponse : GeneratedResponseMessage {
    public typealias BuilderType = IGPPushLoginTokenResponse.Builder

    public static func == (lhs: IGPPushLoginTokenResponse, rhs: IGPPushLoginTokenResponse) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpResponse == rhs.hasIgpResponse) && (!lhs.hasIgpResponse || lhs.igpResponse == rhs.igpResponse)
        fieldCheck = fieldCheck && (lhs.hasIgpUsername == rhs.hasIgpUsername) && (!lhs.hasIgpUsername || lhs.igpUsername == rhs.igpUsername)
        fieldCheck = fieldCheck && (lhs.hasIgpUserId == rhs.hasIgpUserId) && (!lhs.hasIgpUserId || lhs.igpUserId == rhs.igpUserId)
        fieldCheck = fieldCheck && (lhs.hasIgpAuthorHash == rhs.hasIgpAuthorHash) && (!lhs.hasIgpAuthorHash || lhs.igpAuthorHash == rhs.igpAuthorHash)
        fieldCheck = fieldCheck && (lhs.hasIgpToken == rhs.hasIgpToken) && (!lhs.hasIgpToken || lhs.igpToken == rhs.igpToken)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpUsername:String! = nil
    public fileprivate(set) var hasIgpUsername:Bool = false

    public fileprivate(set) var igpUserId:Int64! = nil
    public fileprivate(set) var hasIgpUserId:Bool = false

    public fileprivate(set) var igpAuthorHash:String! = nil
    public fileprivate(set) var hasIgpAuthorHash:Bool = false

    public fileprivate(set) var igpToken:String! = nil
    public fileprivate(set) var hasIgpToken:Bool = false

    required public init() {
        super.init()
    }
    override public func isInitialized() -> Bool {
        return true
    }
    override public func writeTo(codedOutputStream: CodedOutputStream) throws {
        if hasIgpResponse {
            try codedOutputStream.writeMessage(fieldNumber: 1, value:igpResponse)
        }
        if hasIgpUsername {
            try codedOutputStream.writeString(fieldNumber: 2, value:igpUsername)
        }
        if hasIgpUserId {
            try codedOutputStream.writeInt64(fieldNumber: 3, value:igpUserId)
        }
        if hasIgpAuthorHash {
            try codedOutputStream.writeString(fieldNumber: 4, value:igpAuthorHash)
        }
        if hasIgpToken {
            try codedOutputStream.writeString(fieldNumber: 5, value:igpToken)
        }
        try unknownFields.writeTo(codedOutputStream: codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
        var serialize_size:Int32 = memoizedSerializedSize
        if serialize_size != -1 {
         return serialize_size
        }

        serialize_size = 0
        if hasIgpResponse {
            if let varSizeigpResponse = igpResponse?.computeMessageSize(fieldNumber: 1) {
                serialize_size += varSizeigpResponse
            }
        }
        if hasIgpUsername {
            serialize_size += igpUsername.computeStringSize(fieldNumber: 2)
        }
        if hasIgpUserId {
            serialize_size += igpUserId.computeInt64Size(fieldNumber: 3)
        }
        if hasIgpAuthorHash {
            serialize_size += igpAuthorHash.computeStringSize(fieldNumber: 4)
        }
        if hasIgpToken {
            serialize_size += igpToken.computeStringSize(fieldNumber: 5)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPPushLoginTokenResponse.Builder {
        return IGPPushLoginTokenResponse.classBuilder() as! IGPPushLoginTokenResponse.Builder
    }
    public func getBuilder() -> IGPPushLoginTokenResponse.Builder {
        return classBuilder() as! IGPPushLoginTokenResponse.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPPushLoginTokenResponse.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPPushLoginTokenResponse.Builder()
    }
    public func toBuilder() throws -> IGPPushLoginTokenResponse.Builder {
        return try IGPPushLoginTokenResponse.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPPushLoginTokenResponse) throws -> IGPPushLoginTokenResponse.Builder {
        return try IGPPushLoginTokenResponse.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpResponse {
            jsonMap["IGPResponse"] = try igpResponse.encode()
        }
        if hasIgpUsername {
            jsonMap["IGPUsername"] = igpUsername
        }
        if hasIgpUserId {
            jsonMap["IGPUserId"] = "\(igpUserId!)"
        }
        if hasIgpAuthorHash {
            jsonMap["IGPAuthorHash"] = igpAuthorHash
        }
        if hasIgpToken {
            jsonMap["IGPToken"] = igpToken
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPPushLoginTokenResponse {
        return try IGPPushLoginTokenResponse.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPPushLoginTokenResponse {
        return try IGPPushLoginTokenResponse.Builder.fromJSONToBuilder(data:data).build()
    }
    override public func getDescription(indent:String) throws -> String {
        var output = ""
        if hasIgpResponse {
            output += "\(indent) igpResponse {\n"
            if let outDescIgpResponse = igpResponse {
                output += try outDescIgpResponse.getDescription(indent: "\(indent)  ")
            }
            output += "\(indent) }\n"
        }
        if hasIgpUsername {
            output += "\(indent) igpUsername: \(igpUsername) \n"
        }
        if hasIgpUserId {
            output += "\(indent) igpUserId: \(igpUserId) \n"
        }
        if hasIgpAuthorHash {
            output += "\(indent) igpAuthorHash: \(igpAuthorHash) \n"
        }
        if hasIgpToken {
            output += "\(indent) igpToken: \(igpToken) \n"
        }
        output += unknownFields.getDescription(indent: indent)
        return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasIgpResponse {
                if let hashValueigpResponse = igpResponse?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValueigpResponse
                }
            }
            if hasIgpUsername {
                hashCode = (hashCode &* 31) &+ igpUsername.hashValue
            }
            if hasIgpUserId {
                hashCode = (hashCode &* 31) &+ igpUserId.hashValue
            }
            if hasIgpAuthorHash {
                hashCode = (hashCode &* 31) &+ igpAuthorHash.hashValue
            }
            if hasIgpToken {
                hashCode = (hashCode &* 31) &+ igpToken.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPPushLoginTokenResponse"
    }
    override public func className() -> String {
        return "IGPPushLoginTokenResponse"
    }
    //Meta information declaration end

    final public class Builder : GeneratedResponseMessageBuilder {
        fileprivate var builderResult:IGPPushLoginTokenResponse = IGPPushLoginTokenResponse()
        public func getMessage() -> IGPPushLoginTokenResponse {
            return builderResult
        }

        required override public init () {
            super.init()
        }
        public var igpResponse:IGPResponse! {
            get {
                if igpResponseBuilder_ != nil {
                    builderResult.igpResponse = igpResponseBuilder_.getMessage()
                }
                return builderResult.igpResponse
            }
            set (value) {
                builderResult.hasIgpResponse = true
                builderResult.igpResponse = value
            }
        }
        public var hasIgpResponse:Bool {
            get {
                return builderResult.hasIgpResponse
            }
        }
        fileprivate var igpResponseBuilder_:IGPResponse.Builder! {
            didSet {
                builderResult.hasIgpResponse = true
            }
        }
        public func getIgpResponseBuilder() -> IGPResponse.Builder {
            if igpResponseBuilder_ == nil {
                igpResponseBuilder_ = IGPResponse.Builder()
                builderResult.igpResponse = igpResponseBuilder_.getMessage()
                if igpResponse != nil {
                    try! igpResponseBuilder_.mergeFrom(other: igpResponse)
                }
            }
            return igpResponseBuilder_
        }
        @discardableResult
        public func setIgpResponse(_ value:IGPResponse!) -> IGPPushLoginTokenResponse.Builder {
            self.igpResponse = value
            return self
        }
        @discardableResult
        public func mergeIgpResponse(value:IGPResponse) throws -> IGPPushLoginTokenResponse.Builder {
            if builderResult.hasIgpResponse {
                builderResult.igpResponse = try IGPResponse.builderWithPrototype(prototype:builderResult.igpResponse).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpResponse = value
            }
            builderResult.hasIgpResponse = true
            return self
        }
        @discardableResult
        public func clearIgpResponse() -> IGPPushLoginTokenResponse.Builder {
            igpResponseBuilder_ = nil
            builderResult.hasIgpResponse = false
            builderResult.igpResponse = nil
            return self
        }
        public var igpUsername:String {
            get {
                return builderResult.igpUsername
            }
            set (value) {
                builderResult.hasIgpUsername = true
                builderResult.igpUsername = value
            }
        }
        public var hasIgpUsername:Bool {
            get {
                return builderResult.hasIgpUsername
            }
        }
        @discardableResult
        public func setIgpUsername(_ value:String) -> IGPPushLoginTokenResponse.Builder {
            self.igpUsername = value
            return self
        }
        @discardableResult
        public func clearIgpUsername() -> IGPPushLoginTokenResponse.Builder{
            builderResult.hasIgpUsername = false
            builderResult.igpUsername = nil
            return self
        }
        public var igpUserId:Int64 {
            get {
                return builderResult.igpUserId
            }
            set (value) {
                builderResult.hasIgpUserId = true
                builderResult.igpUserId = value
            }
        }
        public var hasIgpUserId:Bool {
            get {
                return builderResult.hasIgpUserId
            }
        }
        @discardableResult
        public func setIgpUserId(_ value:Int64) -> IGPPushLoginTokenResponse.Builder {
            self.igpUserId = value
            return self
        }
        @discardableResult
        public func clearIgpUserId() -> IGPPushLoginTokenResponse.Builder{
            builderResult.hasIgpUserId = false
            builderResult.igpUserId = nil
            return self
        }
        public var igpAuthorHash:String {
            get {
                return builderResult.igpAuthorHash
            }
            set (value) {
                builderResult.hasIgpAuthorHash = true
                builderResult.igpAuthorHash = value
            }
        }
        public var hasIgpAuthorHash:Bool {
            get {
                return builderResult.hasIgpAuthorHash
            }
        }
        @discardableResult
        public func setIgpAuthorHash(_ value:String) -> IGPPushLoginTokenResponse.Builder {
            self.igpAuthorHash = value
            return self
        }
        @discardableResult
        public func clearIgpAuthorHash() -> IGPPushLoginTokenResponse.Builder{
            builderResult.hasIgpAuthorHash = false
            builderResult.igpAuthorHash = nil
            return self
        }
        public var igpToken:String {
            get {
                return builderResult.igpToken
            }
            set (value) {
                builderResult.hasIgpToken = true
                builderResult.igpToken = value
            }
        }
        public var hasIgpToken:Bool {
            get {
                return builderResult.hasIgpToken
            }
        }
        @discardableResult
        public func setIgpToken(_ value:String) -> IGPPushLoginTokenResponse.Builder {
            self.igpToken = value
            return self
        }
        @discardableResult
        public func clearIgpToken() -> IGPPushLoginTokenResponse.Builder{
            builderResult.hasIgpToken = false
            builderResult.igpToken = nil
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPPushLoginTokenResponse.Builder {
            builderResult = IGPPushLoginTokenResponse()
            return self
        }
        override public func clone() throws -> IGPPushLoginTokenResponse.Builder {
            return try IGPPushLoginTokenResponse.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPPushLoginTokenResponse {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPPushLoginTokenResponse {
            let returnMe:IGPPushLoginTokenResponse = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPPushLoginTokenResponse) throws -> IGPPushLoginTokenResponse.Builder {
            if other == IGPPushLoginTokenResponse() {
                return self
            }
            if (other.hasIgpResponse) {
                try mergeIgpResponse(value: other.igpResponse)
            }
            if other.hasIgpUsername {
                igpUsername = other.igpUsername
            }
            if other.hasIgpUserId {
                igpUserId = other.igpUserId
            }
            if other.hasIgpAuthorHash {
                igpAuthorHash = other.igpAuthorHash
            }
            if other.hasIgpToken {
                igpToken = other.igpToken
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPPushLoginTokenResponse.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPPushLoginTokenResponse.Builder {
            let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
            while (true) {
                let protobufTag = try codedInputStream.readTag()
                switch protobufTag {
                case 0: 
                    self.unknownFields = try unknownFieldsBuilder.build()
                    return self

                case 10:
                    let subBuilder:IGPResponse.Builder = IGPResponse.Builder()
                    if hasIgpResponse {
                        try subBuilder.mergeFrom(other: igpResponse)
                    }
                    try codedInputStream.readMessage(builder: subBuilder, extensionRegistry:extensionRegistry)
                    igpResponse = subBuilder.buildPartial()

                case 18:
                    igpUsername = try codedInputStream.readString()

                case 24:
                    igpUserId = try codedInputStream.readInt64()

                case 34:
                    igpAuthorHash = try codedInputStream.readString()

                case 42:
                    igpToken = try codedInputStream.readString()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPPushLoginTokenResponse.Builder {
            let resultDecodedBuilder = IGPPushLoginTokenResponse.Builder()
            if let jsonValueIgpResponse = jsonMap["IGPResponse"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpResponse = try IGPResponse.Builder.decodeToBuilder(jsonMap:jsonValueIgpResponse).build()

            }
            if let jsonValueIgpUsername = jsonMap["IGPUsername"] as? String {
                resultDecodedBuilder.igpUsername = jsonValueIgpUsername
            }
            if let jsonValueIgpUserId = jsonMap["IGPUserId"] as? String {
                resultDecodedBuilder.igpUserId = Int64(jsonValueIgpUserId)!
            } else if let jsonValueIgpUserId = jsonMap["IGPUserId"] as? Int {
                resultDecodedBuilder.igpUserId = Int64(jsonValueIgpUserId)
            }
            if let jsonValueIgpAuthorHash = jsonMap["IGPAuthorHash"] as? String {
                resultDecodedBuilder.igpAuthorHash = jsonValueIgpAuthorHash
            }
            if let jsonValueIgpToken = jsonMap["IGPToken"] as? String {
                resultDecodedBuilder.igpToken = jsonValueIgpToken
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPPushLoginTokenResponse.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPPushLoginTokenResponse.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension IGPPushLoginTokenResponse: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPPushLoginTokenResponse> {
        var mergedArray = Array<IGPPushLoginTokenResponse>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPPushLoginTokenResponse? {
        return try IGPPushLoginTokenResponse.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPPushLoginTokenResponse {
        return try IGPPushLoginTokenResponse.Builder().mergeFrom(data: data, extensionRegistry:PushLoginTokenRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPPushLoginTokenResponse {
        return try IGPPushLoginTokenResponse.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPPushLoginTokenResponse {
        return try IGPPushLoginTokenResponse.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPPushLoginTokenResponse {
        return try IGPPushLoginTokenResponse.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPPushLoginTokenResponse {
        return try IGPPushLoginTokenResponse.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPPushLoginTokenResponse {
        return try IGPPushLoginTokenResponse.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpResponse": return self.igpResponse
        case "igpUsername": return self.igpUsername
        case "igpUserId": return self.igpUserId
        case "igpAuthorHash": return self.igpAuthorHash
        case "igpToken": return self.igpToken
        default: return nil
        }
    }
}
extension IGPPushLoginTokenResponse.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = IGPPushLoginTokenResponse
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpResponse": return self.igpResponse
            case "igpUsername": return self.igpUsername
            case "igpUserId": return self.igpUserId
            case "igpAuthorHash": return self.igpAuthorHash
            case "igpToken": return self.igpToken
            default: return nil
            }
        }
        set (newSubscriptValue) { 
            switch key {
            case "igpResponse":
                guard let newSubscriptValue = newSubscriptValue as? IGPResponse else {
                    return
                }
                self.igpResponse = newSubscriptValue
            case "igpUsername":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.igpUsername = newSubscriptValue
            case "igpUserId":
                guard let newSubscriptValue = newSubscriptValue as? Int64 else {
                    return
                }
                self.igpUserId = newSubscriptValue
            case "igpAuthorHash":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.igpAuthorHash = newSubscriptValue
            case "igpToken":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.igpToken = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)
