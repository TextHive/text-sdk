//
// CustomersUpdateCustomerRequest.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Request model for updating customer information */
public struct CustomersUpdateCustomerRequest: Codable, JSONEncodable, Hashable {

    /** Updated name of the customer organization */
    public var name: String?
    /** Updated primary phone number for sending messages */
    public var sendingPhoneNumber: String?
    /** Updated SMS messaging profile identifier */
    public var smsMessagingProfileId: String?
    /** Updated bearer token for SMS authentication */
    public var smsBearerToken: String?

    public init(name: String? = nil, sendingPhoneNumber: String? = nil, smsMessagingProfileId: String? = nil, smsBearerToken: String? = nil) {
        self.name = name
        self.sendingPhoneNumber = sendingPhoneNumber
        self.smsMessagingProfileId = smsMessagingProfileId
        self.smsBearerToken = smsBearerToken
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case sendingPhoneNumber
        case smsMessagingProfileId
        case smsBearerToken
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encodeIfPresent(name, forKey: .name)
        try codingContainer.encodeIfPresent(sendingPhoneNumber, forKey: .sendingPhoneNumber)
        try codingContainer.encodeIfPresent(smsMessagingProfileId, forKey: .smsMessagingProfileId)
        try codingContainer.encodeIfPresent(smsBearerToken, forKey: .smsBearerToken)
    }
}

