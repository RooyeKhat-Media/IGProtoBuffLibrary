/// Generated by the Protocol Buffers 3.4.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.22
/// Source file "ChannelRevokeLink.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct ChannelRevokeLinkRoot {
    public static let `default` = ChannelRevokeLinkRoot()
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

final public class IGPChannelRevokeLink : GeneratedMessage {
    public typealias BuilderType = IGPChannelRevokeLink.Builder

    public static func == (lhs: IGPChannelRevokeLink, rhs: IGPChannelRevokeLink) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpRequest == rhs.hasIgpRequest) && (!lhs.hasIgpRequest || lhs.igpRequest == rhs.igpRequest)
        fieldCheck = fieldCheck && (lhs.hasIgpRoomId == rhs.hasIgpRoomId) && (!lhs.hasIgpRoomId || lhs.igpRoomId == rhs.igpRoomId)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpRequest:IGPRequest!
    public fileprivate(set) var hasIgpRequest:Bool = false
    public fileprivate(set) var igpRoomId:Int64! = nil
    public fileprivate(set) var hasIgpRoomId:Bool = false

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
        if hasIgpRoomId {
            try codedOutputStream.writeInt64(fieldNumber: 2, value:igpRoomId)
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
        if hasIgpRoomId {
            serialize_size += igpRoomId.computeInt64Size(fieldNumber: 2)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPChannelRevokeLink.Builder {
        return IGPChannelRevokeLink.classBuilder() as! IGPChannelRevokeLink.Builder
    }
    public func getBuilder() -> IGPChannelRevokeLink.Builder {
        return classBuilder() as! IGPChannelRevokeLink.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPChannelRevokeLink.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPChannelRevokeLink.Builder()
    }
    public func toBuilder() throws -> IGPChannelRevokeLink.Builder {
        return try IGPChannelRevokeLink.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPChannelRevokeLink) throws -> IGPChannelRevokeLink.Builder {
        return try IGPChannelRevokeLink.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpRequest {
            jsonMap["IGPRequest"] = try igpRequest.encode()
        }
        if hasIgpRoomId {
            jsonMap["IGPRoomId"] = "\(igpRoomId!)"
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPChannelRevokeLink {
        return try IGPChannelRevokeLink.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPChannelRevokeLink {
        return try IGPChannelRevokeLink.Builder.fromJSONToBuilder(data:data).build()
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
        if hasIgpRoomId {
            output += "\(indent) igpRoomId: \(igpRoomId) \n"
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
            if hasIgpRoomId {
                hashCode = (hashCode &* 31) &+ igpRoomId.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPChannelRevokeLink"
    }
    override public func className() -> String {
        return "IGPChannelRevokeLink"
    }
    //Meta information declaration end

    final public class Builder : GeneratedRequestMessageBuilder {
        fileprivate var builderResult:IGPChannelRevokeLink = IGPChannelRevokeLink()
        public func getMessage() -> IGPChannelRevokeLink {
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
        public override func setIgpRequest(_ value:IGPRequest!) -> IGPChannelRevokeLink.Builder {
            self.igpRequest = value
            return self
        }
        @discardableResult
        public func mergeIgpRequest(value:IGPRequest) throws -> IGPChannelRevokeLink.Builder {
            if builderResult.hasIgpRequest {
                builderResult.igpRequest = try IGPRequest.builderWithPrototype(prototype:builderResult.igpRequest).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpRequest = value
            }
            builderResult.hasIgpRequest = true
            return self
        }
        @discardableResult
        public func clearIgpRequest() -> IGPChannelRevokeLink.Builder {
            igpRequestBuilder_ = nil
            builderResult.hasIgpRequest = false
            builderResult.igpRequest = nil
            return self
        }
        public var igpRoomId:Int64 {
            get {
                return builderResult.igpRoomId
            }
            set (value) {
                builderResult.hasIgpRoomId = true
                builderResult.igpRoomId = value
            }
        }
        public var hasIgpRoomId:Bool {
            get {
                return builderResult.hasIgpRoomId
            }
        }
        @discardableResult
        public func setIgpRoomId(_ value:Int64) -> IGPChannelRevokeLink.Builder {
            self.igpRoomId = value
            return self
        }
        @discardableResult
        public func clearIgpRoomId() -> IGPChannelRevokeLink.Builder{
            builderResult.hasIgpRoomId = false
            builderResult.igpRoomId = nil
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPChannelRevokeLink.Builder {
            builderResult = IGPChannelRevokeLink()
            return self
        }
        override public func clone() throws -> IGPChannelRevokeLink.Builder {
            return try IGPChannelRevokeLink.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPChannelRevokeLink {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPChannelRevokeLink {
            let returnMe:IGPChannelRevokeLink = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPChannelRevokeLink) throws -> IGPChannelRevokeLink.Builder {
            if other == IGPChannelRevokeLink() {
                return self
            }
            if (other.hasIgpRequest) {
                try mergeIgpRequest(value: other.igpRequest)
            }
            if other.hasIgpRoomId {
                igpRoomId = other.igpRoomId
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPChannelRevokeLink.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPChannelRevokeLink.Builder {
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

                case 16:
                    igpRoomId = try codedInputStream.readInt64()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPChannelRevokeLink.Builder {
            let resultDecodedBuilder = IGPChannelRevokeLink.Builder()
            if let jsonValueIgpRequest = jsonMap["IGPRequest"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpRequest = try IGPRequest.Builder.decodeToBuilder(jsonMap:jsonValueIgpRequest).build()

            }
            if let jsonValueIgpRoomId = jsonMap["IGPRoomId"] as? String {
                resultDecodedBuilder.igpRoomId = Int64(jsonValueIgpRoomId)!
            } else if let jsonValueIgpRoomId = jsonMap["IGPRoomId"] as? Int {
                resultDecodedBuilder.igpRoomId = Int64(jsonValueIgpRoomId)
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPChannelRevokeLink.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPChannelRevokeLink.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

final public class IGPChannelRevokeLinkResponse : GeneratedResponseMessage {
    public typealias BuilderType = IGPChannelRevokeLinkResponse.Builder

    public static func == (lhs: IGPChannelRevokeLinkResponse, rhs: IGPChannelRevokeLinkResponse) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpResponse == rhs.hasIgpResponse) && (!lhs.hasIgpResponse || lhs.igpResponse == rhs.igpResponse)
        fieldCheck = fieldCheck && (lhs.hasIgpRoomId == rhs.hasIgpRoomId) && (!lhs.hasIgpRoomId || lhs.igpRoomId == rhs.igpRoomId)
        fieldCheck = fieldCheck && (lhs.hasIgpInviteLink == rhs.hasIgpInviteLink) && (!lhs.hasIgpInviteLink || lhs.igpInviteLink == rhs.igpInviteLink)
        fieldCheck = fieldCheck && (lhs.hasIgpInviteToken == rhs.hasIgpInviteToken) && (!lhs.hasIgpInviteToken || lhs.igpInviteToken == rhs.igpInviteToken)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpRoomId:Int64! = nil
    public fileprivate(set) var hasIgpRoomId:Bool = false

    public fileprivate(set) var igpInviteLink:String! = nil
    public fileprivate(set) var hasIgpInviteLink:Bool = false

    public fileprivate(set) var igpInviteToken:String! = nil
    public fileprivate(set) var hasIgpInviteToken:Bool = false

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
        if hasIgpRoomId {
            try codedOutputStream.writeInt64(fieldNumber: 2, value:igpRoomId)
        }
        if hasIgpInviteLink {
            try codedOutputStream.writeString(fieldNumber: 3, value:igpInviteLink)
        }
        if hasIgpInviteToken {
            try codedOutputStream.writeString(fieldNumber: 4, value:igpInviteToken)
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
        if hasIgpRoomId {
            serialize_size += igpRoomId.computeInt64Size(fieldNumber: 2)
        }
        if hasIgpInviteLink {
            serialize_size += igpInviteLink.computeStringSize(fieldNumber: 3)
        }
        if hasIgpInviteToken {
            serialize_size += igpInviteToken.computeStringSize(fieldNumber: 4)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPChannelRevokeLinkResponse.Builder {
        return IGPChannelRevokeLinkResponse.classBuilder() as! IGPChannelRevokeLinkResponse.Builder
    }
    public func getBuilder() -> IGPChannelRevokeLinkResponse.Builder {
        return classBuilder() as! IGPChannelRevokeLinkResponse.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPChannelRevokeLinkResponse.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPChannelRevokeLinkResponse.Builder()
    }
    public func toBuilder() throws -> IGPChannelRevokeLinkResponse.Builder {
        return try IGPChannelRevokeLinkResponse.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPChannelRevokeLinkResponse) throws -> IGPChannelRevokeLinkResponse.Builder {
        return try IGPChannelRevokeLinkResponse.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpResponse {
            jsonMap["IGPResponse"] = try igpResponse.encode()
        }
        if hasIgpRoomId {
            jsonMap["IGPRoomId"] = "\(igpRoomId!)"
        }
        if hasIgpInviteLink {
            jsonMap["IGPInviteLink"] = igpInviteLink
        }
        if hasIgpInviteToken {
            jsonMap["IGPInviteToken"] = igpInviteToken
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPChannelRevokeLinkResponse {
        return try IGPChannelRevokeLinkResponse.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPChannelRevokeLinkResponse {
        return try IGPChannelRevokeLinkResponse.Builder.fromJSONToBuilder(data:data).build()
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
        if hasIgpRoomId {
            output += "\(indent) igpRoomId: \(igpRoomId) \n"
        }
        if hasIgpInviteLink {
            output += "\(indent) igpInviteLink: \(igpInviteLink) \n"
        }
        if hasIgpInviteToken {
            output += "\(indent) igpInviteToken: \(igpInviteToken) \n"
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
            if hasIgpRoomId {
                hashCode = (hashCode &* 31) &+ igpRoomId.hashValue
            }
            if hasIgpInviteLink {
                hashCode = (hashCode &* 31) &+ igpInviteLink.hashValue
            }
            if hasIgpInviteToken {
                hashCode = (hashCode &* 31) &+ igpInviteToken.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPChannelRevokeLinkResponse"
    }
    override public func className() -> String {
        return "IGPChannelRevokeLinkResponse"
    }
    //Meta information declaration end

    final public class Builder : GeneratedResponseMessageBuilder {
        fileprivate var builderResult:IGPChannelRevokeLinkResponse = IGPChannelRevokeLinkResponse()
        public func getMessage() -> IGPChannelRevokeLinkResponse {
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
        public func setIgpResponse(_ value:IGPResponse!) -> IGPChannelRevokeLinkResponse.Builder {
            self.igpResponse = value
            return self
        }
        @discardableResult
        public func mergeIgpResponse(value:IGPResponse) throws -> IGPChannelRevokeLinkResponse.Builder {
            if builderResult.hasIgpResponse {
                builderResult.igpResponse = try IGPResponse.builderWithPrototype(prototype:builderResult.igpResponse).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpResponse = value
            }
            builderResult.hasIgpResponse = true
            return self
        }
        @discardableResult
        public func clearIgpResponse() -> IGPChannelRevokeLinkResponse.Builder {
            igpResponseBuilder_ = nil
            builderResult.hasIgpResponse = false
            builderResult.igpResponse = nil
            return self
        }
        public var igpRoomId:Int64 {
            get {
                return builderResult.igpRoomId
            }
            set (value) {
                builderResult.hasIgpRoomId = true
                builderResult.igpRoomId = value
            }
        }
        public var hasIgpRoomId:Bool {
            get {
                return builderResult.hasIgpRoomId
            }
        }
        @discardableResult
        public func setIgpRoomId(_ value:Int64) -> IGPChannelRevokeLinkResponse.Builder {
            self.igpRoomId = value
            return self
        }
        @discardableResult
        public func clearIgpRoomId() -> IGPChannelRevokeLinkResponse.Builder{
            builderResult.hasIgpRoomId = false
            builderResult.igpRoomId = nil
            return self
        }
        public var igpInviteLink:String {
            get {
                return builderResult.igpInviteLink
            }
            set (value) {
                builderResult.hasIgpInviteLink = true
                builderResult.igpInviteLink = value
            }
        }
        public var hasIgpInviteLink:Bool {
            get {
                return builderResult.hasIgpInviteLink
            }
        }
        @discardableResult
        public func setIgpInviteLink(_ value:String) -> IGPChannelRevokeLinkResponse.Builder {
            self.igpInviteLink = value
            return self
        }
        @discardableResult
        public func clearIgpInviteLink() -> IGPChannelRevokeLinkResponse.Builder{
            builderResult.hasIgpInviteLink = false
            builderResult.igpInviteLink = nil
            return self
        }
        public var igpInviteToken:String {
            get {
                return builderResult.igpInviteToken
            }
            set (value) {
                builderResult.hasIgpInviteToken = true
                builderResult.igpInviteToken = value
            }
        }
        public var hasIgpInviteToken:Bool {
            get {
                return builderResult.hasIgpInviteToken
            }
        }
        @discardableResult
        public func setIgpInviteToken(_ value:String) -> IGPChannelRevokeLinkResponse.Builder {
            self.igpInviteToken = value
            return self
        }
        @discardableResult
        public func clearIgpInviteToken() -> IGPChannelRevokeLinkResponse.Builder{
            builderResult.hasIgpInviteToken = false
            builderResult.igpInviteToken = nil
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPChannelRevokeLinkResponse.Builder {
            builderResult = IGPChannelRevokeLinkResponse()
            return self
        }
        override public func clone() throws -> IGPChannelRevokeLinkResponse.Builder {
            return try IGPChannelRevokeLinkResponse.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPChannelRevokeLinkResponse {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPChannelRevokeLinkResponse {
            let returnMe:IGPChannelRevokeLinkResponse = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPChannelRevokeLinkResponse) throws -> IGPChannelRevokeLinkResponse.Builder {
            if other == IGPChannelRevokeLinkResponse() {
                return self
            }
            if (other.hasIgpResponse) {
                try mergeIgpResponse(value: other.igpResponse)
            }
            if other.hasIgpRoomId {
                igpRoomId = other.igpRoomId
            }
            if other.hasIgpInviteLink {
                igpInviteLink = other.igpInviteLink
            }
            if other.hasIgpInviteToken {
                igpInviteToken = other.igpInviteToken
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPChannelRevokeLinkResponse.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPChannelRevokeLinkResponse.Builder {
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

                case 16:
                    igpRoomId = try codedInputStream.readInt64()

                case 26:
                    igpInviteLink = try codedInputStream.readString()

                case 34:
                    igpInviteToken = try codedInputStream.readString()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPChannelRevokeLinkResponse.Builder {
            let resultDecodedBuilder = IGPChannelRevokeLinkResponse.Builder()
            if let jsonValueIgpResponse = jsonMap["IGPResponse"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpResponse = try IGPResponse.Builder.decodeToBuilder(jsonMap:jsonValueIgpResponse).build()

            }
            if let jsonValueIgpRoomId = jsonMap["IGPRoomId"] as? String {
                resultDecodedBuilder.igpRoomId = Int64(jsonValueIgpRoomId)!
            } else if let jsonValueIgpRoomId = jsonMap["IGPRoomId"] as? Int {
                resultDecodedBuilder.igpRoomId = Int64(jsonValueIgpRoomId)
            }
            if let jsonValueIgpInviteLink = jsonMap["IGPInviteLink"] as? String {
                resultDecodedBuilder.igpInviteLink = jsonValueIgpInviteLink
            }
            if let jsonValueIgpInviteToken = jsonMap["IGPInviteToken"] as? String {
                resultDecodedBuilder.igpInviteToken = jsonValueIgpInviteToken
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPChannelRevokeLinkResponse.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPChannelRevokeLinkResponse.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension IGPChannelRevokeLink: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPChannelRevokeLink> {
        var mergedArray = Array<IGPChannelRevokeLink>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPChannelRevokeLink? {
        return try IGPChannelRevokeLink.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPChannelRevokeLink {
        return try IGPChannelRevokeLink.Builder().mergeFrom(data: data, extensionRegistry:ChannelRevokeLinkRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPChannelRevokeLink {
        return try IGPChannelRevokeLink.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPChannelRevokeLink {
        return try IGPChannelRevokeLink.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPChannelRevokeLink {
        return try IGPChannelRevokeLink.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPChannelRevokeLink {
        return try IGPChannelRevokeLink.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPChannelRevokeLink {
        return try IGPChannelRevokeLink.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpRequest": return self.igpRequest
        case "igpRoomId": return self.igpRoomId
        default: return nil
        }
    }
}
extension IGPChannelRevokeLink.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = IGPChannelRevokeLink
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpRequest": return self.igpRequest
            case "igpRoomId": return self.igpRoomId
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
            case "igpRoomId":
                guard let newSubscriptValue = newSubscriptValue as? Int64 else {
                    return
                }
                self.igpRoomId = newSubscriptValue
            default: return
            }
        }
    }
}
extension IGPChannelRevokeLinkResponse: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPChannelRevokeLinkResponse> {
        var mergedArray = Array<IGPChannelRevokeLinkResponse>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPChannelRevokeLinkResponse? {
        return try IGPChannelRevokeLinkResponse.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPChannelRevokeLinkResponse {
        return try IGPChannelRevokeLinkResponse.Builder().mergeFrom(data: data, extensionRegistry:ChannelRevokeLinkRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPChannelRevokeLinkResponse {
        return try IGPChannelRevokeLinkResponse.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPChannelRevokeLinkResponse {
        return try IGPChannelRevokeLinkResponse.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPChannelRevokeLinkResponse {
        return try IGPChannelRevokeLinkResponse.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPChannelRevokeLinkResponse {
        return try IGPChannelRevokeLinkResponse.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPChannelRevokeLinkResponse {
        return try IGPChannelRevokeLinkResponse.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpResponse": return self.igpResponse
        case "igpRoomId": return self.igpRoomId
        case "igpInviteLink": return self.igpInviteLink
        case "igpInviteToken": return self.igpInviteToken
        default: return nil
        }
    }
}
extension IGPChannelRevokeLinkResponse.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = IGPChannelRevokeLinkResponse
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpResponse": return self.igpResponse
            case "igpRoomId": return self.igpRoomId
            case "igpInviteLink": return self.igpInviteLink
            case "igpInviteToken": return self.igpInviteToken
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
            case "igpRoomId":
                guard let newSubscriptValue = newSubscriptValue as? Int64 else {
                    return
                }
                self.igpRoomId = newSubscriptValue
            case "igpInviteLink":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.igpInviteLink = newSubscriptValue
            case "igpInviteToken":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.igpInviteToken = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)
