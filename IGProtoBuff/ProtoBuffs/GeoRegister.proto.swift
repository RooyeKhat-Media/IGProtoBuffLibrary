/// Generated by the Protocol Buffers 3.4.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.22
/// Source file "GeoRegister.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct GeoRegisterRoot {
    public static let `default` = GeoRegisterRoot()
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

final public class IGPGeoRegister : GeneratedMessage {
    public typealias BuilderType = IGPGeoRegister.Builder

    public static func == (lhs: IGPGeoRegister, rhs: IGPGeoRegister) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpRequest == rhs.hasIgpRequest) && (!lhs.hasIgpRequest || lhs.igpRequest == rhs.igpRequest)
        fieldCheck = fieldCheck && (lhs.hasIgpEnable == rhs.hasIgpEnable) && (!lhs.hasIgpEnable || lhs.igpEnable == rhs.igpEnable)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpRequest:IGPRequest!
    public fileprivate(set) var hasIgpRequest:Bool = false
    public fileprivate(set) var igpEnable:Bool! = nil
    public fileprivate(set) var hasIgpEnable:Bool = false

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
        if hasIgpEnable {
            try codedOutputStream.writeBool(fieldNumber: 2, value:igpEnable)
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
        if hasIgpEnable {
            serialize_size += igpEnable.computeBoolSize(fieldNumber: 2)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPGeoRegister.Builder {
        return IGPGeoRegister.classBuilder() as! IGPGeoRegister.Builder
    }
    public func getBuilder() -> IGPGeoRegister.Builder {
        return classBuilder() as! IGPGeoRegister.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPGeoRegister.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPGeoRegister.Builder()
    }
    public func toBuilder() throws -> IGPGeoRegister.Builder {
        return try IGPGeoRegister.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPGeoRegister) throws -> IGPGeoRegister.Builder {
        return try IGPGeoRegister.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpRequest {
            jsonMap["IGPRequest"] = try igpRequest.encode()
        }
        if hasIgpEnable {
            jsonMap["IGPEnable"] = igpEnable
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPGeoRegister {
        return try IGPGeoRegister.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPGeoRegister {
        return try IGPGeoRegister.Builder.fromJSONToBuilder(data:data).build()
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
        if hasIgpEnable {
            output += "\(indent) igpEnable: \(igpEnable) \n"
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
            if hasIgpEnable {
                hashCode = (hashCode &* 31) &+ igpEnable.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPGeoRegister"
    }
    override public func className() -> String {
        return "IGPGeoRegister"
    }
    //Meta information declaration end

    final public class Builder : GeneratedRequestMessageBuilder {
        fileprivate var builderResult:IGPGeoRegister = IGPGeoRegister()
        public func getMessage() -> IGPGeoRegister {
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
        public override func setIgpRequest(_ value:IGPRequest!) -> IGPGeoRegister.Builder {
            self.igpRequest = value
            return self
        }
        @discardableResult
        public func mergeIgpRequest(value:IGPRequest) throws -> IGPGeoRegister.Builder {
            if builderResult.hasIgpRequest {
                builderResult.igpRequest = try IGPRequest.builderWithPrototype(prototype:builderResult.igpRequest).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpRequest = value
            }
            builderResult.hasIgpRequest = true
            return self
        }
        @discardableResult
        public func clearIgpRequest() -> IGPGeoRegister.Builder {
            igpRequestBuilder_ = nil
            builderResult.hasIgpRequest = false
            builderResult.igpRequest = nil
            return self
        }
        public var igpEnable:Bool {
            get {
                return builderResult.igpEnable
            }
            set (value) {
                builderResult.hasIgpEnable = true
                builderResult.igpEnable = value
            }
        }
        public var hasIgpEnable:Bool {
            get {
                return builderResult.hasIgpEnable
            }
        }
        @discardableResult
        public func setIgpEnable(_ value:Bool) -> IGPGeoRegister.Builder {
            self.igpEnable = value
            return self
        }
        @discardableResult
        public func clearIgpEnable() -> IGPGeoRegister.Builder{
            builderResult.hasIgpEnable = false
            builderResult.igpEnable = nil
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPGeoRegister.Builder {
            builderResult = IGPGeoRegister()
            return self
        }
        override public func clone() throws -> IGPGeoRegister.Builder {
            return try IGPGeoRegister.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPGeoRegister {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPGeoRegister {
            let returnMe:IGPGeoRegister = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPGeoRegister) throws -> IGPGeoRegister.Builder {
            if other == IGPGeoRegister() {
                return self
            }
            if (other.hasIgpRequest) {
                try mergeIgpRequest(value: other.igpRequest)
            }
            if other.hasIgpEnable {
                igpEnable = other.igpEnable
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPGeoRegister.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPGeoRegister.Builder {
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
                    igpEnable = try codedInputStream.readBool()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPGeoRegister.Builder {
            let resultDecodedBuilder = IGPGeoRegister.Builder()
            if let jsonValueIgpRequest = jsonMap["IGPRequest"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpRequest = try IGPRequest.Builder.decodeToBuilder(jsonMap:jsonValueIgpRequest).build()

            }
            if let jsonValueIgpEnable = jsonMap["IGPEnable"] as? Bool {
                resultDecodedBuilder.igpEnable = jsonValueIgpEnable
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPGeoRegister.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPGeoRegister.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

final public class IGPGeoRegisterResponse : GeneratedResponseMessage {
    public typealias BuilderType = IGPGeoRegisterResponse.Builder

    public static func == (lhs: IGPGeoRegisterResponse, rhs: IGPGeoRegisterResponse) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpResponse == rhs.hasIgpResponse) && (!lhs.hasIgpResponse || lhs.igpResponse == rhs.igpResponse)
        fieldCheck = fieldCheck && (lhs.hasIgpEnable == rhs.hasIgpEnable) && (!lhs.hasIgpEnable || lhs.igpEnable == rhs.igpEnable)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpEnable:Bool! = nil
    public fileprivate(set) var hasIgpEnable:Bool = false

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
        if hasIgpEnable {
            try codedOutputStream.writeBool(fieldNumber: 2, value:igpEnable)
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
        if hasIgpEnable {
            serialize_size += igpEnable.computeBoolSize(fieldNumber: 2)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPGeoRegisterResponse.Builder {
        return IGPGeoRegisterResponse.classBuilder() as! IGPGeoRegisterResponse.Builder
    }
    public func getBuilder() -> IGPGeoRegisterResponse.Builder {
        return classBuilder() as! IGPGeoRegisterResponse.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPGeoRegisterResponse.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPGeoRegisterResponse.Builder()
    }
    public func toBuilder() throws -> IGPGeoRegisterResponse.Builder {
        return try IGPGeoRegisterResponse.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPGeoRegisterResponse) throws -> IGPGeoRegisterResponse.Builder {
        return try IGPGeoRegisterResponse.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpResponse {
            jsonMap["IGPResponse"] = try igpResponse.encode()
        }
        if hasIgpEnable {
            jsonMap["IGPEnable"] = igpEnable
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPGeoRegisterResponse {
        return try IGPGeoRegisterResponse.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPGeoRegisterResponse {
        return try IGPGeoRegisterResponse.Builder.fromJSONToBuilder(data:data).build()
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
        if hasIgpEnable {
            output += "\(indent) igpEnable: \(igpEnable) \n"
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
            if hasIgpEnable {
                hashCode = (hashCode &* 31) &+ igpEnable.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPGeoRegisterResponse"
    }
    override public func className() -> String {
        return "IGPGeoRegisterResponse"
    }
    //Meta information declaration end

    final public class Builder : GeneratedResponseMessageBuilder {
        fileprivate var builderResult:IGPGeoRegisterResponse = IGPGeoRegisterResponse()
        public func getMessage() -> IGPGeoRegisterResponse {
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
        public func setIgpResponse(_ value:IGPResponse!) -> IGPGeoRegisterResponse.Builder {
            self.igpResponse = value
            return self
        }
        @discardableResult
        public func mergeIgpResponse(value:IGPResponse) throws -> IGPGeoRegisterResponse.Builder {
            if builderResult.hasIgpResponse {
                builderResult.igpResponse = try IGPResponse.builderWithPrototype(prototype:builderResult.igpResponse).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpResponse = value
            }
            builderResult.hasIgpResponse = true
            return self
        }
        @discardableResult
        public func clearIgpResponse() -> IGPGeoRegisterResponse.Builder {
            igpResponseBuilder_ = nil
            builderResult.hasIgpResponse = false
            builderResult.igpResponse = nil
            return self
        }
        public var igpEnable:Bool {
            get {
                return builderResult.igpEnable
            }
            set (value) {
                builderResult.hasIgpEnable = true
                builderResult.igpEnable = value
            }
        }
        public var hasIgpEnable:Bool {
            get {
                return builderResult.hasIgpEnable
            }
        }
        @discardableResult
        public func setIgpEnable(_ value:Bool) -> IGPGeoRegisterResponse.Builder {
            self.igpEnable = value
            return self
        }
        @discardableResult
        public func clearIgpEnable() -> IGPGeoRegisterResponse.Builder{
            builderResult.hasIgpEnable = false
            builderResult.igpEnable = nil
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPGeoRegisterResponse.Builder {
            builderResult = IGPGeoRegisterResponse()
            return self
        }
        override public func clone() throws -> IGPGeoRegisterResponse.Builder {
            return try IGPGeoRegisterResponse.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPGeoRegisterResponse {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPGeoRegisterResponse {
            let returnMe:IGPGeoRegisterResponse = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPGeoRegisterResponse) throws -> IGPGeoRegisterResponse.Builder {
            if other == IGPGeoRegisterResponse() {
                return self
            }
            if (other.hasIgpResponse) {
                try mergeIgpResponse(value: other.igpResponse)
            }
            if other.hasIgpEnable {
                igpEnable = other.igpEnable
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPGeoRegisterResponse.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPGeoRegisterResponse.Builder {
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
                    igpEnable = try codedInputStream.readBool()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPGeoRegisterResponse.Builder {
            let resultDecodedBuilder = IGPGeoRegisterResponse.Builder()
            if let jsonValueIgpResponse = jsonMap["IGPResponse"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpResponse = try IGPResponse.Builder.decodeToBuilder(jsonMap:jsonValueIgpResponse).build()

            }
            if let jsonValueIgpEnable = jsonMap["IGPEnable"] as? Bool {
                resultDecodedBuilder.igpEnable = jsonValueIgpEnable
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPGeoRegisterResponse.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPGeoRegisterResponse.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension IGPGeoRegister: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPGeoRegister> {
        var mergedArray = Array<IGPGeoRegister>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPGeoRegister? {
        return try IGPGeoRegister.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPGeoRegister {
        return try IGPGeoRegister.Builder().mergeFrom(data: data, extensionRegistry:GeoRegisterRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPGeoRegister {
        return try IGPGeoRegister.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPGeoRegister {
        return try IGPGeoRegister.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPGeoRegister {
        return try IGPGeoRegister.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPGeoRegister {
        return try IGPGeoRegister.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPGeoRegister {
        return try IGPGeoRegister.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpRequest": return self.igpRequest
        case "igpEnable": return self.igpEnable
        default: return nil
        }
    }
}
extension IGPGeoRegister.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = IGPGeoRegister
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpRequest": return self.igpRequest
            case "igpEnable": return self.igpEnable
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
            case "igpEnable":
                guard let newSubscriptValue = newSubscriptValue as? Bool else {
                    return
                }
                self.igpEnable = newSubscriptValue
            default: return
            }
        }
    }
}
extension IGPGeoRegisterResponse: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPGeoRegisterResponse> {
        var mergedArray = Array<IGPGeoRegisterResponse>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPGeoRegisterResponse? {
        return try IGPGeoRegisterResponse.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPGeoRegisterResponse {
        return try IGPGeoRegisterResponse.Builder().mergeFrom(data: data, extensionRegistry:GeoRegisterRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPGeoRegisterResponse {
        return try IGPGeoRegisterResponse.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPGeoRegisterResponse {
        return try IGPGeoRegisterResponse.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPGeoRegisterResponse {
        return try IGPGeoRegisterResponse.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPGeoRegisterResponse {
        return try IGPGeoRegisterResponse.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPGeoRegisterResponse {
        return try IGPGeoRegisterResponse.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpResponse": return self.igpResponse
        case "igpEnable": return self.igpEnable
        default: return nil
        }
    }
}
extension IGPGeoRegisterResponse.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = IGPGeoRegisterResponse
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpResponse": return self.igpResponse
            case "igpEnable": return self.igpEnable
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
            case "igpEnable":
                guard let newSubscriptValue = newSubscriptValue as? Bool else {
                    return
                }
                self.igpEnable = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)
