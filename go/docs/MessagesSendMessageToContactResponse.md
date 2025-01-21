# MessagesSendMessageToContactResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MessageId** | Pointer to **string** | Unique identifier for tracking the message | [optional] 
**Status** | Pointer to **string** | Current status of the message | [optional] 
**Channel** | Pointer to **string** | Selected delivery channel | [optional] 

## Methods

### NewMessagesSendMessageToContactResponse

`func NewMessagesSendMessageToContactResponse() *MessagesSendMessageToContactResponse`

NewMessagesSendMessageToContactResponse instantiates a new MessagesSendMessageToContactResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMessagesSendMessageToContactResponseWithDefaults

`func NewMessagesSendMessageToContactResponseWithDefaults() *MessagesSendMessageToContactResponse`

NewMessagesSendMessageToContactResponseWithDefaults instantiates a new MessagesSendMessageToContactResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMessageId

`func (o *MessagesSendMessageToContactResponse) GetMessageId() string`

GetMessageId returns the MessageId field if non-nil, zero value otherwise.

### GetMessageIdOk

`func (o *MessagesSendMessageToContactResponse) GetMessageIdOk() (*string, bool)`

GetMessageIdOk returns a tuple with the MessageId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessageId

`func (o *MessagesSendMessageToContactResponse) SetMessageId(v string)`

SetMessageId sets MessageId field to given value.

### HasMessageId

`func (o *MessagesSendMessageToContactResponse) HasMessageId() bool`

HasMessageId returns a boolean if a field has been set.

### GetStatus

`func (o *MessagesSendMessageToContactResponse) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *MessagesSendMessageToContactResponse) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *MessagesSendMessageToContactResponse) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *MessagesSendMessageToContactResponse) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetChannel

`func (o *MessagesSendMessageToContactResponse) GetChannel() string`

GetChannel returns the Channel field if non-nil, zero value otherwise.

### GetChannelOk

`func (o *MessagesSendMessageToContactResponse) GetChannelOk() (*string, bool)`

GetChannelOk returns a tuple with the Channel field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChannel

`func (o *MessagesSendMessageToContactResponse) SetChannel(v string)`

SetChannel sets Channel field to given value.

### HasChannel

`func (o *MessagesSendMessageToContactResponse) HasChannel() bool`

HasChannel returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


