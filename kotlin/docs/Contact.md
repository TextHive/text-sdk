
# Contact

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**java.util.UUID**](java.util.UUID.md) | Unique identifier for the contact |  [optional]
**phoneNumber** | **kotlin.String** | Contact&#39;s phone number in E.164 format |  [optional]
**countryCode** | **kotlin.String** | Two-letter ISO country code |  [optional]
**nationalFormat** | **kotlin.String** | Phone number formatted according to national standards |  [optional]
**availableChannels** | **kotlin.String** | Comma-separated list of available messaging channels (SMS, WHATSAPP) |  [optional]
**defaultChannel** | **kotlin.String** | Preferred messaging channel for this contact |  [optional]
**verified** | **kotlin.Boolean** | Indicates if the contact&#39;s phone number has been verified |  [optional]
**createdAt** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | Timestamp when the contact was created |  [optional]
**updatedAt** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | Timestamp when the contact was last updated |  [optional]



