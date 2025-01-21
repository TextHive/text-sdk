# Texthive.Net.Model.Contact
Represents a contact in the Sent messaging platform with their communication preferences and channel availability

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Unique identifier for the contact | [optional] 
**PhoneNumber** | **string** | Contact&#39;s phone number in E.164 format | [optional] 
**CountryCode** | **string** | Two-letter ISO country code | [optional] 
**NationalFormat** | **string** | Phone number formatted according to national standards | [optional] 
**AvailableChannels** | **string** | Comma-separated list of available messaging channels (SMS, WHATSAPP) | [optional] 
**DefaultChannel** | **string** | Preferred messaging channel for this contact | [optional] 
**Verified** | **bool** | Indicates if the contact&#39;s phone number has been verified | [optional] 
**CreatedAt** | **DateTime** | Timestamp when the contact was created | [optional] 
**UpdatedAt** | **DateTime** | Timestamp when the contact was last updated | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

