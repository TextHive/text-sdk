# SendMessageToPhoneNumberRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CustomerId** | **string** | Unique identifier of the customer | 
**PhoneNumber** | **string** | Phone number in E.164 format | 
**TemplateId** | **string** | Unique identifier of the message template | 

## Methods

### NewSendMessageToPhoneNumberRequest

`func NewSendMessageToPhoneNumberRequest(customerId string, phoneNumber string, templateId string, ) *SendMessageToPhoneNumberRequest`

NewSendMessageToPhoneNumberRequest instantiates a new SendMessageToPhoneNumberRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSendMessageToPhoneNumberRequestWithDefaults

`func NewSendMessageToPhoneNumberRequestWithDefaults() *SendMessageToPhoneNumberRequest`

NewSendMessageToPhoneNumberRequestWithDefaults instantiates a new SendMessageToPhoneNumberRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCustomerId

`func (o *SendMessageToPhoneNumberRequest) GetCustomerId() string`

GetCustomerId returns the CustomerId field if non-nil, zero value otherwise.

### GetCustomerIdOk

`func (o *SendMessageToPhoneNumberRequest) GetCustomerIdOk() (*string, bool)`

GetCustomerIdOk returns a tuple with the CustomerId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCustomerId

`func (o *SendMessageToPhoneNumberRequest) SetCustomerId(v string)`

SetCustomerId sets CustomerId field to given value.


### GetPhoneNumber

`func (o *SendMessageToPhoneNumberRequest) GetPhoneNumber() string`

GetPhoneNumber returns the PhoneNumber field if non-nil, zero value otherwise.

### GetPhoneNumberOk

`func (o *SendMessageToPhoneNumberRequest) GetPhoneNumberOk() (*string, bool)`

GetPhoneNumberOk returns a tuple with the PhoneNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPhoneNumber

`func (o *SendMessageToPhoneNumberRequest) SetPhoneNumber(v string)`

SetPhoneNumber sets PhoneNumber field to given value.


### GetTemplateId

`func (o *SendMessageToPhoneNumberRequest) GetTemplateId() string`

GetTemplateId returns the TemplateId field if non-nil, zero value otherwise.

### GetTemplateIdOk

`func (o *SendMessageToPhoneNumberRequest) GetTemplateIdOk() (*string, bool)`

GetTemplateIdOk returns a tuple with the TemplateId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTemplateId

`func (o *SendMessageToPhoneNumberRequest) SetTemplateId(v string)`

SetTemplateId sets TemplateId field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


