/// Generated by the Protocol Buffers 3.4.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.22
/// Source file "UserTwoStepVerificationUnsetPassword.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct UserTwoStepVerificationUnsetPasswordRoot {
    public static let `default` = UserTwoStepVerificationUnsetPasswordRoot()
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

final public class IGPUserTwoStepVerificationUnsetPassword : GeneratedMessage {
    public typealias BuilderType = IGPUserTwoStepVerificationUnsetPassword.Builder

    public static func == (lhs: IGPUserTwoStepVerificationUnsetPassword, rhs: IGPUserTwoStepVerificationUnsetPassword) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpRequest == rhs.hasIgpRequest) && (!lhs.hasIgpRequest || lhs.igpRequest == rhs.igpRequest)
        fieldCheck = fieldCheck && (lhs.hasIgpPassword == rhs.hasIgpPassword) && (!lhs.hasIgpPassword || lhs.igpPassword == rhs.igpPassword)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpRequest:IGPRequest!
    public fileprivate(set) var hasIgpRequest:Bool = false
    public fileprivate(set) var igpPassword:String! = nil
    public fileprivate(set) var hasIgpPassword:Bool = false

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
        if hasIgpPassword {
            try codedOutputStream.writeString(fieldNumber: 2, value:igpPassword)
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
        if hasIgpPassword {
            serialize_size += igpPassword.computeStringSize(fieldNumber: 2)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPUserTwoStepVerificationUnsetPassword.Builder {
        return IGPUserTwoStepVerificationUnsetPassword.classBuilder() as! IGPUserTwoStepVerificationUnsetPassword.Builder
    }
    public func getBuilder() -> IGPUserTwoStepVerificationUnsetPassword.Builder {
        return classBuilder() as! IGPUserTwoStepVerificationUnsetPassword.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserTwoStepVerificationUnsetPassword.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserTwoStepVerificationUnsetPassword.Builder()
    }
    public func toBuilder() throws -> IGPUserTwoStepVerificationUnsetPassword.Builder {
        return try IGPUserTwoStepVerificationUnsetPassword.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPUserTwoStepVerificationUnsetPassword) throws -> IGPUserTwoStepVerificationUnsetPassword.Builder {
        return try IGPUserTwoStepVerificationUnsetPassword.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpRequest {
            jsonMap["IGPRequest"] = try igpRequest.encode()
        }
        if hasIgpPassword {
            jsonMap["IGPPassword"] = igpPassword
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPUserTwoStepVerificationUnsetPassword {
        return try IGPUserTwoStepVerificationUnsetPassword.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPUserTwoStepVerificationUnsetPassword {
        return try IGPUserTwoStepVerificationUnsetPassword.Builder.fromJSONToBuilder(data:data).build()
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
        if hasIgpPassword {
            output += "\(indent) igpPassword: \(igpPassword) \n"
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
            if hasIgpPassword {
                hashCode = (hashCode &* 31) &+ igpPassword.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPUserTwoStepVerificationUnsetPassword"
    }
    override public func className() -> String {
        return "IGPUserTwoStepVerificationUnsetPassword"
    }
    //Meta information declaration end

    final public class Builder : GeneratedRequestMessageBuilder {
        fileprivate var builderResult:IGPUserTwoStepVerificationUnsetPassword = IGPUserTwoStepVerificationUnsetPassword()
        public func getMessage() -> IGPUserTwoStepVerificationUnsetPassword {
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
        public override func setIgpRequest(_ value:IGPRequest!) -> IGPUserTwoStepVerificationUnsetPassword.Builder {
            self.igpRequest = value
            return self
        }
        @discardableResult
        public func mergeIgpRequest(value:IGPRequest) throws -> IGPUserTwoStepVerificationUnsetPassword.Builder {
            if builderResult.hasIgpRequest {
                builderResult.igpRequest = try IGPRequest.builderWithPrototype(prototype:builderResult.igpRequest).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpRequest = value
            }
            builderResult.hasIgpRequest = true
            return self
        }
        @discardableResult
        public func clearIgpRequest() -> IGPUserTwoStepVerificationUnsetPassword.Builder {
            igpRequestBuilder_ = nil
            builderResult.hasIgpRequest = false
            builderResult.igpRequest = nil
            return self
        }
        public var igpPassword:String {
            get {
                return builderResult.igpPassword
            }
            set (value) {
                builderResult.hasIgpPassword = true
                builderResult.igpPassword = value
            }
        }
        public var hasIgpPassword:Bool {
            get {
                return builderResult.hasIgpPassword
            }
        }
        @discardableResult
        public func setIgpPassword(_ value:String) -> IGPUserTwoStepVerificationUnsetPassword.Builder {
            self.igpPassword = value
            return self
        }
        @discardableResult
        public func clearIgpPassword() -> IGPUserTwoStepVerificationUnsetPassword.Builder{
            builderResult.hasIgpPassword = false
            builderResult.igpPassword = nil
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPUserTwoStepVerificationUnsetPassword.Builder {
            builderResult = IGPUserTwoStepVerificationUnsetPassword()
            return self
        }
        override public func clone() throws -> IGPUserTwoStepVerificationUnsetPassword.Builder {
            return try IGPUserTwoStepVerificationUnsetPassword.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPUserTwoStepVerificationUnsetPassword {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPUserTwoStepVerificationUnsetPassword {
            let returnMe:IGPUserTwoStepVerificationUnsetPassword = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPUserTwoStepVerificationUnsetPassword) throws -> IGPUserTwoStepVerificationUnsetPassword.Builder {
            if other == IGPUserTwoStepVerificationUnsetPassword() {
                return self
            }
            if (other.hasIgpRequest) {
                try mergeIgpRequest(value: other.igpRequest)
            }
            if other.hasIgpPassword {
                igpPassword = other.igpPassword
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPUserTwoStepVerificationUnsetPassword.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationUnsetPassword.Builder {
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
                    igpPassword = try codedInputStream.readString()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPUserTwoStepVerificationUnsetPassword.Builder {
            let resultDecodedBuilder = IGPUserTwoStepVerificationUnsetPassword.Builder()
            if let jsonValueIgpRequest = jsonMap["IGPRequest"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpRequest = try IGPRequest.Builder.decodeToBuilder(jsonMap:jsonValueIgpRequest).build()

            }
            if let jsonValueIgpPassword = jsonMap["IGPPassword"] as? String {
                resultDecodedBuilder.igpPassword = jsonValueIgpPassword
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPUserTwoStepVerificationUnsetPassword.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPUserTwoStepVerificationUnsetPassword.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

final public class IGPUserTwoStepVerificationUnsetPasswordResponse : GeneratedResponseMessage {
    public typealias BuilderType = IGPUserTwoStepVerificationUnsetPasswordResponse.Builder

    public static func == (lhs: IGPUserTwoStepVerificationUnsetPasswordResponse, rhs: IGPUserTwoStepVerificationUnsetPasswordResponse) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpResponse == rhs.hasIgpResponse) && (!lhs.hasIgpResponse || lhs.igpResponse == rhs.igpResponse)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

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
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPUserTwoStepVerificationUnsetPasswordResponse.Builder {
        return IGPUserTwoStepVerificationUnsetPasswordResponse.classBuilder() as! IGPUserTwoStepVerificationUnsetPasswordResponse.Builder
    }
    public func getBuilder() -> IGPUserTwoStepVerificationUnsetPasswordResponse.Builder {
        return classBuilder() as! IGPUserTwoStepVerificationUnsetPasswordResponse.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserTwoStepVerificationUnsetPasswordResponse.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserTwoStepVerificationUnsetPasswordResponse.Builder()
    }
    public func toBuilder() throws -> IGPUserTwoStepVerificationUnsetPasswordResponse.Builder {
        return try IGPUserTwoStepVerificationUnsetPasswordResponse.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPUserTwoStepVerificationUnsetPasswordResponse) throws -> IGPUserTwoStepVerificationUnsetPasswordResponse.Builder {
        return try IGPUserTwoStepVerificationUnsetPasswordResponse.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpResponse {
            jsonMap["IGPResponse"] = try igpResponse.encode()
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPUserTwoStepVerificationUnsetPasswordResponse {
        return try IGPUserTwoStepVerificationUnsetPasswordResponse.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPUserTwoStepVerificationUnsetPasswordResponse {
        return try IGPUserTwoStepVerificationUnsetPasswordResponse.Builder.fromJSONToBuilder(data:data).build()
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
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPUserTwoStepVerificationUnsetPasswordResponse"
    }
    override public func className() -> String {
        return "IGPUserTwoStepVerificationUnsetPasswordResponse"
    }
    //Meta information declaration end

    final public class Builder : GeneratedResponseMessageBuilder {
        fileprivate var builderResult:IGPUserTwoStepVerificationUnsetPasswordResponse = IGPUserTwoStepVerificationUnsetPasswordResponse()
        public func getMessage() -> IGPUserTwoStepVerificationUnsetPasswordResponse {
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
        public func setIgpResponse(_ value:IGPResponse!) -> IGPUserTwoStepVerificationUnsetPasswordResponse.Builder {
            self.igpResponse = value
            return self
        }
        @discardableResult
        public func mergeIgpResponse(value:IGPResponse) throws -> IGPUserTwoStepVerificationUnsetPasswordResponse.Builder {
            if builderResult.hasIgpResponse {
                builderResult.igpResponse = try IGPResponse.builderWithPrototype(prototype:builderResult.igpResponse).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpResponse = value
            }
            builderResult.hasIgpResponse = true
            return self
        }
        @discardableResult
        public func clearIgpResponse() -> IGPUserTwoStepVerificationUnsetPasswordResponse.Builder {
            igpResponseBuilder_ = nil
            builderResult.hasIgpResponse = false
            builderResult.igpResponse = nil
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPUserTwoStepVerificationUnsetPasswordResponse.Builder {
            builderResult = IGPUserTwoStepVerificationUnsetPasswordResponse()
            return self
        }
        override public func clone() throws -> IGPUserTwoStepVerificationUnsetPasswordResponse.Builder {
            return try IGPUserTwoStepVerificationUnsetPasswordResponse.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPUserTwoStepVerificationUnsetPasswordResponse {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPUserTwoStepVerificationUnsetPasswordResponse {
            let returnMe:IGPUserTwoStepVerificationUnsetPasswordResponse = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPUserTwoStepVerificationUnsetPasswordResponse) throws -> IGPUserTwoStepVerificationUnsetPasswordResponse.Builder {
            if other == IGPUserTwoStepVerificationUnsetPasswordResponse() {
                return self
            }
            if (other.hasIgpResponse) {
                try mergeIgpResponse(value: other.igpResponse)
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPUserTwoStepVerificationUnsetPasswordResponse.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationUnsetPasswordResponse.Builder {
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

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPUserTwoStepVerificationUnsetPasswordResponse.Builder {
            let resultDecodedBuilder = IGPUserTwoStepVerificationUnsetPasswordResponse.Builder()
            if let jsonValueIgpResponse = jsonMap["IGPResponse"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpResponse = try IGPResponse.Builder.decodeToBuilder(jsonMap:jsonValueIgpResponse).build()

            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPUserTwoStepVerificationUnsetPasswordResponse.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPUserTwoStepVerificationUnsetPasswordResponse.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension IGPUserTwoStepVerificationUnsetPassword: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPUserTwoStepVerificationUnsetPassword> {
        var mergedArray = Array<IGPUserTwoStepVerificationUnsetPassword>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPUserTwoStepVerificationUnsetPassword? {
        return try IGPUserTwoStepVerificationUnsetPassword.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPUserTwoStepVerificationUnsetPassword {
        return try IGPUserTwoStepVerificationUnsetPassword.Builder().mergeFrom(data: data, extensionRegistry:UserTwoStepVerificationUnsetPasswordRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationUnsetPassword {
        return try IGPUserTwoStepVerificationUnsetPassword.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPUserTwoStepVerificationUnsetPassword {
        return try IGPUserTwoStepVerificationUnsetPassword.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationUnsetPassword {
        return try IGPUserTwoStepVerificationUnsetPassword.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPUserTwoStepVerificationUnsetPassword {
        return try IGPUserTwoStepVerificationUnsetPassword.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationUnsetPassword {
        return try IGPUserTwoStepVerificationUnsetPassword.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpRequest": return self.igpRequest
        case "igpPassword": return self.igpPassword
        default: return nil
        }
    }
}
extension IGPUserTwoStepVerificationUnsetPassword.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = IGPUserTwoStepVerificationUnsetPassword
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpRequest": return self.igpRequest
            case "igpPassword": return self.igpPassword
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
            case "igpPassword":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.igpPassword = newSubscriptValue
            default: return
            }
        }
    }
}
extension IGPUserTwoStepVerificationUnsetPasswordResponse: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPUserTwoStepVerificationUnsetPasswordResponse> {
        var mergedArray = Array<IGPUserTwoStepVerificationUnsetPasswordResponse>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPUserTwoStepVerificationUnsetPasswordResponse? {
        return try IGPUserTwoStepVerificationUnsetPasswordResponse.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPUserTwoStepVerificationUnsetPasswordResponse {
        return try IGPUserTwoStepVerificationUnsetPasswordResponse.Builder().mergeFrom(data: data, extensionRegistry:UserTwoStepVerificationUnsetPasswordRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationUnsetPasswordResponse {
        return try IGPUserTwoStepVerificationUnsetPasswordResponse.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPUserTwoStepVerificationUnsetPasswordResponse {
        return try IGPUserTwoStepVerificationUnsetPasswordResponse.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationUnsetPasswordResponse {
        return try IGPUserTwoStepVerificationUnsetPasswordResponse.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPUserTwoStepVerificationUnsetPasswordResponse {
        return try IGPUserTwoStepVerificationUnsetPasswordResponse.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationUnsetPasswordResponse {
        return try IGPUserTwoStepVerificationUnsetPasswordResponse.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpResponse": return self.igpResponse
        default: return nil
        }
    }
}
extension IGPUserTwoStepVerificationUnsetPasswordResponse.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = IGPUserTwoStepVerificationUnsetPasswordResponse
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpResponse": return self.igpResponse
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
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)
