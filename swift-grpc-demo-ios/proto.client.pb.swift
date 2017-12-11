/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: proto/user.proto
 *
 */

/*
 * Copyright 2017, gRPC Authors All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import Foundation
import Dispatch
import gRPC

/// Type for errors thrown from generated client code.
internal enum Proto_UserServiceClientError : Error {
  case endOfStream
  case invalidMessageReceived
  case error(c: CallResult)
}

/// Create (Unary)
internal class Proto_UserServiceCreateCall {
  private var call : Call

  /// Create a call.
  fileprivate init(_ channel: Channel) {
    self.call = channel.makeCall("/proto.UserService/Create")
  }

  /// Run the call. Blocks until the reply is received.
  fileprivate func run(request: Proto_CreateRequest,
                       metadata: Metadata) throws -> Proto_CreateResponse {
    let sem = DispatchSemaphore(value: 0)
    var returnCallResult : CallResult!
    var returnResponse : Proto_CreateResponse?
    _ = try start(request:request, metadata:metadata) {response, callResult in
      returnResponse = response
      returnCallResult = callResult
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
    if let returnResponse = returnResponse {
      return returnResponse
    } else {
      throw Proto_UserServiceClientError.error(c: returnCallResult)
    }
  }

  /// Start the call. Nonblocking.
  fileprivate func start(request: Proto_CreateRequest,
                         metadata: Metadata,
                         completion: @escaping (Proto_CreateResponse?, CallResult)->())
    throws -> Proto_UserServiceCreateCall {

      let requestData = try request.serializedData()
      try call.start(.unary,
                     metadata:metadata,
                     message:requestData)
      {(callResult) in
        if let responseData = callResult.resultData,
          let response = try? Proto_CreateResponse(serializedData:responseData) {
          completion(response, callResult)
        } else {
          completion(nil, callResult)
        }
      }
      return self
  }
}

/// Get (Unary)
internal class Proto_UserServiceGetCall {
  private var call : Call

  /// Create a call.
  fileprivate init(_ channel: Channel) {
    self.call = channel.makeCall("/proto.UserService/Get")
  }

  /// Run the call. Blocks until the reply is received.
  fileprivate func run(request: Proto_GetRequest,
                       metadata: Metadata) throws -> Proto_GetResponse {
    let sem = DispatchSemaphore(value: 0)
    var returnCallResult : CallResult!
    var returnResponse : Proto_GetResponse?
    _ = try start(request:request, metadata:metadata) {response, callResult in
      returnResponse = response
      returnCallResult = callResult
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
    if let returnResponse = returnResponse {
      return returnResponse
    } else {
      throw Proto_UserServiceClientError.error(c: returnCallResult)
    }
  }

  /// Start the call. Nonblocking.
  fileprivate func start(request: Proto_GetRequest,
                         metadata: Metadata,
                         completion: @escaping (Proto_GetResponse?, CallResult)->())
    throws -> Proto_UserServiceGetCall {

      let requestData = try request.serializedData()
      try call.start(.unary,
                     metadata:metadata,
                     message:requestData)
      {(callResult) in
        if let responseData = callResult.resultData,
          let response = try? Proto_GetResponse(serializedData:responseData) {
          completion(response, callResult)
        } else {
          completion(nil, callResult)
        }
      }
      return self
  }
}

/// GetAll (Unary)
internal class Proto_UserServiceGetAllCall {
  private var call : Call

  /// Create a call.
  fileprivate init(_ channel: Channel) {
    self.call = channel.makeCall("/proto.UserService/GetAll")
  }

  /// Run the call. Blocks until the reply is received.
  fileprivate func run(request: Proto_GetAllRequest,
                       metadata: Metadata) throws -> Proto_GetAllResponse {
    let sem = DispatchSemaphore(value: 0)
    var returnCallResult : CallResult!
    var returnResponse : Proto_GetAllResponse?
    _ = try start(request:request, metadata:metadata) {response, callResult in
      returnResponse = response
      returnCallResult = callResult
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
    if let returnResponse = returnResponse {
      return returnResponse
    } else {
      throw Proto_UserServiceClientError.error(c: returnCallResult)
    }
  }

  /// Start the call. Nonblocking.
  fileprivate func start(request: Proto_GetAllRequest,
                         metadata: Metadata,
                         completion: @escaping (Proto_GetAllResponse?, CallResult)->())
    throws -> Proto_UserServiceGetAllCall {

      let requestData = try request.serializedData()
      try call.start(.unary,
                     metadata:metadata,
                     message:requestData)
      {(callResult) in
        if let responseData = callResult.resultData,
          let response = try? Proto_GetAllResponse(serializedData:responseData) {
          completion(response, callResult)
        } else {
          completion(nil, callResult)
        }
      }
      return self
  }
}

/// Update (Unary)
internal class Proto_UserServiceUpdateCall {
  private var call : Call

  /// Create a call.
  fileprivate init(_ channel: Channel) {
    self.call = channel.makeCall("/proto.UserService/Update")
  }

  /// Run the call. Blocks until the reply is received.
  fileprivate func run(request: Proto_UpdateRequest,
                       metadata: Metadata) throws -> Proto_UpdateResponse {
    let sem = DispatchSemaphore(value: 0)
    var returnCallResult : CallResult!
    var returnResponse : Proto_UpdateResponse?
    _ = try start(request:request, metadata:metadata) {response, callResult in
      returnResponse = response
      returnCallResult = callResult
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
    if let returnResponse = returnResponse {
      return returnResponse
    } else {
      throw Proto_UserServiceClientError.error(c: returnCallResult)
    }
  }

  /// Start the call. Nonblocking.
  fileprivate func start(request: Proto_UpdateRequest,
                         metadata: Metadata,
                         completion: @escaping (Proto_UpdateResponse?, CallResult)->())
    throws -> Proto_UserServiceUpdateCall {

      let requestData = try request.serializedData()
      try call.start(.unary,
                     metadata:metadata,
                     message:requestData)
      {(callResult) in
        if let responseData = callResult.resultData,
          let response = try? Proto_UpdateResponse(serializedData:responseData) {
          completion(response, callResult)
        } else {
          completion(nil, callResult)
        }
      }
      return self
  }
}

/// Delete (Unary)
internal class Proto_UserServiceDeleteCall {
  private var call : Call

  /// Create a call.
  fileprivate init(_ channel: Channel) {
    self.call = channel.makeCall("/proto.UserService/Delete")
  }

  /// Run the call. Blocks until the reply is received.
  fileprivate func run(request: Proto_DeleteRequest,
                       metadata: Metadata) throws -> Proto_DeleteResponse {
    let sem = DispatchSemaphore(value: 0)
    var returnCallResult : CallResult!
    var returnResponse : Proto_DeleteResponse?
    _ = try start(request:request, metadata:metadata) {response, callResult in
      returnResponse = response
      returnCallResult = callResult
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
    if let returnResponse = returnResponse {
      return returnResponse
    } else {
      throw Proto_UserServiceClientError.error(c: returnCallResult)
    }
  }

  /// Start the call. Nonblocking.
  fileprivate func start(request: Proto_DeleteRequest,
                         metadata: Metadata,
                         completion: @escaping (Proto_DeleteResponse?, CallResult)->())
    throws -> Proto_UserServiceDeleteCall {

      let requestData = try request.serializedData()
      try call.start(.unary,
                     metadata:metadata,
                     message:requestData)
      {(callResult) in
        if let responseData = callResult.resultData,
          let response = try? Proto_DeleteResponse(serializedData:responseData) {
          completion(response, callResult)
        } else {
          completion(nil, callResult)
        }
      }
      return self
  }
}

/// Call methods of this class to make API calls.
internal class Proto_UserServiceService {
  private var channel: Channel

  /// This metadata will be sent with all requests.
  internal var metadata : Metadata

  /// This property allows the service host name to be overridden.
  /// For example, it can be used to make calls to "localhost:8080"
  /// appear to be to "example.com".
  internal var host : String {
    get {
      return self.channel.host
    }
    set {
      self.channel.host = newValue
    }
  }

  /// Create a client that makes insecure connections.
  internal init(address: String) {
    gRPC.initialize()
    channel = Channel(address:address)
    metadata = Metadata()
  }

  /// Create a client that makes secure connections.
  internal init(address: String, certificates: String?, host: String?) {
    gRPC.initialize()
    channel = Channel(address:address, certificates:certificates, host:host)
    metadata = Metadata()
  }

  /// Synchronous. Unary.
  internal func create(_ request: Proto_CreateRequest)
    throws
    -> Proto_CreateResponse {
      return try Proto_UserServiceCreateCall(channel).run(request:request, metadata:metadata)
  }
  /// Asynchronous. Unary.
  internal func create(_ request: Proto_CreateRequest,
                  completion: @escaping (Proto_CreateResponse?, CallResult)->())
    throws
    -> Proto_UserServiceCreateCall {
      return try Proto_UserServiceCreateCall(channel).start(request:request,
                                                 metadata:metadata,
                                                 completion:completion)
  }
  /// Synchronous. Unary.
  internal func get(_ request: Proto_GetRequest)
    throws
    -> Proto_GetResponse {
      return try Proto_UserServiceGetCall(channel).run(request:request, metadata:metadata)
  }
  /// Asynchronous. Unary.
  internal func get(_ request: Proto_GetRequest,
                  completion: @escaping (Proto_GetResponse?, CallResult)->())
    throws
    -> Proto_UserServiceGetCall {
      return try Proto_UserServiceGetCall(channel).start(request:request,
                                                 metadata:metadata,
                                                 completion:completion)
  }
  /// Synchronous. Unary.
  internal func getall(_ request: Proto_GetAllRequest)
    throws
    -> Proto_GetAllResponse {
      return try Proto_UserServiceGetAllCall(channel).run(request:request, metadata:metadata)
  }
  /// Asynchronous. Unary.
  internal func getall(_ request: Proto_GetAllRequest,
                  completion: @escaping (Proto_GetAllResponse?, CallResult)->())
    throws
    -> Proto_UserServiceGetAllCall {
      return try Proto_UserServiceGetAllCall(channel).start(request:request,
                                                 metadata:metadata,
                                                 completion:completion)
  }
  /// Synchronous. Unary.
  internal func update(_ request: Proto_UpdateRequest)
    throws
    -> Proto_UpdateResponse {
      return try Proto_UserServiceUpdateCall(channel).run(request:request, metadata:metadata)
  }
  /// Asynchronous. Unary.
  internal func update(_ request: Proto_UpdateRequest,
                  completion: @escaping (Proto_UpdateResponse?, CallResult)->())
    throws
    -> Proto_UserServiceUpdateCall {
      return try Proto_UserServiceUpdateCall(channel).start(request:request,
                                                 metadata:metadata,
                                                 completion:completion)
  }
  /// Synchronous. Unary.
  internal func delete(_ request: Proto_DeleteRequest)
    throws
    -> Proto_DeleteResponse {
      return try Proto_UserServiceDeleteCall(channel).run(request:request, metadata:metadata)
  }
  /// Asynchronous. Unary.
  internal func delete(_ request: Proto_DeleteRequest,
                  completion: @escaping (Proto_DeleteResponse?, CallResult)->())
    throws
    -> Proto_UserServiceDeleteCall {
      return try Proto_UserServiceDeleteCall(channel).start(request:request,
                                                 metadata:metadata,
                                                 completion:completion)
  }
}
