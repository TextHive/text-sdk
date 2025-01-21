# Texthive.Net.Model.SMSPayload
Detailed SMS contact information including validation and formatting details

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Unique identifier for the phone number record | [optional] 
**SentId** | **string** | Sent platform identifier | [optional] 
**PhoneNumber** | **string** | Phone number in E.164 format | [optional] 
**CountryCode** | **string** | ISO country code for the phone number | [optional] 
**ValidNumber** | **bool** | Indicates if the phone number is valid for SMS delivery | [optional] 
**NationalFormat** | **string** | Locally formatted version of the phone number | [optional] 
**Payload** | **string** | Additional payload information in JSON format | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

