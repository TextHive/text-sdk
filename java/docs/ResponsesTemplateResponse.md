

# ResponsesTemplateResponse

Response model containing template details

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **UUID** | Unique identifier of the template |  [optional] |
|**customerId** | **UUID** | Customer ID associated with the template |  [optional] |
|**name** | **String** | Template name |  [optional] |
|**category** | [**CategoryEnum**](#CategoryEnum) | Category of the template (e.g., transactional, marketing) |  [optional] |
|**rawBody** | **String** | Template content with variable placeholders |  [optional] |
|**whatsappTemplateName** | **String** | Associated WhatsApp template name if applicable |  [optional] |
|**whatsappTemplateStatus** | [**WhatsappTemplateStatusEnum**](#WhatsappTemplateStatusEnum) | Approval status of WhatsApp template |  [optional] |
|**createdAt** | **OffsetDateTime** | Template creation timestamp |  [optional] |
|**updatedAt** | **OffsetDateTime** | Last template update timestamp |  [optional] |



## Enum: CategoryEnum

| Name | Value |
|---- | -----|
| TRANSACTIONAL | &quot;transactional&quot; |
| MARKETING | &quot;marketing&quot; |
| ALERT | &quot;alert&quot; |



## Enum: WhatsappTemplateStatusEnum

| Name | Value |
|---- | -----|
| PENDING | &quot;pending&quot; |
| APPROVED | &quot;approved&quot; |
| REJECTED | &quot;rejected&quot; |



