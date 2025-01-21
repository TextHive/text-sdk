# SendMessageToContactRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CustomerId** | **string** | Unique identifier of the customer | 
**ContactId** | **string** | Unique identifier of the contact | 
**TemplateId** | **string** | Unique identifier of the message template | 

## Methods

### NewSendMessageToContactRequest

`func NewSendMessageToContactRequest(customerId string, contactId string, templateId string, ) *SendMessageToContactRequest`

NewSendMessageToContactRequest instantiates a new SendMessageToContactRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSendMessageToContactRequestWithDefaults

`func NewSendMessageToContactRequestWithDefaults() *SendMessageToContactRequest`

NewSendMessageToContactRequestWithDefaults instantiates a new SendMessageToContactRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCustomerId

`func (o *SendMessageToContactRequest) GetCustomerId() string`

GetCustomerId returns the CustomerId field if non-nil, zero value otherwise.

### GetCustomerIdOk

`func (o *SendMessageToContactRequest) GetCustomerIdOk() (*string, bool)`

GetCustomerIdOk returns a tuple with the CustomerId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCustomerId

`func (o *SendMessageToContactRequest) SetCustomerId(v string)`

SetCustomerId sets CustomerId field to given value.


### GetContactId

`func (o *SendMessageToContactRequest) GetContactId() string`

GetContactId returns the ContactId field if non-nil, zero value otherwise.

### GetContactIdOk

`func (o *SendMessageToContactRequest) GetContactIdOk() (*string, bool)`

GetContactIdOk returns a tuple with the ContactId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContactId

`func (o *SendMessageToContactRequest) SetContactId(v string)`

SetContactId sets ContactId field to given value.


### GetTemplateId

`func (o *SendMessageToContactRequest) GetTemplateId() string`

GetTemplateId returns the TemplateId field if non-nil, zero value otherwise.

### GetTemplateIdOk

`func (o *SendMessageToContactRequest) GetTemplateIdOk() (*string, bool)`

GetTemplateIdOk returns a tuple with the TemplateId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTemplateId

`func (o *SendMessageToContactRequest) SetTemplateId(v string)`

SetTemplateId sets TemplateId field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


