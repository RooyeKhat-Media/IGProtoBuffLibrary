/// Generated by the Protocol Buffers 3.4.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.22
/// Source file "UserProfileUpdateUsername.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct UserProfileUpdateUsernameRoot {
    public static let `default` = UserProfileUpdateUsernameRoot()
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

final public class IGPUserProfileUpdateUsername : GeneratedMessage {
    public typealias BuilderType = IGPUserProfileUpdateUsername.Builder

    public static func == (lhs: IGPUserProfileUpdateUsername, rhs: IGPUserProfileUpdateUsername) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpRequest == rhs.hasIgpRequest) && (!lhs.hasIgpRequest || lhs.igpRequest == rhs.igpRequest)
        fieldCheck = fieldCheck && (lhs.hasIgpUsername == rhs.hasIgpUsername) && (!lhs.hasIgpUsername || lhs.igpUsername == rhs.igpUsername)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpRequest:IGPRequest!
    public fileprivate(set) var hasIgpRequest:Bool = false
    public fileprivate(set) var igpUsername:String! = nil
    public fileprivate(set) var hasIgpUsername:Bool = false

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
        if hasIgpUsername {
            try codedOutputStream.writeString(fieldNumber: 2, value:igpUsername)
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
        if hasIgpUsername {
            serialize_size += igpUsername.computeStringSize(fieldNumber: 2)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPUserProfileUpdateUsername.Builder {
        return IGPUserProfileUpdateUsername.classBuilder() as! IGPUserProfileUpdateUsername.Builder
    }
    public func getBuilder() -> IGPUserProfileUpdateUsername.Builder {
        return classBuilder() as! IGPUserProfileUpdateUsername.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserProfileUpdateUsername.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserProfileUpdateUsername.Builder()
    }
    public func toBuilder() throws -> IGPUserProfileUpdateUsername.Builder {
        return try IGPUserProfileUpdateUsername.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPUserProfileUpdateUsername) throws -> IGPUserProfileUpdateUsername.Builder {
        return try IGPUserProfileUpdateUsername.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpRequest {
            jsonMap["IGPRequest"] = try igpRequest.encode()
        }
        if hasIgpUsername {
            jsonMap["IGPUsername"] = igpUsername
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPUserProfileUpdateUsername {
        return try IGPUserProfileUpdateUsername.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPUserProfileUpdateUsername {
        return try IGPUserProfileUpdateUsername.Builder.fromJSONToBuilder(data:data).build()
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
        if hasIgpUsername {
            output += "\(indent) igpUsername: \(igpUsername) \n"
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
            if hasIgpUsername {
                hashCode = (hashCode &* 31) &+ igpUsername.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPUserProfileUpdateUsername"
    }
    override public func className() -> String {
        return "IGPUserProfileUpdateUsername"
    }
    //Meta information declaration end

    final public class Builder : GeneratedRequestMessageBuilder {
        fileprivate var builderResult:IGPUserProfileUpdateUsername = IGPUserProfileUpdateUsername()
        public func getMessage() -> IGPUserProfileUpdateUsername {
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
        public override func setIgpRequest(_ value:IGPRequest!) -> IGPUserProfileUpdateUsername.Builder {
            self.igpRequest = value
            return self
        }
        @discardableResult
        public func mergeIgpRequest(value:IGPRequest) throws -> IGPUserProfileUpdateUsername.Builder {
            if builderResult.hasIgpRequest {
                builderResult.igpRequest = try IGPRequest.builderWithPrototype(prototype:builderResult.igpRequest).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpRequest = value
            }
            builderResult.hasIgpRequest = true
            return self
        }
        @discardableResult
        public func clearIgpRequest() -> IGPUserProfileUpdateUsername.Builder {
            igpRequestBuilder_ = nil
            builderResult.hasIgpRequest = false
            builderResult.igpRequest = nil
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
        public func setIgpUsername(_ value:String) -> IGPUserProfileUpdateUsername.Builder {
            self.igpUsername = value
            return self
        }
        @discardableResult
        public func clearIgpUsername() -> IGPUserProfileUpdateUsername.Builder{
            builderResult.hasIgpUsername = false
            builderResult.igpUsername = nil
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPUserProfileUpdateUsername.Builder {
            builderResult = IGPUserProfileUpdateUsername()
            return self
        }
        override public func clone() throws -> IGPUserProfileUpdateUsername.Builder {
            return try IGPUserProfileUpdateUsername.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPUserProfileUpdateUsername {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPUserProfileUpdateUsername {
            let returnMe:IGPUserProfileUpdateUsername = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPUserProfileUpdateUsername) throws -> IGPUserProfileUpdateUsername.Builder {
            if other == IGPUserProfileUpdateUsername() {
                return self
            }
            if (other.hasIgpRequest) {
                try mergeIgpRequest(value: other.igpRequest)
            }
            if other.hasIgpUsername {
                igpUsername = other.igpUsername
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPUserProfileUpdateUsername.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserProfileUpdateUsername.Builder {
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
                    igpUsername = try codedInputStream.readString()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPUserProfileUpdateUsername.Builder {
            let resultDecodedBuilder = IGPUserProfileUpdateUsername.Builder()
            if let jsonValueIgpRequest = jsonMap["IGPRequest"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpRequest = try IGPRequest.Builder.decodeToBuilder(jsonMap:jsonValueIgpRequest).build()

            }
            if let jsonValueIgpUsername = jsonMap["IGPUsername"] as? String {
                resultDecodedBuilder.igpUsername = jsonValueIgpUsername
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPUserProfileUpdateUsername.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPUserProfileUpdateUsername.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

final public class IGPUserProfileUpdateUsernameResponse : GeneratedResponseMessage {
    public typealias BuilderType = IGPUserProfileUpdateUsernameResponse.Builder

    public static func == (lhs: IGPUserProfileUpdateUsernameResponse, rhs: IGPUserProfileUpdateUsernameResponse) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpResponse == rhs.hasIgpResponse) && (!lhs.hasIgpResponse || lhs.igpResponse == rhs.igpResponse)
        fieldCheck = fieldCheck && (lhs.hasIgpUsername == rhs.hasIgpUsername) && (!lhs.hasIgpUsername || lhs.igpUsername == rhs.igpUsername)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpUsername:String! = nil
    public fileprivate(set) var hasIgpUsername:Bool = false

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
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPUserProfileUpdateUsernameResponse.Builder {
        return IGPUserProfileUpdateUsernameResponse.classBuilder() as! IGPUserProfileUpdateUsernameResponse.Builder
    }
    public func getBuilder() -> IGPUserProfileUpdateUsernameResponse.Builder {
        return classBuilder() as! IGPUserProfileUpdateUsernameResponse.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserProfileUpdateUsernameResponse.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPUserProfileUpdateUsernameResponse.Builder()
    }
    public func toBuilder() throws -> IGPUserProfileUpdateUsernameResponse.Builder {
        return try IGPUserProfileUpdateUsernameResponse.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPUserProfileUpdateUsernameResponse) throws -> IGPUserProfileUpdateUsernameResponse.Builder {
        return try IGPUserProfileUpdateUsernameResponse.Builder().mergeFrom(other:prototype)
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
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPUserProfileUpdateUsernameResponse {
        return try IGPUserProfileUpdateUsernameResponse.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPUserProfileUpdateUsernameResponse {
        return try IGPUserProfileUpdateUsernameResponse.Builder.fromJSONToBuilder(data:data).build()
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
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPUserProfileUpdateUsernameResponse"
    }
    override public func className() -> String {
        return "IGPUserProfileUpdateUsernameResponse"
    }
    //Meta information declaration end

    final public class Builder : GeneratedResponseMessageBuilder {
        fileprivate var builderResult:IGPUserProfileUpdateUsernameResponse = IGPUserProfileUpdateUsernameResponse()
        public func getMessage() -> IGPUserProfileUpdateUsernameResponse {
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
        public func setIgpResponse(_ value:IGPResponse!) -> IGPUserProfileUpdateUsernameResponse.Builder {
            self.igpResponse = value
            return self
        }
        @discardableResult
        public func mergeIgpResponse(value:IGPResponse) throws -> IGPUserProfileUpdateUsernameResponse.Builder {
            if builderResult.hasIgpResponse {
                builderResult.igpResponse = try IGPResponse.builderWithPrototype(prototype:builderResult.igpResponse).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpResponse = value
            }
            builderResult.hasIgpResponse = true
            return self
        }
        @discardableResult
        public func clearIgpResponse() -> IGPUserProfileUpdateUsernameResponse.Builder {
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
        public func setIgpUsername(_ value:String) -> IGPUserProfileUpdateUsernameResponse.Builder {
            self.igpUsername = value
            return self
        }
        @discardableResult
        public func clearIgpUsername() -> IGPUserProfileUpdateUsernameResponse.Builder{
            builderResult.hasIgpUsername = false
            builderResult.igpUsername = nil
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPUserProfileUpdateUsernameResponse.Builder {
            builderResult = IGPUserProfileUpdateUsernameResponse()
            return self
        }
        override public func clone() throws -> IGPUserProfileUpdateUsernameResponse.Builder {
            return try IGPUserProfileUpdateUsernameResponse.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPUserProfileUpdateUsernameResponse {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPUserProfileUpdateUsernameResponse {
            let returnMe:IGPUserProfileUpdateUsernameResponse = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPUserProfileUpdateUsernameResponse) throws -> IGPUserProfileUpdateUsernameResponse.Builder {
            if other == IGPUserProfileUpdateUsernameResponse() {
                return self
            }
            if (other.hasIgpResponse) {
                try mergeIgpResponse(value: other.igpResponse)
            }
            if other.hasIgpUsername {
                igpUsername = other.igpUsername
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPUserProfileUpdateUsernameResponse.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserProfileUpdateUsernameResponse.Builder {
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

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPUserProfileUpdateUsernameResponse.Builder {
            let resultDecodedBuilder = IGPUserProfileUpdateUsernameResponse.Builder()
            if let jsonValueIgpResponse = jsonMap["IGPResponse"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpResponse = try IGPResponse.Builder.decodeToBuilder(jsonMap:jsonValueIgpResponse).build()

            }
            if let jsonValueIgpUsername = jsonMap["IGPUsername"] as? String {
                resultDecodedBuilder.igpUsername = jsonValueIgpUsername
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPUserProfileUpdateUsernameResponse.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPUserProfileUpdateUsernameResponse.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension IGPUserProfileUpdateUsername: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPUserProfileUpdateUsername> {
        var mergedArray = Array<IGPUserProfileUpdateUsername>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPUserProfileUpdateUsername? {
        return try IGPUserProfileUpdateUsername.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPUserProfileUpdateUsername {
        return try IGPUserProfileUpdateUsername.Builder().mergeFrom(data: data, extensionRegistry:UserProfileUpdateUsernameRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPUserProfileUpdateUsername {
        return try IGPUserProfileUpdateUsername.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPUserProfileUpdateUsername {
        return try IGPUserProfileUpdateUsername.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserProfileUpdateUsername {
        return try IGPUserProfileUpdateUsername.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPUserProfileUpdateUsername {
        return try IGPUserProfileUpdateUsername.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserProfileUpdateUsername {
        return try IGPUserProfileUpdateUsername.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpRequest": return self.igpRequest
        case "igpUsername": return self.igpUsername
        default: return nil
        }
    }
}
extension IGPUserProfileUpdateUsername.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = IGPUserProfileUpdateUsername
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpRequest": return self.igpRequest
            case "igpUsername": return self.igpUsername
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
            case "igpUsername":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.igpUsername = newSubscriptValue
            default: return
            }
        }
    }
}
extension IGPUserProfileUpdateUsernameResponse: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPUserProfileUpdateUsernameResponse> {
        var mergedArray = Array<IGPUserProfileUpdateUsernameResponse>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPUserProfileUpdateUsernameResponse? {
        return try IGPUserProfileUpdateUsernameResponse.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPUserProfileUpdateUsernameResponse {
        return try IGPUserProfileUpdateUsernameResponse.Builder().mergeFrom(data: data, extensionRegistry:UserProfileUpdateUsernameRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPUserProfileUpdateUsernameResponse {
        return try IGPUserProfileUpdateUsernameResponse.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPUserProfileUpdateUsernameResponse {
        return try IGPUserProfileUpdateUsernameResponse.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserProfileUpdateUsernameResponse {
        return try IGPUserProfileUpdateUsernameResponse.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPUserProfileUpdateUsernameResponse {
        return try IGPUserProfileUpdateUsernameResponse.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPUserProfileUpdateUsernameResponse {
        return try IGPUserProfileUpdateUsernameResponse.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpResponse": return self.igpResponse
        case "igpUsername": return self.igpUsername
        default: return nil
        }
    }
}
extension IGPUserProfileUpdateUsernameResponse.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = IGPUserProfileUpdateUsernameResponse
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpResponse": return self.igpResponse
            case "igpUsername": return self.igpUsername
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
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)
