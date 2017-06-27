/// Generated by the Protocol Buffers 3.2.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.13
/// Source file "SignalingClearLog.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct SignalingClearLogRoot {
    public static let `default` = SignalingClearLogRoot()
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

final public class IGPSignalingClearLog : GeneratedMessage {

    public static func == (lhs: IGPSignalingClearLog, rhs: IGPSignalingClearLog) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpRequest == rhs.hasIgpRequest) && (!lhs.hasIgpRequest || lhs.igpRequest == rhs.igpRequest)
        fieldCheck = fieldCheck && (lhs.hasIgpClearId == rhs.hasIgpClearId) && (!lhs.hasIgpClearId || lhs.igpClearId == rhs.igpClearId)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpRequest:IGPRequest!
    public fileprivate(set) var hasIgpRequest:Bool = false
    public fileprivate(set) var igpClearId:Int64 = Int64(0)
    public fileprivate(set) var hasIgpClearId:Bool = false

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
        if hasIgpClearId {
            try codedOutputStream.writeInt64(fieldNumber: 2, value:igpClearId)
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
        if hasIgpClearId {
            serialize_size += igpClearId.computeInt64Size(fieldNumber: 2)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPSignalingClearLog.Builder {
        return IGPSignalingClearLog.classBuilder() as! IGPSignalingClearLog.Builder
    }
    public func getBuilder() -> IGPSignalingClearLog.Builder {
        return classBuilder() as! IGPSignalingClearLog.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPSignalingClearLog.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPSignalingClearLog.Builder()
    }
    public func toBuilder() throws -> IGPSignalingClearLog.Builder {
        return try IGPSignalingClearLog.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPSignalingClearLog) throws -> IGPSignalingClearLog.Builder {
        return try IGPSignalingClearLog.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpRequest {
            jsonMap["IGPRequest"] = try igpRequest.encode()
        }
        if hasIgpClearId {
            jsonMap["IGPClearId"] = "\(igpClearId)"
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPSignalingClearLog {
        return try IGPSignalingClearLog.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPSignalingClearLog {
        return try IGPSignalingClearLog.Builder.fromJSONToBuilder(data:data).build()
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
        if hasIgpClearId {
            output += "\(indent) igpClearId: \(igpClearId) \n"
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
            if hasIgpClearId {
                hashCode = (hashCode &* 31) &+ igpClearId.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPSignalingClearLog"
    }
    override public func className() -> String {
        return "IGPSignalingClearLog"
    }
    //Meta information declaration end

    final public class Builder : GeneratedRequestMessageBuilder {
        fileprivate var builderResult:IGPSignalingClearLog = IGPSignalingClearLog()
        public func getMessage() -> IGPSignalingClearLog {
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
        public override func setIgpRequest(_ value:IGPRequest!) -> IGPSignalingClearLog.Builder {
            self.igpRequest = value
            return self
        }
        @discardableResult
        public func mergeIgpRequest(value:IGPRequest) throws -> IGPSignalingClearLog.Builder {
            if builderResult.hasIgpRequest {
                builderResult.igpRequest = try IGPRequest.builderWithPrototype(prototype:builderResult.igpRequest).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpRequest = value
            }
            builderResult.hasIgpRequest = true
            return self
        }
        @discardableResult
        public func clearIgpRequest() -> IGPSignalingClearLog.Builder {
            igpRequestBuilder_ = nil
            builderResult.hasIgpRequest = false
            builderResult.igpRequest = nil
            return self
        }
        public var igpClearId:Int64 {
            get {
                return builderResult.igpClearId
            }
            set (value) {
                builderResult.hasIgpClearId = true
                builderResult.igpClearId = value
            }
        }
        public var hasIgpClearId:Bool {
            get {
                return builderResult.hasIgpClearId
            }
        }
        @discardableResult
        public func setIgpClearId(_ value:Int64) -> IGPSignalingClearLog.Builder {
            self.igpClearId = value
            return self
        }
        @discardableResult
        public func clearIgpClearId() -> IGPSignalingClearLog.Builder{
            builderResult.hasIgpClearId = false
            builderResult.igpClearId = Int64(0)
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPSignalingClearLog.Builder {
            builderResult = IGPSignalingClearLog()
            return self
        }
        override public func clone() throws -> IGPSignalingClearLog.Builder {
            return try IGPSignalingClearLog.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPSignalingClearLog {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPSignalingClearLog {
            let returnMe:IGPSignalingClearLog = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPSignalingClearLog) throws -> IGPSignalingClearLog.Builder {
            if other == IGPSignalingClearLog() {
                return self
            }
            if (other.hasIgpRequest) {
                try mergeIgpRequest(value: other.igpRequest)
            }
            if other.hasIgpClearId {
                igpClearId = other.igpClearId
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPSignalingClearLog.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPSignalingClearLog.Builder {
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
                    igpClearId = try codedInputStream.readInt64()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPSignalingClearLog.Builder {
            let resultDecodedBuilder = IGPSignalingClearLog.Builder()
            if let jsonValueIgpRequest = jsonMap["IGPRequest"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpRequest = try IGPRequest.Builder.decodeToBuilder(jsonMap:jsonValueIgpRequest).build()

            }
            if let jsonValueIgpClearId = jsonMap["IGPClearId"] as? String {
                resultDecodedBuilder.igpClearId = Int64(jsonValueIgpClearId)!
            } else if let jsonValueIgpClearId = jsonMap["IGPClearId"] as? Int {
                resultDecodedBuilder.igpClearId = Int64(jsonValueIgpClearId)
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPSignalingClearLog.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPSignalingClearLog.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

final public class IGPSignalingClearLogResponse : GeneratedResponseMessage {

    public static func == (lhs: IGPSignalingClearLogResponse, rhs: IGPSignalingClearLogResponse) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpResponse == rhs.hasIgpResponse) && (!lhs.hasIgpResponse || lhs.igpResponse == rhs.igpResponse)
        fieldCheck = fieldCheck && (lhs.hasIgpClearId == rhs.hasIgpClearId) && (!lhs.hasIgpClearId || lhs.igpClearId == rhs.igpClearId)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpClearId:Int64 = Int64(0)
    public fileprivate(set) var hasIgpClearId:Bool = false

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
        if hasIgpClearId {
            try codedOutputStream.writeInt64(fieldNumber: 2, value:igpClearId)
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
        if hasIgpClearId {
            serialize_size += igpClearId.computeInt64Size(fieldNumber: 2)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPSignalingClearLogResponse.Builder {
        return IGPSignalingClearLogResponse.classBuilder() as! IGPSignalingClearLogResponse.Builder
    }
    public func getBuilder() -> IGPSignalingClearLogResponse.Builder {
        return classBuilder() as! IGPSignalingClearLogResponse.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPSignalingClearLogResponse.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPSignalingClearLogResponse.Builder()
    }
    public func toBuilder() throws -> IGPSignalingClearLogResponse.Builder {
        return try IGPSignalingClearLogResponse.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPSignalingClearLogResponse) throws -> IGPSignalingClearLogResponse.Builder {
        return try IGPSignalingClearLogResponse.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpResponse {
            jsonMap["IGPResponse"] = try igpResponse.encode()
        }
        if hasIgpClearId {
            jsonMap["IGPClearId"] = "\(igpClearId)"
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPSignalingClearLogResponse {
        return try IGPSignalingClearLogResponse.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPSignalingClearLogResponse {
        return try IGPSignalingClearLogResponse.Builder.fromJSONToBuilder(data:data).build()
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
        if hasIgpClearId {
            output += "\(indent) igpClearId: \(igpClearId) \n"
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
            if hasIgpClearId {
                hashCode = (hashCode &* 31) &+ igpClearId.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPSignalingClearLogResponse"
    }
    override public func className() -> String {
        return "IGPSignalingClearLogResponse"
    }
    //Meta information declaration end

    final public class Builder : GeneratedResponseMessageBuilder {
        fileprivate var builderResult:IGPSignalingClearLogResponse = IGPSignalingClearLogResponse()
        public func getMessage() -> IGPSignalingClearLogResponse {
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
        public func setIgpResponse(_ value:IGPResponse!) -> IGPSignalingClearLogResponse.Builder {
            self.igpResponse = value
            return self
        }
        @discardableResult
        public func mergeIgpResponse(value:IGPResponse) throws -> IGPSignalingClearLogResponse.Builder {
            if builderResult.hasIgpResponse {
                builderResult.igpResponse = try IGPResponse.builderWithPrototype(prototype:builderResult.igpResponse).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpResponse = value
            }
            builderResult.hasIgpResponse = true
            return self
        }
        @discardableResult
        public func clearIgpResponse() -> IGPSignalingClearLogResponse.Builder {
            igpResponseBuilder_ = nil
            builderResult.hasIgpResponse = false
            builderResult.igpResponse = nil
            return self
        }
        public var igpClearId:Int64 {
            get {
                return builderResult.igpClearId
            }
            set (value) {
                builderResult.hasIgpClearId = true
                builderResult.igpClearId = value
            }
        }
        public var hasIgpClearId:Bool {
            get {
                return builderResult.hasIgpClearId
            }
        }
        @discardableResult
        public func setIgpClearId(_ value:Int64) -> IGPSignalingClearLogResponse.Builder {
            self.igpClearId = value
            return self
        }
        @discardableResult
        public func clearIgpClearId() -> IGPSignalingClearLogResponse.Builder{
            builderResult.hasIgpClearId = false
            builderResult.igpClearId = Int64(0)
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPSignalingClearLogResponse.Builder {
            builderResult = IGPSignalingClearLogResponse()
            return self
        }
        override public func clone() throws -> IGPSignalingClearLogResponse.Builder {
            return try IGPSignalingClearLogResponse.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPSignalingClearLogResponse {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPSignalingClearLogResponse {
            let returnMe:IGPSignalingClearLogResponse = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPSignalingClearLogResponse) throws -> IGPSignalingClearLogResponse.Builder {
            if other == IGPSignalingClearLogResponse() {
                return self
            }
            if (other.hasIgpResponse) {
                try mergeIgpResponse(value: other.igpResponse)
            }
            if other.hasIgpClearId {
                igpClearId = other.igpClearId
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPSignalingClearLogResponse.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPSignalingClearLogResponse.Builder {
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
                    igpClearId = try codedInputStream.readInt64()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPSignalingClearLogResponse.Builder {
            let resultDecodedBuilder = IGPSignalingClearLogResponse.Builder()
            if let jsonValueIgpResponse = jsonMap["IGPResponse"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpResponse = try IGPResponse.Builder.decodeToBuilder(jsonMap:jsonValueIgpResponse).build()

            }
            if let jsonValueIgpClearId = jsonMap["IGPClearId"] as? String {
                resultDecodedBuilder.igpClearId = Int64(jsonValueIgpClearId)!
            } else if let jsonValueIgpClearId = jsonMap["IGPClearId"] as? Int {
                resultDecodedBuilder.igpClearId = Int64(jsonValueIgpClearId)
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPSignalingClearLogResponse.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPSignalingClearLogResponse.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension IGPSignalingClearLog: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPSignalingClearLog> {
        var mergedArray = Array<IGPSignalingClearLog>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPSignalingClearLog? {
        return try IGPSignalingClearLog.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPSignalingClearLog {
        return try IGPSignalingClearLog.Builder().mergeFrom(data: data, extensionRegistry:SignalingClearLogRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPSignalingClearLog {
        return try IGPSignalingClearLog.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPSignalingClearLog {
        return try IGPSignalingClearLog.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPSignalingClearLog {
        return try IGPSignalingClearLog.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPSignalingClearLog {
        return try IGPSignalingClearLog.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPSignalingClearLog {
        return try IGPSignalingClearLog.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpRequest": return self.igpRequest
        case "igpClearId": return self.igpClearId
        default: return nil
        }
    }
}
extension IGPSignalingClearLog.Builder: GeneratedMessageBuilderProtocol {
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpRequest": return self.igpRequest
            case "igpClearId": return self.igpClearId
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
            case "igpClearId":
                guard let newSubscriptValue = newSubscriptValue as? Int64 else {
                    return
                }
                self.igpClearId = newSubscriptValue
            default: return
            }
        }
    }
}
extension IGPSignalingClearLogResponse: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPSignalingClearLogResponse> {
        var mergedArray = Array<IGPSignalingClearLogResponse>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPSignalingClearLogResponse? {
        return try IGPSignalingClearLogResponse.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPSignalingClearLogResponse {
        return try IGPSignalingClearLogResponse.Builder().mergeFrom(data: data, extensionRegistry:SignalingClearLogRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPSignalingClearLogResponse {
        return try IGPSignalingClearLogResponse.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPSignalingClearLogResponse {
        return try IGPSignalingClearLogResponse.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPSignalingClearLogResponse {
        return try IGPSignalingClearLogResponse.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPSignalingClearLogResponse {
        return try IGPSignalingClearLogResponse.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPSignalingClearLogResponse {
        return try IGPSignalingClearLogResponse.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpResponse": return self.igpResponse
        case "igpClearId": return self.igpClearId
        default: return nil
        }
    }
}
extension IGPSignalingClearLogResponse.Builder: GeneratedMessageBuilderProtocol {
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpResponse": return self.igpResponse
            case "igpClearId": return self.igpClearId
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
            case "igpClearId":
                guard let newSubscriptValue = newSubscriptValue as? Int64 else {
                    return
                }
                self.igpClearId = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)
