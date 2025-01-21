

# Contact

Represents a contact in the Sent messaging platform with their communication preferences and channel availability

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **UUID** | Unique identifier for the contact |  [optional] |
|**phoneNumber** | **String** | Contact&#39;s phone number in E.164 format |  [optional] |
|**countryCode** | **String** | Two-letter ISO country code |  [optional] |
|**nationalFormat** | **String** | Phone number formatted according to national standards |  [optional] |
|**availableChannels** | **String** | Comma-separated list of available messaging channels (SMS, WHATSAPP) |  [optional] |
|**defaultChannel** | **String** | Preferred messaging channel for this contact |  [optional] |
|**verified** | **Boolean** | Indicates if the contact&#39;s phone number has been verified |  [optional] |
|**createdAt** | **OffsetDateTime** | Timestamp when the contact was created |  [optional] |
|**updatedAt** | **OffsetDateTime** | Timestamp when the contact was last updated |  [optional] |



