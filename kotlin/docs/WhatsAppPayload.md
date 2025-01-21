
# WhatsAppPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**java.util.UUID**](java.util.UUID.md) | Unique identifier for the phone number record |  [optional]
**sentId** | [**java.util.UUID**](java.util.UUID.md) | Sent platform identifier |  [optional]
**phoneNumber** | **kotlin.String** | Phone number in E.164 format |  [optional]
**whatsappId** | **kotlin.String** | Unique WhatsApp identifier for the contact |  [optional]
**countryCode** | **kotlin.String** | ISO country code of the phone number |  [optional]
**numberType** | [**inline**](#NumberType) | Type of phone number (MOBILE, LANDLINE, etc) |  [optional]
**profilePicture** | **kotlin.String** | URL to the contact&#39;s WhatsApp profile picture |  [optional]
**isBusiness** | **kotlin.Boolean** | Indicates if the number belongs to a WhatsApp Business account |  [optional]
**invalidRecord** | **kotlin.Boolean** | Indicates if the WhatsApp account is invalid or deactivated |  [optional]


<a name="NumberType"></a>
## Enum: numberType
Name | Value
---- | -----
numberType | MOBILE, LANDLINE, VOIP, UNKNOWN



