# SMSPayloadAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CountryCode** | Pointer to **string** | ISO country code for the phone number | [optional] 
**ValidNumber** | Pointer to **bool** | Indicates if the phone number is valid for SMS delivery | [optional] 
**NationalFormat** | Pointer to **string** | Locally formatted version of the phone number | [optional] 
**Payload** | Pointer to **string** | Additional payload information in JSON format | [optional] 

## Methods

### NewSMSPayloadAllOf

`func NewSMSPayloadAllOf() *SMSPayloadAllOf`

NewSMSPayloadAllOf instantiates a new SMSPayloadAllOf object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSMSPayloadAllOfWithDefaults

`func NewSMSPayloadAllOfWithDefaults() *SMSPayloadAllOf`

NewSMSPayloadAllOfWithDefaults instantiates a new SMSPayloadAllOf object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCountryCode

`func (o *SMSPayloadAllOf) GetCountryCode() string`

GetCountryCode returns the CountryCode field if non-nil, zero value otherwise.

### GetCountryCodeOk

`func (o *SMSPayloadAllOf) GetCountryCodeOk() (*string, bool)`

GetCountryCodeOk returns a tuple with the CountryCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCountryCode

`func (o *SMSPayloadAllOf) SetCountryCode(v string)`

SetCountryCode sets CountryCode field to given value.

### HasCountryCode

`func (o *SMSPayloadAllOf) HasCountryCode() bool`

HasCountryCode returns a boolean if a field has been set.

### GetValidNumber

`func (o *SMSPayloadAllOf) GetValidNumber() bool`

GetValidNumber returns the ValidNumber field if non-nil, zero value otherwise.

### GetValidNumberOk

`func (o *SMSPayloadAllOf) GetValidNumberOk() (*bool, bool)`

GetValidNumberOk returns a tuple with the ValidNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValidNumber

`func (o *SMSPayloadAllOf) SetValidNumber(v bool)`

SetValidNumber sets ValidNumber field to given value.

### HasValidNumber

`func (o *SMSPayloadAllOf) HasValidNumber() bool`

HasValidNumber returns a boolean if a field has been set.

### GetNationalFormat

`func (o *SMSPayloadAllOf) GetNationalFormat() string`

GetNationalFormat returns the NationalFormat field if non-nil, zero value otherwise.

### GetNationalFormatOk

`func (o *SMSPayloadAllOf) GetNationalFormatOk() (*string, bool)`

GetNationalFormatOk returns a tuple with the NationalFormat field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNationalFormat

`func (o *SMSPayloadAllOf) SetNationalFormat(v string)`

SetNationalFormat sets NationalFormat field to given value.

### HasNationalFormat

`func (o *SMSPayloadAllOf) HasNationalFormat() bool`

HasNationalFormat returns a boolean if a field has been set.

### GetPayload

`func (o *SMSPayloadAllOf) GetPayload() string`

GetPayload returns the Payload field if non-nil, zero value otherwise.

### GetPayloadOk

`func (o *SMSPayloadAllOf) GetPayloadOk() (*string, bool)`

GetPayloadOk returns a tuple with the Payload field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPayload

`func (o *SMSPayloadAllOf) SetPayload(v string)`

SetPayload sets Payload field to given value.

### HasPayload

`func (o *SMSPayloadAllOf) HasPayload() bool`

HasPayload returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


