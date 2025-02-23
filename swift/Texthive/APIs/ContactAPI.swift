//
// ContactAPI.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ContactAPI {

    weak var client: TexthiveClient?

    public init(client: TexthiveClient) {
        self.client = client
    }

    /**
     Retrieve a contact by ID
     
     - parameter customerId: (path) Unique identifier of the customer account 
     - parameter id: (path) Unique identifier of the contact 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getContactByIdSync(customerId: String, id: String, apiResponseQueue: DispatchQueue = TexthiveAPI.apiResponseQueue, completion: @escaping ((_ data: Contact?, _ error: Error?) -> Void)) -> RequestTask {
        return getContactByIdWithRequestBuilder(customerId: customerId, id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Retrieve a contact by ID
     
     - parameter customerId: (path) Unique identifier of the customer account 
     - parameter id: (path) Unique identifier of the contact 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    private class func getContactByIdAsyncMappedParams(customerId: String, id: String) async throws -> Contact {
        return try await withCheckedThrowingContinuation { continuation in
            getContactByIdWithRequestBuilder(customerId: customerId, id: id).execute { result in
                switch result {
                case let .success(response):
                    continuation.resume(returning: response.body)
                case let .failure(error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }

    /**
     Retrieve a contact by ID
     
     - parameter customerId: (path) Unique identifier of the customer account 
     - parameter id: (path) Unique identifier of the contact 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    open class func getContactById(
        customerId: String,
        id: String
    ) async throws -> Contact {
        return try await withCheckedThrowingContinuation { continuation in
            getContactByIdWithRequestBuilder(customerId: customerId, id: id).execute { result in
                switch result {
                case let .success(response):
                    continuation.resume(returning: response.body)
                case let .failure(error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }


    /**
     Retrieve a contact by ID
     
     - parameter customerId: (path) Unique identifier of the customer account 
     - parameter id: (path) Unique identifier of the contact 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    open func getContactById(
        customerId: String,
        id: String
    ) async throws -> Contact {
        return try await withCheckedThrowingContinuation { continuation in
            getContactByIdWithRequestBuilder(customerId: customerId, id: id).execute { result in
                switch result {
                case let .success(response):
                    continuation.resume(returning: response.body)
                case let .failure(error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }



    /**
     Retrieve a contact by ID
     - GET /contact/{customerId}/id/{id}
     - Fetches detailed contact information including available messaging channels and verification status. Use this endpoint when you need to look up a specific contact using their unique identifier.
     - API Key:
       - type: apiKey x-api-key 
       - name: ApiKey
     - BASIC:
       - type: http
       - name: BearerAuth
     - parameter customerId: (path) Unique identifier of the customer account 
     - parameter id: (path) Unique identifier of the contact 
     - returns: RequestBuilder<Contact> Fetches detailed contact information including available messaging channels and verification status. Use this endpoint when you need to look up a specific contact using their unique identifier.
     */
    open class func getContactByIdWithRequestBuilder(
            customerId: String,
            id: String
    ) -> RequestBuilder<Contact> {
        let basePath = TexthiveAPI.basePath;
        var localVariablePath = "/contact/{customerId}/id/{id}"
        let customerIdPreEscape = "\(APIHelper.mapValueToPathItem(customerId))"
        let customerIdPostEscape = customerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{customerId}", with: customerIdPostEscape, options: .literal, range: nil)
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        var localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        do {
            try Authentication.setAuthenticationParameters(headers: &localVariableHeaderParameters, url: &localVariableUrlComponents, in: "header", name: "x-api-key", value: TexthiveAPI.apiKey, prefix: nil)
            try Authentication.setAuthenticationParameters(headers: &localVariableHeaderParameters, url: &localVariableUrlComponents, in: "", name: "", value: TexthiveAPI.bearerAuth, prefix: nil)
            let localVariableRequestBuilder: RequestBuilder<Contact>.Type = TexthiveAPI.requestBuilderFactory.getBuilder()
            let URLString = localVariableUrlComponents?.string ?? localVariableURLString
            return localVariableRequestBuilder.init(method: "GET", URLString: URLString, parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        } catch {
            print("Error: \(error)")
        }
        fatalError("Error: Unable to send request to GET /contact/{customerId}/id/{id}")
    }

    /**
     Retrieve a contact by ID
     - GET /contact/{customerId}/id/{id}
     - Fetches detailed contact information including available messaging channels and verification status. Use this endpoint when you need to look up a specific contact using their unique identifier.
     - API Key:
       - type: apiKey x-api-key 
       - name: ApiKey
     - BASIC:
       - type: http
       - name: BearerAuth
     - parameter customerId: (path) Unique identifier of the customer account 
     - parameter id: (path) Unique identifier of the contact 
     - returns: RequestBuilder<Contact> Fetches detailed contact information including available messaging channels and verification status. Use this endpoint when you need to look up a specific contact using their unique identifier.
     */
    open func getContactByIdWithRequestBuilder(
            customerId: String,
            id: String
    ) -> RequestBuilder<Contact> {
        let basePath = self.client!.basePath;
        var localVariablePath = "/contact/{customerId}/id/{id}"
        let customerIdPreEscape = "\(APIHelper.mapValueToPathItem(customerId))"
        let customerIdPostEscape = customerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{customerId}", with: customerIdPostEscape, options: .literal, range: nil)
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        var localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        do {
            try Authentication.setAuthenticationParameters(headers: &localVariableHeaderParameters, url: &localVariableUrlComponents, in: "header", name: "x-api-key", value: self.client!.apiKey, prefix: nil)
            try Authentication.setAuthenticationParameters(headers: &localVariableHeaderParameters, url: &localVariableUrlComponents, in: "", name: "", value: self.client!.bearerAuth, prefix: nil)
            let localVariableRequestBuilder: RequestBuilder<Contact>.Type = TexthiveAPI.requestBuilderFactory.getBuilder()
            let URLString = localVariableUrlComponents?.string ?? localVariableURLString
            return localVariableRequestBuilder.init(method: "GET", URLString: URLString, parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        } catch {
            print("Error: \(error)")
        }
        fatalError("Error: Unable to send request to GET /contact/{customerId}/id/{id}")
    }


    /**
     Retrieve a contact by phone number
     
     - parameter customerId: (path) Unique identifier of the customer account 
     - parameter phoneNumber: (path) Phone number in E.164 format (e.g., +1234567890) 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getContactByPhoneSync(customerId: String, phoneNumber: String, apiResponseQueue: DispatchQueue = TexthiveAPI.apiResponseQueue, completion: @escaping ((_ data: Contact?, _ error: Error?) -> Void)) -> RequestTask {
        return getContactByPhoneWithRequestBuilder(customerId: customerId, phoneNumber: phoneNumber).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Retrieve a contact by phone number
     
     - parameter customerId: (path) Unique identifier of the customer account 
     - parameter phoneNumber: (path) Phone number in E.164 format (e.g., +1234567890) 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    private class func getContactByPhoneAsyncMappedParams(customerId: String, phoneNumber: String) async throws -> Contact {
        return try await withCheckedThrowingContinuation { continuation in
            getContactByPhoneWithRequestBuilder(customerId: customerId, phoneNumber: phoneNumber).execute { result in
                switch result {
                case let .success(response):
                    continuation.resume(returning: response.body)
                case let .failure(error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }

    /**
     Retrieve a contact by phone number
     
     - parameter customerId: (path) Unique identifier of the customer account 
     - parameter phoneNumber: (path) Phone number in E.164 format (e.g., +1234567890) 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    open class func getContactByPhone(
        customerId: String,
        phoneNumber: String
    ) async throws -> Contact {
        return try await withCheckedThrowingContinuation { continuation in
            getContactByPhoneWithRequestBuilder(customerId: customerId, phoneNumber: phoneNumber).execute { result in
                switch result {
                case let .success(response):
                    continuation.resume(returning: response.body)
                case let .failure(error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }


    /**
     Retrieve a contact by phone number
     
     - parameter customerId: (path) Unique identifier of the customer account 
     - parameter phoneNumber: (path) Phone number in E.164 format (e.g., +1234567890) 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    open func getContactByPhone(
        customerId: String,
        phoneNumber: String
    ) async throws -> Contact {
        return try await withCheckedThrowingContinuation { continuation in
            getContactByPhoneWithRequestBuilder(customerId: customerId, phoneNumber: phoneNumber).execute { result in
                switch result {
                case let .success(response):
                    continuation.resume(returning: response.body)
                case let .failure(error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }



    /**
     Retrieve a contact by phone number
     - GET /contact/{customerId}/phone/{phoneNumber}
     - Looks up contact information using a phone number. This endpoint is useful when you need to find a contact's details but only have their phone number. It returns the same detailed information as the ID-based lookup.
     - API Key:
       - type: apiKey x-api-key 
       - name: ApiKey
     - BASIC:
       - type: http
       - name: BearerAuth
     - parameter customerId: (path) Unique identifier of the customer account 
     - parameter phoneNumber: (path) Phone number in E.164 format (e.g., +1234567890) 
     - returns: RequestBuilder<Contact> Looks up contact information using a phone number. This endpoint is useful when you need to find a contact&#39;s details but only have their phone number. It returns the same detailed information as the ID-based lookup.
     */
    open class func getContactByPhoneWithRequestBuilder(
            customerId: String,
            phoneNumber: String
    ) -> RequestBuilder<Contact> {
        let basePath = TexthiveAPI.basePath;
        var localVariablePath = "/contact/{customerId}/phone/{phoneNumber}"
        let customerIdPreEscape = "\(APIHelper.mapValueToPathItem(customerId))"
        let customerIdPostEscape = customerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{customerId}", with: customerIdPostEscape, options: .literal, range: nil)
        let phoneNumberPreEscape = "\(APIHelper.mapValueToPathItem(phoneNumber))"
        let phoneNumberPostEscape = phoneNumberPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{phoneNumber}", with: phoneNumberPostEscape, options: .literal, range: nil)
        let localVariableURLString = basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        var localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        do {
            try Authentication.setAuthenticationParameters(headers: &localVariableHeaderParameters, url: &localVariableUrlComponents, in: "header", name: "x-api-key", value: TexthiveAPI.apiKey, prefix: nil)
            try Authentication.setAuthenticationParameters(headers: &localVariableHeaderParameters, url: &localVariableUrlComponents, in: "", name: "", value: TexthiveAPI.bearerAuth, prefix: nil)
            let localVariableRequestBuilder: RequestBuilder<Contact>.Type = TexthiveAPI.requestBuilderFactory.getBuilder()
            let URLString = localVariableUrlComponents?.string ?? localVariableURLString
            return localVariableRequestBuilder.init(method: "GET", URLString: URLString, parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        } catch {
            print("Error: \(error)")
        }
        fatalError("Error: Unable to send request to GET /contact/{customerId}/phone/{phoneNumber}")
    }

    /**
     Retrieve a contact by phone number
     - GET /contact/{customerId}/phone/{phoneNumber}
     - Looks up contact information using a phone number. This endpoint is useful when you need to find a contact's details but only have their phone number. It returns the same detailed information as the ID-based lookup.
     - API Key:
       - type: apiKey x-api-key 
       - name: ApiKey
     - BASIC:
       - type: http
       - name: BearerAuth
     - parameter customerId: (path) Unique identifier of the customer account 
     - parameter phoneNumber: (path) Phone number in E.164 format (e.g., +1234567890) 
     - returns: RequestBuilder<Contact> Looks up contact information using a phone number. This endpoint is useful when you need to find a contact&#39;s details but only have their phone number. It returns the same detailed information as the ID-based lookup.
     */
    open func getContactByPhoneWithRequestBuilder(
            customerId: String,
            phoneNumber: String
    ) -> RequestBuilder<Contact> {
        let basePath = self.client!.basePath;
        var localVariablePath = "/contact/{customerId}/phone/{phoneNumber}"
        let customerIdPreEscape = "\(APIHelper.mapValueToPathItem(customerId))"
        let customerIdPostEscape = customerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{customerId}", with: customerIdPostEscape, options: .literal, range: nil)
        let phoneNumberPreEscape = "\(APIHelper.mapValueToPathItem(phoneNumber))"
        let phoneNumberPostEscape = phoneNumberPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{phoneNumber}", with: phoneNumberPostEscape, options: .literal, range: nil)
        let localVariableURLString = basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        var localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        do {
            try Authentication.setAuthenticationParameters(headers: &localVariableHeaderParameters, url: &localVariableUrlComponents, in: "header", name: "x-api-key", value: self.client!.apiKey, prefix: nil)
            try Authentication.setAuthenticationParameters(headers: &localVariableHeaderParameters, url: &localVariableUrlComponents, in: "", name: "", value: self.client!.bearerAuth, prefix: nil)
            let localVariableRequestBuilder: RequestBuilder<Contact>.Type = TexthiveAPI.requestBuilderFactory.getBuilder()
            let URLString = localVariableUrlComponents?.string ?? localVariableURLString
            return localVariableRequestBuilder.init(method: "GET", URLString: URLString, parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        } catch {
            print("Error: \(error)")
        }
        fatalError("Error: Unable to send request to GET /contact/{customerId}/phone/{phoneNumber}")
    }

}
