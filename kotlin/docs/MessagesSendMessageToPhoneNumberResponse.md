
# MessagesSendMessageToPhoneNumberResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageId** | [**java.util.UUID**](java.util.UUID.md) |  |  [optional]
**status** | [**inline**](#Status) |  |  [optional]
**channel** | [**inline**](#Channel) |  |  [optional]
**contactId** | [**java.util.UUID**](java.util.UUID.md) | ID of the created or existing contact |  [optional]


<a name="Status"></a>
## Enum: status
Name | Value
---- | -----
status | queued, sending, delivered


<a name="Channel"></a>
## Enum: channel
Name | Value
---- | -----
channel | sms, whatsapp



