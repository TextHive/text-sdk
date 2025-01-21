

# MessagesSendMessageToPhoneNumberResponse


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**messageId** | **UUID** |  |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) |  |  [optional] |
|**channel** | [**ChannelEnum**](#ChannelEnum) |  |  [optional] |
|**contactId** | **UUID** | ID of the created or existing contact |  [optional] |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| QUEUED | &quot;queued&quot; |
| SENDING | &quot;sending&quot; |
| DELIVERED | &quot;delivered&quot; |



## Enum: ChannelEnum

| Name | Value |
|---- | -----|
| SMS | &quot;sms&quot; |
| WHATSAPP | &quot;whatsapp&quot; |



