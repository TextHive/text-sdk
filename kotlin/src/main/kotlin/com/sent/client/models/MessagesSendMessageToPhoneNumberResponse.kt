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
 * 
 *
 * @param messageId 
 * @param status 
 * @param channel 
 * @param contactId ID of the created or existing contact
 */

data class MessagesSendMessageToPhoneNumberResponse (

    @Json(name = "messageId")
    val messageId: java.util.UUID? = null,

    @Json(name = "status")
    val status: MessagesSendMessageToPhoneNumberResponse.Status? = null,

    @Json(name = "channel")
    val channel: MessagesSendMessageToPhoneNumberResponse.Channel? = null,

    /* ID of the created or existing contact */
    @Json(name = "contactId")
    val contactId: java.util.UUID? = null

) {

    /**
     * 
     *
     * Values: queued,sending,delivered
     */
    enum class Status(val value: kotlin.String) {
        @Json(name = "queued") queued("queued"),
        @Json(name = "sending") sending("sending"),
        @Json(name = "delivered") delivered("delivered");
    }
    /**
     * 
     *
     * Values: sms,whatsapp
     */
    enum class Channel(val value: kotlin.String) {
        @Json(name = "sms") sms("sms"),
        @Json(name = "whatsapp") whatsapp("whatsapp");
    }
}

