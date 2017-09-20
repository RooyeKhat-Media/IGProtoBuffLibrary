/// Generated by the Protocol Buffers 3.4.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.22
/// Source file "GeoGetComment.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct GeoGetCommentRoot {
    public static let `default` = GeoGetCommentRoot()
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

final public class IGPGeoGetComment : GeneratedMessage {
    public typealias BuilderType = IGPGeoGetComment.Builder

    public static func == (lhs: IGPGeoGetComment, rhs: IGPGeoGetComment) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpRequest == rhs.hasIgpRequest) && (!lhs.hasIgpRequest || lhs.igpRequest == rhs.igpRequest)
        fieldCheck = fieldCheck && (lhs.hasIgpUserId == rhs.hasIgpUserId) && (!lhs.hasIgpUserId || lhs.igpUserId == rhs.igpUserId)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpRequest:IGPRequest!
    public fileprivate(set) var hasIgpRequest:Bool = false
    public fileprivate(set) var igpUserId:Int64! = nil
    public fileprivate(set) var hasIgpUserId:Bool = false

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
        if hasIgpUserId {
            try codedOutputStream.writeInt64(fieldNumber: 2, value:igpUserId)
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
        if hasIgpUserId {
            serialize_size += igpUserId.computeInt64Size(fieldNumber: 2)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPGeoGetComment.Builder {
        return IGPGeoGetComment.classBuilder() as! IGPGeoGetComment.Builder
    }
    public func getBuilder() -> IGPGeoGetComment.Builder {
        return classBuilder() as! IGPGeoGetComment.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPGeoGetComment.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPGeoGetComment.Builder()
    }
    public func toBuilder() throws -> IGPGeoGetComment.Builder {
        return try IGPGeoGetComment.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPGeoGetComment) throws -> IGPGeoGetComment.Builder {
        return try IGPGeoGetComment.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpRequest {
            jsonMap["IGPRequest"] = try igpRequest.encode()
        }
        if hasIgpUserId {
            jsonMap["IGPUserId"] = "\(igpUserId!)"
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPGeoGetComment {
        return try IGPGeoGetComment.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPGeoGetComment {
        return try IGPGeoGetComment.Builder.fromJSONToBuilder(data:data).build()
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
        if hasIgpUserId {
            output += "\(indent) igpUserId: \(igpUserId) \n"
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
            if hasIgpUserId {
                hashCode = (hashCode &* 31) &+ igpUserId.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPGeoGetComment"
    }
    override public func className() -> String {
        return "IGPGeoGetComment"
    }
    //Meta information declaration end

    final public class Builder : GeneratedRequestMessageBuilder {
        fileprivate var builderResult:IGPGeoGetComment = IGPGeoGetComment()
        public func getMessage() -> IGPGeoGetComment {
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
        public override func setIgpRequest(_ value:IGPRequest!) -> IGPGeoGetComment.Builder {
            self.igpRequest = value
            return self
        }
        @discardableResult
        public func mergeIgpRequest(value:IGPRequest) throws -> IGPGeoGetComment.Builder {
            if builderResult.hasIgpRequest {
                builderResult.igpRequest = try IGPRequest.builderWithPrototype(prototype:builderResult.igpRequest).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpRequest = value
            }
            builderResult.hasIgpRequest = true
            return self
        }
        @discardableResult
        public func clearIgpRequest() -> IGPGeoGetComment.Builder {
            igpRequestBuilder_ = nil
            builderResult.hasIgpRequest = false
            builderResult.igpRequest = nil
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
        public func setIgpUserId(_ value:Int64) -> IGPGeoGetComment.Builder {
            self.igpUserId = value
            return self
        }
        @discardableResult
        public func clearIgpUserId() -> IGPGeoGetComment.Builder{
            builderResult.hasIgpUserId = false
            builderResult.igpUserId = nil
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPGeoGetComment.Builder {
            builderResult = IGPGeoGetComment()
            return self
        }
        override public func clone() throws -> IGPGeoGetComment.Builder {
            return try IGPGeoGetComment.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPGeoGetComment {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPGeoGetComment {
            let returnMe:IGPGeoGetComment = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPGeoGetComment) throws -> IGPGeoGetComment.Builder {
            if other == IGPGeoGetComment() {
                return self
            }
            if (other.hasIgpRequest) {
                try mergeIgpRequest(value: other.igpRequest)
            }
            if other.hasIgpUserId {
                igpUserId = other.igpUserId
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPGeoGetComment.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPGeoGetComment.Builder {
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
                    igpUserId = try codedInputStream.readInt64()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPGeoGetComment.Builder {
            let resultDecodedBuilder = IGPGeoGetComment.Builder()
            if let jsonValueIgpRequest = jsonMap["IGPRequest"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpRequest = try IGPRequest.Builder.decodeToBuilder(jsonMap:jsonValueIgpRequest).build()

            }
            if let jsonValueIgpUserId = jsonMap["IGPUserId"] as? String {
                resultDecodedBuilder.igpUserId = Int64(jsonValueIgpUserId)!
            } else if let jsonValueIgpUserId = jsonMap["IGPUserId"] as? Int {
                resultDecodedBuilder.igpUserId = Int64(jsonValueIgpUserId)
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPGeoGetComment.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPGeoGetComment.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

final public class IGPGeoGetCommentResponse : GeneratedResponseMessage {
    public typealias BuilderType = IGPGeoGetCommentResponse.Builder

    public static func == (lhs: IGPGeoGetCommentResponse, rhs: IGPGeoGetCommentResponse) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpResponse == rhs.hasIgpResponse) && (!lhs.hasIgpResponse || lhs.igpResponse == rhs.igpResponse)
        fieldCheck = fieldCheck && (lhs.hasIgpComment == rhs.hasIgpComment) && (!lhs.hasIgpComment || lhs.igpComment == rhs.igpComment)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpComment:String! = nil
    public fileprivate(set) var hasIgpComment:Bool = false

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
        if hasIgpComment {
            try codedOutputStream.writeString(fieldNumber: 2, value:igpComment)
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
        if hasIgpComment {
            serialize_size += igpComment.computeStringSize(fieldNumber: 2)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPGeoGetCommentResponse.Builder {
        return IGPGeoGetCommentResponse.classBuilder() as! IGPGeoGetCommentResponse.Builder
    }
    public func getBuilder() -> IGPGeoGetCommentResponse.Builder {
        return classBuilder() as! IGPGeoGetCommentResponse.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPGeoGetCommentResponse.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPGeoGetCommentResponse.Builder()
    }
    public func toBuilder() throws -> IGPGeoGetCommentResponse.Builder {
        return try IGPGeoGetCommentResponse.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPGeoGetCommentResponse) throws -> IGPGeoGetCommentResponse.Builder {
        return try IGPGeoGetCommentResponse.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpResponse {
            jsonMap["IGPResponse"] = try igpResponse.encode()
        }
        if hasIgpComment {
            jsonMap["IGPComment"] = igpComment
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPGeoGetCommentResponse {
        return try IGPGeoGetCommentResponse.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPGeoGetCommentResponse {
        return try IGPGeoGetCommentResponse.Builder.fromJSONToBuilder(data:data).build()
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
        if hasIgpComment {
            output += "\(indent) igpComment: \(igpComment) \n"
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
            if hasIgpComment {
                hashCode = (hashCode &* 31) &+ igpComment.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPGeoGetCommentResponse"
    }
    override public func className() -> String {
        return "IGPGeoGetCommentResponse"
    }
    //Meta information declaration end

    final public class Builder : GeneratedResponseMessageBuilder {
        fileprivate var builderResult:IGPGeoGetCommentResponse = IGPGeoGetCommentResponse()
        public func getMessage() -> IGPGeoGetCommentResponse {
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
        public func setIgpResponse(_ value:IGPResponse!) -> IGPGeoGetCommentResponse.Builder {
            self.igpResponse = value
            return self
        }
        @discardableResult
        public func mergeIgpResponse(value:IGPResponse) throws -> IGPGeoGetCommentResponse.Builder {
            if builderResult.hasIgpResponse {
                builderResult.igpResponse = try IGPResponse.builderWithPrototype(prototype:builderResult.igpResponse).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpResponse = value
            }
            builderResult.hasIgpResponse = true
            return self
        }
        @discardableResult
        public func clearIgpResponse() -> IGPGeoGetCommentResponse.Builder {
            igpResponseBuilder_ = nil
            builderResult.hasIgpResponse = false
            builderResult.igpResponse = nil
            return self
        }
        public var igpComment:String {
            get {
                return builderResult.igpComment
            }
            set (value) {
                builderResult.hasIgpComment = true
                builderResult.igpComment = value
            }
        }
        public var hasIgpComment:Bool {
            get {
                return builderResult.hasIgpComment
            }
        }
        @discardableResult
        public func setIgpComment(_ value:String) -> IGPGeoGetCommentResponse.Builder {
            self.igpComment = value
            return self
        }
        @discardableResult
        public func clearIgpComment() -> IGPGeoGetCommentResponse.Builder{
            builderResult.hasIgpComment = false
            builderResult.igpComment = nil
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPGeoGetCommentResponse.Builder {
            builderResult = IGPGeoGetCommentResponse()
            return self
        }
        override public func clone() throws -> IGPGeoGetCommentResponse.Builder {
            return try IGPGeoGetCommentResponse.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPGeoGetCommentResponse {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPGeoGetCommentResponse {
            let returnMe:IGPGeoGetCommentResponse = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPGeoGetCommentResponse) throws -> IGPGeoGetCommentResponse.Builder {
            if other == IGPGeoGetCommentResponse() {
                return self
            }
            if (other.hasIgpResponse) {
                try mergeIgpResponse(value: other.igpResponse)
            }
            if other.hasIgpComment {
                igpComment = other.igpComment
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPGeoGetCommentResponse.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPGeoGetCommentResponse.Builder {
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
                    igpComment = try codedInputStream.readString()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPGeoGetCommentResponse.Builder {
            let resultDecodedBuilder = IGPGeoGetCommentResponse.Builder()
            if let jsonValueIgpResponse = jsonMap["IGPResponse"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpResponse = try IGPResponse.Builder.decodeToBuilder(jsonMap:jsonValueIgpResponse).build()

            }
            if let jsonValueIgpComment = jsonMap["IGPComment"] as? String {
                resultDecodedBuilder.igpComment = jsonValueIgpComment
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPGeoGetCommentResponse.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPGeoGetCommentResponse.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension IGPGeoGetComment: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPGeoGetComment> {
        var mergedArray = Array<IGPGeoGetComment>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPGeoGetComment? {
        return try IGPGeoGetComment.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPGeoGetComment {
        return try IGPGeoGetComment.Builder().mergeFrom(data: data, extensionRegistry:GeoGetCommentRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPGeoGetComment {
        return try IGPGeoGetComment.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPGeoGetComment {
        return try IGPGeoGetComment.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPGeoGetComment {
        return try IGPGeoGetComment.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPGeoGetComment {
        return try IGPGeoGetComment.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPGeoGetComment {
        return try IGPGeoGetComment.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpRequest": return self.igpRequest
        case "igpUserId": return self.igpUserId
        default: return nil
        }
    }
}
extension IGPGeoGetComment.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = IGPGeoGetComment
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpRequest": return self.igpRequest
            case "igpUserId": return self.igpUserId
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
            case "igpUserId":
                guard let newSubscriptValue = newSubscriptValue as? Int64 else {
                    return
                }
                self.igpUserId = newSubscriptValue
            default: return
            }
        }
    }
}
extension IGPGeoGetCommentResponse: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPGeoGetCommentResponse> {
        var mergedArray = Array<IGPGeoGetCommentResponse>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPGeoGetCommentResponse? {
        return try IGPGeoGetCommentResponse.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPGeoGetCommentResponse {
        return try IGPGeoGetCommentResponse.Builder().mergeFrom(data: data, extensionRegistry:GeoGetCommentRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPGeoGetCommentResponse {
        return try IGPGeoGetCommentResponse.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPGeoGetCommentResponse {
        return try IGPGeoGetCommentResponse.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPGeoGetCommentResponse {
        return try IGPGeoGetCommentResponse.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPGeoGetCommentResponse {
        return try IGPGeoGetCommentResponse.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPGeoGetCommentResponse {
        return try IGPGeoGetCommentResponse.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpResponse": return self.igpResponse
        case "igpComment": return self.igpComment
        default: return nil
        }
    }
}
extension IGPGeoGetCommentResponse.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = IGPGeoGetCommentResponse
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpResponse": return self.igpResponse
            case "igpComment": return self.igpComment
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
            case "igpComment":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.igpComment = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)
