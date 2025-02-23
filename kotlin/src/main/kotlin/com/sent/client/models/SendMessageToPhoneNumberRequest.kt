/**
 *
 * Please note:
 * This class is auto generated by Konfig (https://konfigthis.com).
 * Do not edit this file manually.
 *
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package com.texthive.client.models


import com.squareup.moshi.Json

/**
 * Request model for sending a message to a phone number using a template
 *
 * @param customerId Unique identifier of the customer
 * @param phoneNumber Phone number in E.164 format
 * @param templateId Unique identifier of the message template
 */

data class SendMessageToPhoneNumberRequest (

    /* Unique identifier of the customer */
    @Json(name = "customerId")
    val customerId: java.util.UUID,

    /* Phone number in E.164 format */
    @Json(name = "phoneNumber")
    val phoneNumber: kotlin.String,

    /* Unique identifier of the message template */
    @Json(name = "templateId")
    val templateId: java.util.UUID

)

