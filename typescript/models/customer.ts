/*
TextHive Core API

TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

The version of the OpenAPI document: 1.1.0
Contact: developers@texthive.khulnasoft.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"


/**
 * Represents a customer account within the Sent platform, including messaging channel configurations and credentials
 * @export
 * @interface Customer
 */
export interface Customer {
    /**
     * Unique identifier for the customer
     * @type {string}
     * @memberof Customer
     */
    'id'?: string;
    /**
     * Name of the customer organization
     * @type {string}
     * @memberof Customer
     */
    'name'?: string;
    /**
     * Primary phone number used for sending messages
     * @type {string}
     * @memberof Customer
     */
    'sendingPhoneNumber'?: string;
    /**
     * Identifier for the SMS messaging profile
     * @type {string}
     * @memberof Customer
     */
    'smsMessagingProfileId'?: string;
    /**
     * Bearer token for authenticating SMS requests
     * @type {string}
     * @memberof Customer
     */
    'smsBearerToken'?: string;
    /**
     * Timestamp when the customer account was created
     * @type {string}
     * @memberof Customer
     */
    'createdAt'?: string;
    /**
     * Timestamp when the customer account was last updated
     * @type {string}
     * @memberof Customer
     */
    'updatedAt'?: string;
}

