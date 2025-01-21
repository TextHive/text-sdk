
# SMSPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**java.util.UUID**](java.util.UUID.md) | Unique identifier for the phone number record |  [optional]
**sentId** | [**java.util.UUID**](java.util.UUID.md) | Sent platform identifier |  [optional]
**phoneNumber** | **kotlin.String** | Phone number in E.164 format |  [optional]
**countryCode** | **kotlin.String** | ISO country code for the phone number |  [optional]
**validNumber** | **kotlin.Boolean** | Indicates if the phone number is valid for SMS delivery |  [optional]
**nationalFormat** | **kotlin.String** | Locally formatted version of the phone number |  [optional]
**payload** | **kotlin.String** | Additional payload information in JSON format |  [optional]



