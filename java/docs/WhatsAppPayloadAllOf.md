

# WhatsAppPayloadAllOf


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**whatsappId** | **String** | Unique WhatsApp identifier for the contact |  [optional] |
|**countryCode** | **String** | ISO country code of the phone number |  [optional] |
|**numberType** | [**NumberTypeEnum**](#NumberTypeEnum) | Type of phone number (MOBILE, LANDLINE, etc) |  [optional] |
|**profilePicture** | **String** | URL to the contact&#39;s WhatsApp profile picture |  [optional] |
|**isBusiness** | **Boolean** | Indicates if the number belongs to a WhatsApp Business account |  [optional] |
|**invalidRecord** | **Boolean** | Indicates if the WhatsApp account is invalid or deactivated |  [optional] |



## Enum: NumberTypeEnum

| Name | Value |
|---- | -----|
| MOBILE | &quot;MOBILE&quot; |
| LANDLINE | &quot;LANDLINE&quot; |
| VOIP | &quot;VOIP&quot; |
| UNKNOWN | &quot;UNKNOWN&quot; |



