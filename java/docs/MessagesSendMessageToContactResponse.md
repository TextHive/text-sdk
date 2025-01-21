

# MessagesSendMessageToContactResponse


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**messageId** | **UUID** | Unique identifier for tracking the message |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) | Current status of the message |  [optional] |
|**channel** | [**ChannelEnum**](#ChannelEnum) | Selected delivery channel |  [optional] |



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



