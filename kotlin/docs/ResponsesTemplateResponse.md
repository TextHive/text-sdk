
# ResponsesTemplateResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**java.util.UUID**](java.util.UUID.md) | Unique identifier of the template |  [optional]
**customerId** | [**java.util.UUID**](java.util.UUID.md) | Customer ID associated with the template |  [optional]
**name** | **kotlin.String** | Template name |  [optional]
**category** | [**inline**](#Category) | Category of the template (e.g., transactional, marketing) |  [optional]
**rawBody** | **kotlin.String** | Template content with variable placeholders |  [optional]
**whatsappTemplateName** | **kotlin.String** | Associated WhatsApp template name if applicable |  [optional]
**whatsappTemplateStatus** | [**inline**](#WhatsappTemplateStatus) | Approval status of WhatsApp template |  [optional]
**createdAt** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | Template creation timestamp |  [optional]
**updatedAt** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | Last template update timestamp |  [optional]


<a name="Category"></a>
## Enum: category
Name | Value
---- | -----
category | transactional, marketing, alert


<a name="WhatsappTemplateStatus"></a>
## Enum: whatsappTemplateStatus
Name | Value
---- | -----
whatsappTemplateStatus | pending, approved, rejected



