# Customer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** | Unique identifier for the customer | [optional] 
**Name** | Pointer to **string** | Name of the customer organization | [optional] 
**SendingPhoneNumber** | Pointer to **string** | Primary phone number used for sending messages | [optional] 
**SmsMessagingProfileId** | Pointer to **string** | Identifier for the SMS messaging profile | [optional] 
**SmsBearerToken** | Pointer to **string** | Bearer token for authenticating SMS requests | [optional] 
**CreatedAt** | Pointer to **time.Time** | Timestamp when the customer account was created | [optional] 
**UpdatedAt** | Pointer to **time.Time** | Timestamp when the customer account was last updated | [optional] 

## Methods

### NewCustomer

`func NewCustomer() *Customer`

NewCustomer instantiates a new Customer object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCustomerWithDefaults

`func NewCustomerWithDefaults() *Customer`

NewCustomerWithDefaults instantiates a new Customer object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *Customer) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Customer) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Customer) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *Customer) HasId() bool`

HasId returns a boolean if a field has been set.

### GetName

`func (o *Customer) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *Customer) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *Customer) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *Customer) HasName() bool`

HasName returns a boolean if a field has been set.

### GetSendingPhoneNumber

`func (o *Customer) GetSendingPhoneNumber() string`

GetSendingPhoneNumber returns the SendingPhoneNumber field if non-nil, zero value otherwise.

### GetSendingPhoneNumberOk

`func (o *Customer) GetSendingPhoneNumberOk() (*string, bool)`

GetSendingPhoneNumberOk returns a tuple with the SendingPhoneNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSendingPhoneNumber

`func (o *Customer) SetSendingPhoneNumber(v string)`

SetSendingPhoneNumber sets SendingPhoneNumber field to given value.

### HasSendingPhoneNumber

`func (o *Customer) HasSendingPhoneNumber() bool`

HasSendingPhoneNumber returns a boolean if a field has been set.

### GetSmsMessagingProfileId

`func (o *Customer) GetSmsMessagingProfileId() string`

GetSmsMessagingProfileId returns the SmsMessagingProfileId field if non-nil, zero value otherwise.

### GetSmsMessagingProfileIdOk

`func (o *Customer) GetSmsMessagingProfileIdOk() (*string, bool)`

GetSmsMessagingProfileIdOk returns a tuple with the SmsMessagingProfileId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSmsMessagingProfileId

`func (o *Customer) SetSmsMessagingProfileId(v string)`

SetSmsMessagingProfileId sets SmsMessagingProfileId field to given value.

### HasSmsMessagingProfileId

`func (o *Customer) HasSmsMessagingProfileId() bool`

HasSmsMessagingProfileId returns a boolean if a field has been set.

### GetSmsBearerToken

`func (o *Customer) GetSmsBearerToken() string`

GetSmsBearerToken returns the SmsBearerToken field if non-nil, zero value otherwise.

### GetSmsBearerTokenOk

`func (o *Customer) GetSmsBearerTokenOk() (*string, bool)`

GetSmsBearerTokenOk returns a tuple with the SmsBearerToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSmsBearerToken

`func (o *Customer) SetSmsBearerToken(v string)`

SetSmsBearerToken sets SmsBearerToken field to given value.

### HasSmsBearerToken

`func (o *Customer) HasSmsBearerToken() bool`

HasSmsBearerToken returns a boolean if a field has been set.

### GetCreatedAt

`func (o *Customer) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *Customer) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *Customer) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *Customer) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *Customer) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *Customer) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *Customer) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *Customer) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


