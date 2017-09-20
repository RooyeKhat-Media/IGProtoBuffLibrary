/// Generated by the Protocol Buffers 3.4.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.22
/// Source file "UserTwoStepVerificationChangeRecoveryEmail.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct UserTwoStepVerificationChangeRecoveryEmailRoot {
    public static let `default` = UserTwoStepVerificationChangeRecoveryEmailRoot()
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

final public class IGPUserTwoStepVerificationChangeRecoveryEmail : GeneratedMessage {
    public typealias BuilderType = IGPUserTwoStepVerificationChangeRecoveryEmail.Builder

    public static func == (lhs: IGPUserTwoStepVerificationChangeRecoveryEmail, rhs: IGPUserTwoStepVerificationChangeRecoveryEmail) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpRequest == rhs.hasIgpRequest) && (!lhs.hasIgpRequest || lhs.igpRequest == rhs.igpRequest)
        fieldCheck = fieldCheck && (lhs.hasIgpPassword == rhs.hasIgpPassword) && (!lhs.hasIgpPassword || lhs.igpPassword == rhs.igpPassword)
        fieldCheck = fieldCheck && (lhs.hasIgpEmail == rhs.hasIgpEmail) && (!lhs.hasIgpEmail || lhs.igpEmail == rhs.igpEmail)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpRequest:IGPRequest!
    public fileprivate(set) var hasIgpRequest:Bool = false
    public fileprivate(set) var igpPassword:String! = nil
    public fileprivate(set) var hasIgpPassword:Bool = false

    public fileprivate(set) var igpEmail:String! = nil
    public fileprivate(set) var hasIgpEmail:Bool = false

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
        if hasIgpEmail {
            try codedOutputStream.writeString(fieldNumber: 3, value:igpEmail)
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
        if hasIgpEmail {
            serialize_size += igpEmail.computeStringSize(fieldNumber: 3)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPUserTwoStepVerificationChangeRecoveryEmail.Builder {
        return IGPUserTwoStepVerificationChangeRecoveryEmail.classBuilder() as! IGPUserTwoStepVerificationChangeRecoveryEmail.Builder
    }
    public func getBuilder() -> IGPUserTwoStepVerificationChangeRecoveryEmail.Builder {
        return classBuilder() as! IGPUserTwoStepVerificationChangeRecoveryEmail.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserTwoStepVerificationChangeRecoveryEmail.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserTwoStepVerificationChangeRecoveryEmail.Builder()
    }
    public func toBuilder() throws -> IGPUserTwoStepVerificationChangeRecoveryEmail.Builder {
        return try IGPUserTwoStepVerificationChangeRecoveryEmail.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPUserTwoStepVerificationChangeRecoveryEmail) throws -> IGPUserTwoStepVerificationChangeRecoveryEmail.Builder {
        return try IGPUserTwoStepVerificationChangeRecoveryEmail.Builder().mergeFrom(other:prototype)
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
        if hasIgpEmail {
            jsonMap["IGPEmail"] = igpEmail
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPUserTwoStepVerificationChangeRecoveryEmail {
        return try IGPUserTwoStepVerificationChangeRecoveryEmail.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPUserTwoStepVerificationChangeRecoveryEmail {
        return try IGPUserTwoStepVerificationChangeRecoveryEmail.Builder.fromJSONToBuilder(data:data).build()
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
        if hasIgpEmail {
            output += "\(indent) igpEmail: \(igpEmail) \n"
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
            if hasIgpEmail {
                hashCode = (hashCode &* 31) &+ igpEmail.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPUserTwoStepVerificationChangeRecoveryEmail"
    }
    override public func className() -> String {
        return "IGPUserTwoStepVerificationChangeRecoveryEmail"
    }
    //Meta information declaration end

    final public class Builder : GeneratedRequestMessageBuilder {
        fileprivate var builderResult:IGPUserTwoStepVerificationChangeRecoveryEmail = IGPUserTwoStepVerificationChangeRecoveryEmail()
        public func getMessage() -> IGPUserTwoStepVerificationChangeRecoveryEmail {
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
        public override func setIgpRequest(_ value:IGPRequest!) -> IGPUserTwoStepVerificationChangeRecoveryEmail.Builder {
            self.igpRequest = value
            return self
        }
        @discardableResult
        public func mergeIgpRequest(value:IGPRequest) throws -> IGPUserTwoStepVerificationChangeRecoveryEmail.Builder {
            if builderResult.hasIgpRequest {
                builderResult.igpRequest = try IGPRequest.builderWithPrototype(prototype:builderResult.igpRequest).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpRequest = value
            }
            builderResult.hasIgpRequest = true
            return self
        }
        @discardableResult
        public func clearIgpRequest() -> IGPUserTwoStepVerificationChangeRecoveryEmail.Builder {
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
        public func setIgpPassword(_ value:String) -> IGPUserTwoStepVerificationChangeRecoveryEmail.Builder {
            self.igpPassword = value
            return self
        }
        @discardableResult
        public func clearIgpPassword() -> IGPUserTwoStepVerificationChangeRecoveryEmail.Builder{
            builderResult.hasIgpPassword = false
            builderResult.igpPassword = nil
            return self
        }
        public var igpEmail:String {
            get {
                return builderResult.igpEmail
            }
            set (value) {
                builderResult.hasIgpEmail = true
                builderResult.igpEmail = value
            }
        }
        public var hasIgpEmail:Bool {
            get {
                return builderResult.hasIgpEmail
            }
        }
        @discardableResult
        public func setIgpEmail(_ value:String) -> IGPUserTwoStepVerificationChangeRecoveryEmail.Builder {
            self.igpEmail = value
            return self
        }
        @discardableResult
        public func clearIgpEmail() -> IGPUserTwoStepVerificationChangeRecoveryEmail.Builder{
            builderResult.hasIgpEmail = false
            builderResult.igpEmail = nil
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPUserTwoStepVerificationChangeRecoveryEmail.Builder {
            builderResult = IGPUserTwoStepVerificationChangeRecoveryEmail()
            return self
        }
        override public func clone() throws -> IGPUserTwoStepVerificationChangeRecoveryEmail.Builder {
            return try IGPUserTwoStepVerificationChangeRecoveryEmail.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPUserTwoStepVerificationChangeRecoveryEmail {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPUserTwoStepVerificationChangeRecoveryEmail {
            let returnMe:IGPUserTwoStepVerificationChangeRecoveryEmail = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPUserTwoStepVerificationChangeRecoveryEmail) throws -> IGPUserTwoStepVerificationChangeRecoveryEmail.Builder {
            if other == IGPUserTwoStepVerificationChangeRecoveryEmail() {
                return self
            }
            if (other.hasIgpRequest) {
                try mergeIgpRequest(value: other.igpRequest)
            }
            if other.hasIgpPassword {
                igpPassword = other.igpPassword
            }
            if other.hasIgpEmail {
                igpEmail = other.igpEmail
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPUserTwoStepVerificationChangeRecoveryEmail.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationChangeRecoveryEmail.Builder {
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

                case 26:
                    igpEmail = try codedInputStream.readString()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPUserTwoStepVerificationChangeRecoveryEmail.Builder {
            let resultDecodedBuilder = IGPUserTwoStepVerificationChangeRecoveryEmail.Builder()
            if let jsonValueIgpRequest = jsonMap["IGPRequest"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpRequest = try IGPRequest.Builder.decodeToBuilder(jsonMap:jsonValueIgpRequest).build()

            }
            if let jsonValueIgpPassword = jsonMap["IGPPassword"] as? String {
                resultDecodedBuilder.igpPassword = jsonValueIgpPassword
            }
            if let jsonValueIgpEmail = jsonMap["IGPEmail"] as? String {
                resultDecodedBuilder.igpEmail = jsonValueIgpEmail
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPUserTwoStepVerificationChangeRecoveryEmail.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPUserTwoStepVerificationChangeRecoveryEmail.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

final public class IGPUserTwoStepVerificationChangeRecoveryEmailResponse : GeneratedResponseMessage {
    public typealias BuilderType = IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder

    public static func == (lhs: IGPUserTwoStepVerificationChangeRecoveryEmailResponse, rhs: IGPUserTwoStepVerificationChangeRecoveryEmailResponse) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpResponse == rhs.hasIgpResponse) && (!lhs.hasIgpResponse || lhs.igpResponse == rhs.igpResponse)
        fieldCheck = fieldCheck && (lhs.hasIgpUnconfirmedEmailPattern == rhs.hasIgpUnconfirmedEmailPattern) && (!lhs.hasIgpUnconfirmedEmailPattern || lhs.igpUnconfirmedEmailPattern == rhs.igpUnconfirmedEmailPattern)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpUnconfirmedEmailPattern:String! = nil
    public fileprivate(set) var hasIgpUnconfirmedEmailPattern:Bool = false

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
        if hasIgpUnconfirmedEmailPattern {
            try codedOutputStream.writeString(fieldNumber: 2, value:igpUnconfirmedEmailPattern)
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
        if hasIgpUnconfirmedEmailPattern {
            serialize_size += igpUnconfirmedEmailPattern.computeStringSize(fieldNumber: 2)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder {
        return IGPUserTwoStepVerificationChangeRecoveryEmailResponse.classBuilder() as! IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder
    }
    public func getBuilder() -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder {
        return classBuilder() as! IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder()
    }
    public func toBuilder() throws -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder {
        return try IGPUserTwoStepVerificationChangeRecoveryEmailResponse.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPUserTwoStepVerificationChangeRecoveryEmailResponse) throws -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder {
        return try IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpResponse {
            jsonMap["IGPResponse"] = try igpResponse.encode()
        }
        if hasIgpUnconfirmedEmailPattern {
            jsonMap["IGPUnconfirmedEmailPattern"] = igpUnconfirmedEmailPattern
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse {
        return try IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse {
        return try IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder.fromJSONToBuilder(data:data).build()
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
        if hasIgpUnconfirmedEmailPattern {
            output += "\(indent) igpUnconfirmedEmailPattern: \(igpUnconfirmedEmailPattern) \n"
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
            if hasIgpUnconfirmedEmailPattern {
                hashCode = (hashCode &* 31) &+ igpUnconfirmedEmailPattern.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPUserTwoStepVerificationChangeRecoveryEmailResponse"
    }
    override public func className() -> String {
        return "IGPUserTwoStepVerificationChangeRecoveryEmailResponse"
    }
    //Meta information declaration end

    final public class Builder : GeneratedResponseMessageBuilder {
        fileprivate var builderResult:IGPUserTwoStepVerificationChangeRecoveryEmailResponse = IGPUserTwoStepVerificationChangeRecoveryEmailResponse()
        public func getMessage() -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse {
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
        public func setIgpResponse(_ value:IGPResponse!) -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder {
            self.igpResponse = value
            return self
        }
        @discardableResult
        public func mergeIgpResponse(value:IGPResponse) throws -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder {
            if builderResult.hasIgpResponse {
                builderResult.igpResponse = try IGPResponse.builderWithPrototype(prototype:builderResult.igpResponse).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpResponse = value
            }
            builderResult.hasIgpResponse = true
            return self
        }
        @discardableResult
        public func clearIgpResponse() -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder {
            igpResponseBuilder_ = nil
            builderResult.hasIgpResponse = false
            builderResult.igpResponse = nil
            return self
        }
        public var igpUnconfirmedEmailPattern:String {
            get {
                return builderResult.igpUnconfirmedEmailPattern
            }
            set (value) {
                builderResult.hasIgpUnconfirmedEmailPattern = true
                builderResult.igpUnconfirmedEmailPattern = value
            }
        }
        public var hasIgpUnconfirmedEmailPattern:Bool {
            get {
                return builderResult.hasIgpUnconfirmedEmailPattern
            }
        }
        @discardableResult
        public func setIgpUnconfirmedEmailPattern(_ value:String) -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder {
            self.igpUnconfirmedEmailPattern = value
            return self
        }
        @discardableResult
        public func clearIgpUnconfirmedEmailPattern() -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder{
            builderResult.hasIgpUnconfirmedEmailPattern = false
            builderResult.igpUnconfirmedEmailPattern = nil
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder {
            builderResult = IGPUserTwoStepVerificationChangeRecoveryEmailResponse()
            return self
        }
        override public func clone() throws -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder {
            return try IGPUserTwoStepVerificationChangeRecoveryEmailResponse.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse {
            let returnMe:IGPUserTwoStepVerificationChangeRecoveryEmailResponse = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPUserTwoStepVerificationChangeRecoveryEmailResponse) throws -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder {
            if other == IGPUserTwoStepVerificationChangeRecoveryEmailResponse() {
                return self
            }
            if (other.hasIgpResponse) {
                try mergeIgpResponse(value: other.igpResponse)
            }
            if other.hasIgpUnconfirmedEmailPattern {
                igpUnconfirmedEmailPattern = other.igpUnconfirmedEmailPattern
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder {
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
                    igpUnconfirmedEmailPattern = try codedInputStream.readString()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder {
            let resultDecodedBuilder = IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder()
            if let jsonValueIgpResponse = jsonMap["IGPResponse"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpResponse = try IGPResponse.Builder.decodeToBuilder(jsonMap:jsonValueIgpResponse).build()

            }
            if let jsonValueIgpUnconfirmedEmailPattern = jsonMap["IGPUnconfirmedEmailPattern"] as? String {
                resultDecodedBuilder.igpUnconfirmedEmailPattern = jsonValueIgpUnconfirmedEmailPattern
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension IGPUserTwoStepVerificationChangeRecoveryEmail: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPUserTwoStepVerificationChangeRecoveryEmail> {
        var mergedArray = Array<IGPUserTwoStepVerificationChangeRecoveryEmail>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPUserTwoStepVerificationChangeRecoveryEmail? {
        return try IGPUserTwoStepVerificationChangeRecoveryEmail.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPUserTwoStepVerificationChangeRecoveryEmail {
        return try IGPUserTwoStepVerificationChangeRecoveryEmail.Builder().mergeFrom(data: data, extensionRegistry:UserTwoStepVerificationChangeRecoveryEmailRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationChangeRecoveryEmail {
        return try IGPUserTwoStepVerificationChangeRecoveryEmail.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPUserTwoStepVerificationChangeRecoveryEmail {
        return try IGPUserTwoStepVerificationChangeRecoveryEmail.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationChangeRecoveryEmail {
        return try IGPUserTwoStepVerificationChangeRecoveryEmail.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPUserTwoStepVerificationChangeRecoveryEmail {
        return try IGPUserTwoStepVerificationChangeRecoveryEmail.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationChangeRecoveryEmail {
        return try IGPUserTwoStepVerificationChangeRecoveryEmail.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpRequest": return self.igpRequest
        case "igpPassword": return self.igpPassword
        case "igpEmail": return self.igpEmail
        default: return nil
        }
    }
}
extension IGPUserTwoStepVerificationChangeRecoveryEmail.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = IGPUserTwoStepVerificationChangeRecoveryEmail
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpRequest": return self.igpRequest
            case "igpPassword": return self.igpPassword
            case "igpEmail": return self.igpEmail
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
            case "igpEmail":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.igpEmail = newSubscriptValue
            default: return
            }
        }
    }
}
extension IGPUserTwoStepVerificationChangeRecoveryEmailResponse: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPUserTwoStepVerificationChangeRecoveryEmailResponse> {
        var mergedArray = Array<IGPUserTwoStepVerificationChangeRecoveryEmailResponse>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse? {
        return try IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse {
        return try IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder().mergeFrom(data: data, extensionRegistry:UserTwoStepVerificationChangeRecoveryEmailRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse {
        return try IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse {
        return try IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse {
        return try IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse {
        return try IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserTwoStepVerificationChangeRecoveryEmailResponse {
        return try IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpResponse": return self.igpResponse
        case "igpUnconfirmedEmailPattern": return self.igpUnconfirmedEmailPattern
        default: return nil
        }
    }
}
extension IGPUserTwoStepVerificationChangeRecoveryEmailResponse.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = IGPUserTwoStepVerificationChangeRecoveryEmailResponse
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpResponse": return self.igpResponse
            case "igpUnconfirmedEmailPattern": return self.igpUnconfirmedEmailPattern
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
            case "igpUnconfirmedEmailPattern":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.igpUnconfirmedEmailPattern = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)
