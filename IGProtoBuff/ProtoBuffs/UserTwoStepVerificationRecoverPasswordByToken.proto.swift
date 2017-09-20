/// Generated by the Protocol Buffers 3.4.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.22
/// Source file "UserTwoStepVerificationRecoverPasswordByToken.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct UserTwoStepVerificationRecoverPasswordByTokenRoot {
    public static let `default` = UserTwoStepVerificationRecoverPasswordByTokenRoot()
    public var extensionRegistry:ExtensionRegistry

    init() {
        extensionRegistry = ExtensionRegistry()
        registerAllExtensions(registry: extensionRegistry)
        RequestRoot.default.registerAllExtensions(registry: extensionRegistry)
        ResponseRoot.default.registerAllExtensions(registry: extensionRegistry)
    }
    public func registerAllExtensions(registry: ExtensionRegistry) {
    }
}

final public class IGPUserTwoStepVerificationRecoverPasswordByToken : GeneratedMessage {
    public typealias BuilderType = IGPUserTwoStepVerificationRecoverPasswordByToken.Builder

    public static func == (lhs: IGPUserTwoStepVerificationRecoverPasswordByToken, rhs: IGPUserTwoStepVerificationRecoverPasswordByToken) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpRequest == rhs.hasIgpRequest) && (!lhs.hasIgpRequest || lhs.igpRequest == rhs.igpRequest)
        fieldCheck = fieldCheck && (lhs.hasIgpToken == rhs.hasIgpToken) && (!lhs.hasIgpToken || lhs.igpToken == rhs.igpToken)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpRequest:IGPRequest!
    public fileprivate(set) var hasIgpRequest:Bool = false
    public fileprivate(set) var igpToken:String! = nil
    public fileprivate(set) var hasIgpToken:Bool = false

    required public init() {
        super.init()
    }
    override public func isInitialized() -> Bool {
        return true
    }
    override public func writeTo(codedOutputStream: CodedOutputStream) throws {
        if hasIgpRequest {
            try codedOutputStream.writeMessage(fieldNumber: 1, value:igpRequest)
        }
        if hasIgpToken {
            try codedOutputStream.writeString(fieldNumber: 2, value:igpToken)
        }
        try unknownFields.writeTo(codedOutputStream: codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
        var serialize_size:Int32 = memoizedSerializedSize
        if serialize_size != -1 {
         return serialize_size
        }

        serialize_size = 0
        if hasIgpRequest {
            if let varSizeigpRequest = igpRequest?.computeMessageSize(fieldNumber: 1) {
                serialize_size += varSizeigpRequest
            }
        }
        if hasIgpToken {
            serialize_size += igpToken.computeStringSize(fieldNumber: 2)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPUserTwoStepVerificationRecoverPasswordByToken.Builder {
        return IGPUserTwoStepVerificationRecoverPasswordByToken.classBuilder() as! IGPUserTwoStepVerificationRecoverPasswordByToken.Builder
    }
    public func getBuilder() -> IGPUserTwoStepVerificationRecoverPasswordByToken.Builder {
        return classBuilder() as! IGPUserTwoStepVerificationRecoverPasswordByToken.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserTwoStepVerificationRecoverPasswordByToken.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserTwoStepVerificationRecoverPasswordByToken.Builder()
    }
    public func toBuilder() throws -> IGPUserTwoStepVerificationRecoverPasswordByToken.Builder {
        return try IGPUserTwoStepVerificationRecoverPasswordByToken.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPUserTwoStepVerificationRecoverPasswordByToken) throws -> IGPUserTwoStepVerificationRecoverPasswordByToken.Builder {
        return try IGPUserTwoStepVerificationRecoverPasswordByToken.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpRequest {
            jsonMap["IGPRequest"] = try igpRequest.encode()
        }
        if hasIgpToken {
            jsonMap["IGPToken"] = igpToken
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPUserTwoStepVerificationRecoverPasswordByToken {
        return try IGPUserTwoStepVerificationRecoverPasswordByToken.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPUserTwoStepVerificationRecoverPasswordByToken {
        return try IGPUserTwoStepVerificationRecoverPasswordByToken.Builder.fromJSONToBuilder(data:data).build()
    }
    override public func getDescription(indent:String) throws -> String {
        var output = ""
        if hasIgpRequest {
            output += "\(indent) igpRequest {\n"
            if let outDescIgpRequest = igpRequest {
                output += try outDescIgpRequest.getDescription(indent: "\(indent)  ")
            }
            output += "\(indent) }\n"
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
            if hasIgpRequest {
                if let hashValueigpRequest = igpRequest?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValueigpRequest
                }
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
        return "IGPUserTwoStepVerificationRecoverPasswordByToken"
    }
    override public func className() -> String {
        return "IGPUserTwoStepVerificationRecoverPasswordByToken"
    }
    //Meta information declaration end

    final public class Builder : GeneratedRequestMessageBuilder {
        fileprivate var builderResult:IGPUserTwoStepVerificationRecoverPasswordByToken = IGPUserTwoStepVerificationRecoverPasswordByToken()
        public func getMessage() -> IGPUserTwoStepVerificationRecoverPasswordByToken {
            return builderResult
        }

        required override public init () {
            super.init()
        }
        public var igpRequest:IGPRequest! {
            get {
                if igpRequestBuilder_ != nil {
                    builderResult.igpRequest = igpRequestBuilder_.getMessage()
                }
                return builderResult.igpRequest
            }
            set (value) {
                builderResult.hasIgpRequest = true
                builderResult.igpRequest = value
            }
        }
        public var hasIgpRequest:Bool {
            get {
                return builderResult.hasIgpRequest
            }
        }
        fileprivate var igpRequestBuilder_:IGPRequest.Builder! {
            didSet {
                builderResult.hasIgpRequest = true
            }
        }
        public func getIgpRequestBuilder() -> IGPRequest.Builder {
            if igpRequestBuilder_ == nil {
                igpRequestBuilder_ = IGPRequest.Builder()
                builderResult.igpRequest = igpRequestBuilder_.getMessage()
                if igpRequest != nil {
                    try! igpRequestBuilder_.mergeFrom(other: igpRequest)
                }
            }
            return igpRequestBuilder_
        }
        @discardableResult
        public override func setIgpRequest(_ value:IGPRequest!) -> IGPUserTwoStepVerificationRecoverPasswordByToken.Builder {
            self.igpRequest = value
            return self
        }
        @discardableResult
        public func mergeIgpRequest(value:IGPRequest) throws -> IGPUserTwoStepVerificationRecoverPasswordByToken.Builder {
            if builderResult.hasIgpRequest {
                builderResult.igpRequest = try IGPRequest.builderWithPrototype(prototype:builderResult.igpRequest).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpRequest = value
            }
            builderResult.hasIgpRequest = true
            return self
        }
        @discardableResult
        public func clearIgpRequest() -> IGPUserTwoStepVerificationRecoverPasswordByToken.Builder {
            igpRequestBuilder_ = nil
            builderResult.hasIgpRequest = false
            builderResult.igpRequest = nil
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
        public func setIgpToken(_ value:String) -> IGPUserTwoStepVerificationRecoverPasswordByToken.Builder {
            self.igpToken = value
            return self
        }
        @discardableResult
        public func clearIgpToken() -> IGPUserTwoStepVerificationRecoverPasswordByToken.Builder{
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
        override public func clear() -> IGPUserTwoStepVerificationRecoverPasswordByToken.Builder {
            builderResult = IGPUserTwoStepVerificationRecoverPasswordByToken()
            return self
        }
        override public func clone() throws -> IGPUserTwoStepVerificationRecoverPasswordByToken.Builder {
            return try IGPUserTwoStepVerificationRecoverPasswordByToken.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPUserTwoStepVerificationRecoverPasswordByToken {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPUserTwoStepVerificationRecoverPasswordByToken {
            let returnMe:IGPUserTwoStepVerificationRecoverPasswordByToken = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPUserTwoStepVerificationRecoverPasswordByToken) throws -> IGPUserTwoStepVerificationRecoverPasswordByToken.Builder {
            if other == IGPUserTwoStepVerificationRecoverPasswordByToken() {
                return self
            }
            if (other.hasIgpRequest) {
                try mergeIgpRequest(value: other.igpRequest)
            }
            if other.hasIgpToken {
                igpToken = other.igpToken
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPUserTwoStepVerificationRecoverPasswordByToken.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationRecoverPasswordByToken.Builder {
            let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
            while (true) {
                let protobufTag = try codedInputStream.readTag()
                switch protobufTag {
                case 0: 
                    self.unknownFields = try unknownFieldsBuilder.build()
                    return self

                case 10:
                    let subBuilder:IGPRequest.Builder = IGPRequest.Builder()
                    if hasIgpRequest {
                        try subBuilder.mergeFrom(other: igpRequest)
                    }
                    try codedInputStream.readMessage(builder: subBuilder, extensionRegistry:extensionRegistry)
                    igpRequest = subBuilder.buildPartial()

                case 18:
                    igpToken = try codedInputStream.readString()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPUserTwoStepVerificationRecoverPasswordByToken.Builder {
            let resultDecodedBuilder = IGPUserTwoStepVerificationRecoverPasswordByToken.Builder()
            if let jsonValueIgpRequest = jsonMap["IGPRequest"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpRequest = try IGPRequest.Builder.decodeToBuilder(jsonMap:jsonValueIgpRequest).build()

            }
            if let jsonValueIgpToken = jsonMap["IGPToken"] as? String {
                resultDecodedBuilder.igpToken = jsonValueIgpToken
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPUserTwoStepVerificationRecoverPasswordByToken.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPUserTwoStepVerificationRecoverPasswordByToken.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

final public class IGPUserTwoStepVerificationRecoverPasswordByTokenResponse : GeneratedResponseMessage {
    public typealias BuilderType = IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder

    public static func == (lhs: IGPUserTwoStepVerificationRecoverPasswordByTokenResponse, rhs: IGPUserTwoStepVerificationRecoverPasswordByTokenResponse) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpResponse == rhs.hasIgpResponse) && (!lhs.hasIgpResponse || lhs.igpResponse == rhs.igpResponse)
        fieldCheck = fieldCheck && (lhs.hasIgpToken == rhs.hasIgpToken) && (!lhs.hasIgpToken || lhs.igpToken == rhs.igpToken)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

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
        if hasIgpToken {
            try codedOutputStream.writeString(fieldNumber: 2, value:igpToken)
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
        if hasIgpToken {
            serialize_size += igpToken.computeStringSize(fieldNumber: 2)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder {
        return IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.classBuilder() as! IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder
    }
    public func getBuilder() -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder {
        return classBuilder() as! IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder()
    }
    public func toBuilder() throws -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder {
        return try IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPUserTwoStepVerificationRecoverPasswordByTokenResponse) throws -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder {
        return try IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpResponse {
            jsonMap["IGPResponse"] = try igpResponse.encode()
        }
        if hasIgpToken {
            jsonMap["IGPToken"] = igpToken
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse {
        return try IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse {
        return try IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder.fromJSONToBuilder(data:data).build()
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
            if hasIgpToken {
                hashCode = (hashCode &* 31) &+ igpToken.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPUserTwoStepVerificationRecoverPasswordByTokenResponse"
    }
    override public func className() -> String {
        return "IGPUserTwoStepVerificationRecoverPasswordByTokenResponse"
    }
    //Meta information declaration end

    final public class Builder : GeneratedResponseMessageBuilder {
        fileprivate var builderResult:IGPUserTwoStepVerificationRecoverPasswordByTokenResponse = IGPUserTwoStepVerificationRecoverPasswordByTokenResponse()
        public func getMessage() -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse {
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
        public func setIgpResponse(_ value:IGPResponse!) -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder {
            self.igpResponse = value
            return self
        }
        @discardableResult
        public func mergeIgpResponse(value:IGPResponse) throws -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder {
            if builderResult.hasIgpResponse {
                builderResult.igpResponse = try IGPResponse.builderWithPrototype(prototype:builderResult.igpResponse).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpResponse = value
            }
            builderResult.hasIgpResponse = true
            return self
        }
        @discardableResult
        public func clearIgpResponse() -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder {
            igpResponseBuilder_ = nil
            builderResult.hasIgpResponse = false
            builderResult.igpResponse = nil
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
        public func setIgpToken(_ value:String) -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder {
            self.igpToken = value
            return self
        }
        @discardableResult
        public func clearIgpToken() -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder{
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
        override public func clear() -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder {
            builderResult = IGPUserTwoStepVerificationRecoverPasswordByTokenResponse()
            return self
        }
        override public func clone() throws -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder {
            return try IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse {
            let returnMe:IGPUserTwoStepVerificationRecoverPasswordByTokenResponse = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPUserTwoStepVerificationRecoverPasswordByTokenResponse) throws -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder {
            if other == IGPUserTwoStepVerificationRecoverPasswordByTokenResponse() {
                return self
            }
            if (other.hasIgpResponse) {
                try mergeIgpResponse(value: other.igpResponse)
            }
            if other.hasIgpToken {
                igpToken = other.igpToken
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder {
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
                    igpToken = try codedInputStream.readString()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder {
            let resultDecodedBuilder = IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder()
            if let jsonValueIgpResponse = jsonMap["IGPResponse"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpResponse = try IGPResponse.Builder.decodeToBuilder(jsonMap:jsonValueIgpResponse).build()

            }
            if let jsonValueIgpToken = jsonMap["IGPToken"] as? String {
                resultDecodedBuilder.igpToken = jsonValueIgpToken
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension IGPUserTwoStepVerificationRecoverPasswordByToken: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPUserTwoStepVerificationRecoverPasswordByToken> {
        var mergedArray = Array<IGPUserTwoStepVerificationRecoverPasswordByToken>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPUserTwoStepVerificationRecoverPasswordByToken? {
        return try IGPUserTwoStepVerificationRecoverPasswordByToken.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPUserTwoStepVerificationRecoverPasswordByToken {
        return try IGPUserTwoStepVerificationRecoverPasswordByToken.Builder().mergeFrom(data: data, extensionRegistry:UserTwoStepVerificationRecoverPasswordByTokenRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationRecoverPasswordByToken {
        return try IGPUserTwoStepVerificationRecoverPasswordByToken.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPUserTwoStepVerificationRecoverPasswordByToken {
        return try IGPUserTwoStepVerificationRecoverPasswordByToken.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationRecoverPasswordByToken {
        return try IGPUserTwoStepVerificationRecoverPasswordByToken.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPUserTwoStepVerificationRecoverPasswordByToken {
        return try IGPUserTwoStepVerificationRecoverPasswordByToken.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationRecoverPasswordByToken {
        return try IGPUserTwoStepVerificationRecoverPasswordByToken.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpRequest": return self.igpRequest
        case "igpToken": return self.igpToken
        default: return nil
        }
    }
}
extension IGPUserTwoStepVerificationRecoverPasswordByToken.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = IGPUserTwoStepVerificationRecoverPasswordByToken
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpRequest": return self.igpRequest
            case "igpToken": return self.igpToken
            default: return nil
            }
        }
        set (newSubscriptValue) { 
            switch key {
            case "igpRequest":
                guard let newSubscriptValue = newSubscriptValue as? IGPRequest else {
                    return
                }
                self.igpRequest = newSubscriptValue
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
extension IGPUserTwoStepVerificationRecoverPasswordByTokenResponse: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPUserTwoStepVerificationRecoverPasswordByTokenResponse> {
        var mergedArray = Array<IGPUserTwoStepVerificationRecoverPasswordByTokenResponse>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse? {
        return try IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse {
        return try IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder().mergeFrom(data: data, extensionRegistry:UserTwoStepVerificationRecoverPasswordByTokenRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse {
        return try IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse {
        return try IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse {
        return try IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse {
        return try IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationRecoverPasswordByTokenResponse {
        return try IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpResponse": return self.igpResponse
        case "igpToken": return self.igpToken
        default: return nil
        }
    }
}
extension IGPUserTwoStepVerificationRecoverPasswordByTokenResponse.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = IGPUserTwoStepVerificationRecoverPasswordByTokenResponse
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpResponse": return self.igpResponse
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
