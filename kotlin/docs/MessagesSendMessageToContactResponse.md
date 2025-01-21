
# MessagesSendMessageToContactResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageId** | [**java.util.UUID**](java.util.UUID.md) | Unique identifier for tracking the message |  [optional]
**status** | [**inline**](#Status) | Current status of the message |  [optional]
**channel** | [**inline**](#Channel) | Selected delivery channel |  [optional]


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



