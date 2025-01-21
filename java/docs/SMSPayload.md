

# SMSPayload

Detailed SMS contact information including validation and formatting details

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **UUID** | Unique identifier for the phone number record |  [optional] |
|**sentId** | **UUID** | Sent platform identifier |  [optional] |
|**phoneNumber** | **String** | Phone number in E.164 format |  [optional] |
|**countryCode** | **String** | ISO country code for the phone number |  [optional] |
|**validNumber** | **Boolean** | Indicates if the phone number is valid for SMS delivery |  [optional] |
|**nationalFormat** | **String** | Locally formatted version of the phone number |  [optional] |
|**payload** | **String** | Additional payload information in JSON format |  [optional] |



