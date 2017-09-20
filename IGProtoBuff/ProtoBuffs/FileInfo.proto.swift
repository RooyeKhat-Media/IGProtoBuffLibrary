/// Generated by the Protocol Buffers 3.4.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.22
/// Source file "FileInfo.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct FileInfoRoot {
    public static let `default` = FileInfoRoot()
    public var extensionRegistry:ExtensionRegistry

    init() {
        extensionRegistry = ExtensionRegistry()
        registerAllExtensions(registry: extensionRegistry)
        RequestRoot.default.registerAllExtensions(registry: extensionRegistry)
        ResponseRoot.default.registerAllExtensions(registry: extensionRegistry)
        GlobalRoot.default.registerAllExtensions(registry: extensionRegistry)
    }
    public func registerAllExtensions(registry: ExtensionRegistry) {
    }
}

final public class IGPFileInfo : GeneratedMessage {
    public typealias BuilderType = IGPFileInfo.Builder

    public static func == (lhs: IGPFileInfo, rhs: IGPFileInfo) -> Bool {
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
    public class func getBuilder() -> IGPFileInfo.Builder {
        return IGPFileInfo.classBuilder() as! IGPFileInfo.Builder
    }
    public func getBuilder() -> IGPFileInfo.Builder {
        return classBuilder() as! IGPFileInfo.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPFileInfo.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPFileInfo.Builder()
    }
    public func toBuilder() throws -> IGPFileInfo.Builder {
        return try IGPFileInfo.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPFileInfo) throws -> IGPFileInfo.Builder {
        return try IGPFileInfo.Builder().mergeFrom(other:prototype)
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
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPFileInfo {
        return try IGPFileInfo.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPFileInfo {
        return try IGPFileInfo.Builder.fromJSONToBuilder(data:data).build()
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
        return "IGPFileInfo"
    }
    override public func className() -> String {
        return "IGPFileInfo"
    }
    //Meta information declaration end

    final public class Builder : GeneratedRequestMessageBuilder {
        fileprivate var builderResult:IGPFileInfo = IGPFileInfo()
        public func getMessage() -> IGPFileInfo {
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
        public override func setIgpRequest(_ value:IGPRequest!) -> IGPFileInfo.Builder {
            self.igpRequest = value
            return self
        }
        @discardableResult
        public func mergeIgpRequest(value:IGPRequest) throws -> IGPFileInfo.Builder {
            if builderResult.hasIgpRequest {
                builderResult.igpRequest = try IGPRequest.builderWithPrototype(prototype:builderResult.igpRequest).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpRequest = value
            }
            builderResult.hasIgpRequest = true
            return self
        }
        @discardableResult
        public func clearIgpRequest() -> IGPFileInfo.Builder {
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
        public func setIgpToken(_ value:String) -> IGPFileInfo.Builder {
            self.igpToken = value
            return self
        }
        @discardableResult
        public func clearIgpToken() -> IGPFileInfo.Builder{
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
        override public func clear() -> IGPFileInfo.Builder {
            builderResult = IGPFileInfo()
            return self
        }
        override public func clone() throws -> IGPFileInfo.Builder {
            return try IGPFileInfo.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPFileInfo {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPFileInfo {
            let returnMe:IGPFileInfo = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPFileInfo) throws -> IGPFileInfo.Builder {
            if other == IGPFileInfo() {
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
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPFileInfo.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPFileInfo.Builder {
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
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPFileInfo.Builder {
            let resultDecodedBuilder = IGPFileInfo.Builder()
            if let jsonValueIgpRequest = jsonMap["IGPRequest"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpRequest = try IGPRequest.Builder.decodeToBuilder(jsonMap:jsonValueIgpRequest).build()

            }
            if let jsonValueIgpToken = jsonMap["IGPToken"] as? String {
                resultDecodedBuilder.igpToken = jsonValueIgpToken
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPFileInfo.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPFileInfo.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

final public class IGPFileInfoResponse : GeneratedResponseMessage {
    public typealias BuilderType = IGPFileInfoResponse.Builder

    public static func == (lhs: IGPFileInfoResponse, rhs: IGPFileInfoResponse) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpResponse == rhs.hasIgpResponse) && (!lhs.hasIgpResponse || lhs.igpResponse == rhs.igpResponse)
        fieldCheck = fieldCheck && (lhs.hasIgpFile == rhs.hasIgpFile) && (!lhs.hasIgpFile || lhs.igpFile == rhs.igpFile)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpFile:IGPFile!
    public fileprivate(set) var hasIgpFile:Bool = false
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
        if hasIgpFile {
            try codedOutputStream.writeMessage(fieldNumber: 2, value:igpFile)
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
        if hasIgpFile {
            if let varSizeigpFile = igpFile?.computeMessageSize(fieldNumber: 2) {
                serialize_size += varSizeigpFile
            }
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPFileInfoResponse.Builder {
        return IGPFileInfoResponse.classBuilder() as! IGPFileInfoResponse.Builder
    }
    public func getBuilder() -> IGPFileInfoResponse.Builder {
        return classBuilder() as! IGPFileInfoResponse.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPFileInfoResponse.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPFileInfoResponse.Builder()
    }
    public func toBuilder() throws -> IGPFileInfoResponse.Builder {
        return try IGPFileInfoResponse.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPFileInfoResponse) throws -> IGPFileInfoResponse.Builder {
        return try IGPFileInfoResponse.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpResponse {
            jsonMap["IGPResponse"] = try igpResponse.encode()
        }
        if hasIgpFile {
            jsonMap["IGPFile"] = try igpFile.encode()
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPFileInfoResponse {
        return try IGPFileInfoResponse.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPFileInfoResponse {
        return try IGPFileInfoResponse.Builder.fromJSONToBuilder(data:data).build()
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
        if hasIgpFile {
            output += "\(indent) igpFile {\n"
            if let outDescIgpFile = igpFile {
                output += try outDescIgpFile.getDescription(indent: "\(indent)  ")
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
            if hasIgpFile {
                if let hashValueigpFile = igpFile?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValueigpFile
                }
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPFileInfoResponse"
    }
    override public func className() -> String {
        return "IGPFileInfoResponse"
    }
    //Meta information declaration end

    final public class Builder : GeneratedResponseMessageBuilder {
        fileprivate var builderResult:IGPFileInfoResponse = IGPFileInfoResponse()
        public func getMessage() -> IGPFileInfoResponse {
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
        public func setIgpResponse(_ value:IGPResponse!) -> IGPFileInfoResponse.Builder {
            self.igpResponse = value
            return self
        }
        @discardableResult
        public func mergeIgpResponse(value:IGPResponse) throws -> IGPFileInfoResponse.Builder {
            if builderResult.hasIgpResponse {
                builderResult.igpResponse = try IGPResponse.builderWithPrototype(prototype:builderResult.igpResponse).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpResponse = value
            }
            builderResult.hasIgpResponse = true
            return self
        }
        @discardableResult
        public func clearIgpResponse() -> IGPFileInfoResponse.Builder {
            igpResponseBuilder_ = nil
            builderResult.hasIgpResponse = false
            builderResult.igpResponse = nil
            return self
        }
        public var igpFile:IGPFile! {
            get {
                if igpFileBuilder_ != nil {
                    builderResult.igpFile = igpFileBuilder_.getMessage()
                }
                return builderResult.igpFile
            }
            set (value) {
                builderResult.hasIgpFile = true
                builderResult.igpFile = value
            }
        }
        public var hasIgpFile:Bool {
            get {
                return builderResult.hasIgpFile
            }
        }
        fileprivate var igpFileBuilder_:IGPFile.Builder! {
            didSet {
                builderResult.hasIgpFile = true
            }
        }
        public func getIgpFileBuilder() -> IGPFile.Builder {
            if igpFileBuilder_ == nil {
                igpFileBuilder_ = IGPFile.Builder()
                builderResult.igpFile = igpFileBuilder_.getMessage()
                if igpFile != nil {
                    try! igpFileBuilder_.mergeFrom(other: igpFile)
                }
            }
            return igpFileBuilder_
        }
        @discardableResult
        public func setIgpFile(_ value:IGPFile!) -> IGPFileInfoResponse.Builder {
            self.igpFile = value
            return self
        }
        @discardableResult
        public func mergeIgpFile(value:IGPFile) throws -> IGPFileInfoResponse.Builder {
            if builderResult.hasIgpFile {
                builderResult.igpFile = try IGPFile.builderWithPrototype(prototype:builderResult.igpFile).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.igpFile = value
            }
            builderResult.hasIgpFile = true
            return self
        }
        @discardableResult
        public func clearIgpFile() -> IGPFileInfoResponse.Builder {
            igpFileBuilder_ = nil
            builderResult.hasIgpFile = false
            builderResult.igpFile = nil
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPFileInfoResponse.Builder {
            builderResult = IGPFileInfoResponse()
            return self
        }
        override public func clone() throws -> IGPFileInfoResponse.Builder {
            return try IGPFileInfoResponse.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPFileInfoResponse {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPFileInfoResponse {
            let returnMe:IGPFileInfoResponse = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPFileInfoResponse) throws -> IGPFileInfoResponse.Builder {
            if other == IGPFileInfoResponse() {
                return self
            }
            if (other.hasIgpResponse) {
                try mergeIgpResponse(value: other.igpResponse)
            }
            if (other.hasIgpFile) {
                try mergeIgpFile(value: other.igpFile)
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPFileInfoResponse.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPFileInfoResponse.Builder {
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
                    let subBuilder:IGPFile.Builder = IGPFile.Builder()
                    if hasIgpFile {
                        try subBuilder.mergeFrom(other: igpFile)
                    }
                    try codedInputStream.readMessage(builder: subBuilder, extensionRegistry:extensionRegistry)
                    igpFile = subBuilder.buildPartial()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPFileInfoResponse.Builder {
            let resultDecodedBuilder = IGPFileInfoResponse.Builder()
            if let jsonValueIgpResponse = jsonMap["IGPResponse"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpResponse = try IGPResponse.Builder.decodeToBuilder(jsonMap:jsonValueIgpResponse).build()

            }
            if let jsonValueIgpFile = jsonMap["IGPFile"] as? Dictionary<String,Any> {
                resultDecodedBuilder.igpFile = try IGPFile.Builder.decodeToBuilder(jsonMap:jsonValueIgpFile).build()

            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPFileInfoResponse.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPFileInfoResponse.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension IGPFileInfo: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPFileInfo> {
        var mergedArray = Array<IGPFileInfo>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPFileInfo? {
        return try IGPFileInfo.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPFileInfo {
        return try IGPFileInfo.Builder().mergeFrom(data: data, extensionRegistry:FileInfoRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPFileInfo {
        return try IGPFileInfo.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPFileInfo {
        return try IGPFileInfo.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPFileInfo {
        return try IGPFileInfo.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPFileInfo {
        return try IGPFileInfo.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPFileInfo {
        return try IGPFileInfo.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpRequest": return self.igpRequest
        case "igpToken": return self.igpToken
        default: return nil
        }
    }
}
extension IGPFileInfo.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = IGPFileInfo
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
extension IGPFileInfoResponse: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPFileInfoResponse> {
        var mergedArray = Array<IGPFileInfoResponse>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPFileInfoResponse? {
        return try IGPFileInfoResponse.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPFileInfoResponse {
        return try IGPFileInfoResponse.Builder().mergeFrom(data: data, extensionRegistry:FileInfoRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPFileInfoResponse {
        return try IGPFileInfoResponse.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPFileInfoResponse {
        return try IGPFileInfoResponse.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPFileInfoResponse {
        return try IGPFileInfoResponse.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPFileInfoResponse {
        return try IGPFileInfoResponse.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPFileInfoResponse {
        return try IGPFileInfoResponse.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpResponse": return self.igpResponse
        case "igpFile": return self.igpFile
        default: return nil
        }
    }
}
extension IGPFileInfoResponse.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = IGPFileInfoResponse
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpResponse": return self.igpResponse
            case "igpFile": return self.igpFile
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
            case "igpFile":
                guard let newSubscriptValue = newSubscriptValue as? IGPFile else {
                    return
                }
                self.igpFile = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)
