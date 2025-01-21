/*
TextHive Core API

TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

The version of the OpenAPI document: 1.1.0
Contact: developers@texthive.khulnasoft.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/
import type * as buffer from "buffer"

import { PayloadPhoneNumber } from './payload-phone-number';
import { WhatsAppPayloadAllOf } from './whats-app-payload-all-of';

/**
 * @type WhatsAppPayload
 * WhatsApp contact information including profile and verification details
 * @export
 */
export type WhatsAppPayload = PayloadPhoneNumber & WhatsAppPayloadAllOf;


