# PayloadPhoneNumber

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** | Unique identifier for the phone number record | [optional] 
**SentId** | Pointer to **string** | Sent platform identifier | [optional] 
**PhoneNumber** | Pointer to **string** | Phone number in E.164 format | [optional] 

## Methods

### NewPayloadPhoneNumber

`func NewPayloadPhoneNumber() *PayloadPhoneNumber`

NewPayloadPhoneNumber instantiates a new PayloadPhoneNumber object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPayloadPhoneNumberWithDefaults

`func NewPayloadPhoneNumberWithDefaults() *PayloadPhoneNumber`

NewPayloadPhoneNumberWithDefaults instantiates a new PayloadPhoneNumber object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *PayloadPhoneNumber) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *PayloadPhoneNumber) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *PayloadPhoneNumber) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *PayloadPhoneNumber) HasId() bool`

HasId returns a boolean if a field has been set.

### GetSentId

`func (o *PayloadPhoneNumber) GetSentId() string`

GetSentId returns the SentId field if non-nil, zero value otherwise.

### GetSentIdOk

`func (o *PayloadPhoneNumber) GetSentIdOk() (*string, bool)`

GetSentIdOk returns a tuple with the SentId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSentId

`func (o *PayloadPhoneNumber) SetSentId(v string)`

SetSentId sets SentId field to given value.

### HasSentId

`func (o *PayloadPhoneNumber) HasSentId() bool`

HasSentId returns a boolean if a field has been set.

### GetPhoneNumber

`func (o *PayloadPhoneNumber) GetPhoneNumber() string`

GetPhoneNumber returns the PhoneNumber field if non-nil, zero value otherwise.

### GetPhoneNumberOk

`func (o *PayloadPhoneNumber) GetPhoneNumberOk() (*string, bool)`

GetPhoneNumberOk returns a tuple with the PhoneNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPhoneNumber

`func (o *PayloadPhoneNumber) SetPhoneNumber(v string)`

SetPhoneNumber sets PhoneNumber field to given value.

### HasPhoneNumber

`func (o *PayloadPhoneNumber) HasPhoneNumber() bool`

HasPhoneNumber returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


