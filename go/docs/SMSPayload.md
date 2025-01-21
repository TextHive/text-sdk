# SMSPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** | Unique identifier for the phone number record | [optional] 
**SentId** | Pointer to **string** | Sent platform identifier | [optional] 
**PhoneNumber** | Pointer to **string** | Phone number in E.164 format | [optional] 
**CountryCode** | Pointer to **string** | ISO country code for the phone number | [optional] 
**ValidNumber** | Pointer to **bool** | Indicates if the phone number is valid for SMS delivery | [optional] 
**NationalFormat** | Pointer to **string** | Locally formatted version of the phone number | [optional] 
**Payload** | Pointer to **string** | Additional payload information in JSON format | [optional] 

## Methods

### NewSMSPayload

`func NewSMSPayload() *SMSPayload`

NewSMSPayload instantiates a new SMSPayload object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSMSPayloadWithDefaults

`func NewSMSPayloadWithDefaults() *SMSPayload`

NewSMSPayloadWithDefaults instantiates a new SMSPayload object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *SMSPayload) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SMSPayload) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SMSPayload) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *SMSPayload) HasId() bool`

HasId returns a boolean if a field has been set.

### GetSentId

`func (o *SMSPayload) GetSentId() string`

GetSentId returns the SentId field if non-nil, zero value otherwise.

### GetSentIdOk

`func (o *SMSPayload) GetSentIdOk() (*string, bool)`

GetSentIdOk returns a tuple with the SentId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSentId

`func (o *SMSPayload) SetSentId(v string)`

SetSentId sets SentId field to given value.

### HasSentId

`func (o *SMSPayload) HasSentId() bool`

HasSentId returns a boolean if a field has been set.

### GetPhoneNumber

`func (o *SMSPayload) GetPhoneNumber() string`

GetPhoneNumber returns the PhoneNumber field if non-nil, zero value otherwise.

### GetPhoneNumberOk

`func (o *SMSPayload) GetPhoneNumberOk() (*string, bool)`

GetPhoneNumberOk returns a tuple with the PhoneNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPhoneNumber

`func (o *SMSPayload) SetPhoneNumber(v string)`

SetPhoneNumber sets PhoneNumber field to given value.

### HasPhoneNumber

`func (o *SMSPayload) HasPhoneNumber() bool`

HasPhoneNumber returns a boolean if a field has been set.

### GetCountryCode

`func (o *SMSPayload) GetCountryCode() string`

GetCountryCode returns the CountryCode field if non-nil, zero value otherwise.

### GetCountryCodeOk

`func (o *SMSPayload) GetCountryCodeOk() (*string, bool)`

GetCountryCodeOk returns a tuple with the CountryCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCountryCode

`func (o *SMSPayload) SetCountryCode(v string)`

SetCountryCode sets CountryCode field to given value.

### HasCountryCode

`func (o *SMSPayload) HasCountryCode() bool`

HasCountryCode returns a boolean if a field has been set.

### GetValidNumber

`func (o *SMSPayload) GetValidNumber() bool`

GetValidNumber returns the ValidNumber field if non-nil, zero value otherwise.

### GetValidNumberOk

`func (o *SMSPayload) GetValidNumberOk() (*bool, bool)`

GetValidNumberOk returns a tuple with the ValidNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValidNumber

`func (o *SMSPayload) SetValidNumber(v bool)`

SetValidNumber sets ValidNumber field to given value.

### HasValidNumber

`func (o *SMSPayload) HasValidNumber() bool`

HasValidNumber returns a boolean if a field has been set.

### GetNationalFormat

`func (o *SMSPayload) GetNationalFormat() string`

GetNationalFormat returns the NationalFormat field if non-nil, zero value otherwise.

### GetNationalFormatOk

`func (o *SMSPayload) GetNationalFormatOk() (*string, bool)`

GetNationalFormatOk returns a tuple with the NationalFormat field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNationalFormat

`func (o *SMSPayload) SetNationalFormat(v string)`

SetNationalFormat sets NationalFormat field to given value.

### HasNationalFormat

`func (o *SMSPayload) HasNationalFormat() bool`

HasNationalFormat returns a boolean if a field has been set.

### GetPayload

`func (o *SMSPayload) GetPayload() string`

GetPayload returns the Payload field if non-nil, zero value otherwise.

### GetPayloadOk

`func (o *SMSPayload) GetPayloadOk() (*string, bool)`

GetPayloadOk returns a tuple with the Payload field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPayload

`func (o *SMSPayload) SetPayload(v string)`

SetPayload sets Payload field to given value.

### HasPayload

`func (o *SMSPayload) HasPayload() bool`

HasPayload returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


