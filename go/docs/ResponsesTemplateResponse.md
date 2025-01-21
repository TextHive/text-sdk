# ResponsesTemplateResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** | Unique identifier of the template | [optional] 
**CustomerId** | Pointer to **string** | Customer ID associated with the template | [optional] 
**Name** | Pointer to **string** | Template name | [optional] 
**Category** | Pointer to **string** | Category of the template (e.g., transactional, marketing) | [optional] 
**RawBody** | Pointer to **string** | Template content with variable placeholders | [optional] 
**WhatsappTemplateName** | Pointer to **string** | Associated WhatsApp template name if applicable | [optional] 
**WhatsappTemplateStatus** | Pointer to **string** | Approval status of WhatsApp template | [optional] 
**CreatedAt** | Pointer to **time.Time** | Template creation timestamp | [optional] 
**UpdatedAt** | Pointer to **time.Time** | Last template update timestamp | [optional] 

## Methods

### NewResponsesTemplateResponse

`func NewResponsesTemplateResponse() *ResponsesTemplateResponse`

NewResponsesTemplateResponse instantiates a new ResponsesTemplateResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewResponsesTemplateResponseWithDefaults

`func NewResponsesTemplateResponseWithDefaults() *ResponsesTemplateResponse`

NewResponsesTemplateResponseWithDefaults instantiates a new ResponsesTemplateResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *ResponsesTemplateResponse) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *ResponsesTemplateResponse) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *ResponsesTemplateResponse) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *ResponsesTemplateResponse) HasId() bool`

HasId returns a boolean if a field has been set.

### GetCustomerId

`func (o *ResponsesTemplateResponse) GetCustomerId() string`

GetCustomerId returns the CustomerId field if non-nil, zero value otherwise.

### GetCustomerIdOk

`func (o *ResponsesTemplateResponse) GetCustomerIdOk() (*string, bool)`

GetCustomerIdOk returns a tuple with the CustomerId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCustomerId

`func (o *ResponsesTemplateResponse) SetCustomerId(v string)`

SetCustomerId sets CustomerId field to given value.

### HasCustomerId

`func (o *ResponsesTemplateResponse) HasCustomerId() bool`

HasCustomerId returns a boolean if a field has been set.

### GetName

`func (o *ResponsesTemplateResponse) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *ResponsesTemplateResponse) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *ResponsesTemplateResponse) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *ResponsesTemplateResponse) HasName() bool`

HasName returns a boolean if a field has been set.

### GetCategory

`func (o *ResponsesTemplateResponse) GetCategory() string`

GetCategory returns the Category field if non-nil, zero value otherwise.

### GetCategoryOk

`func (o *ResponsesTemplateResponse) GetCategoryOk() (*string, bool)`

GetCategoryOk returns a tuple with the Category field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCategory

`func (o *ResponsesTemplateResponse) SetCategory(v string)`

SetCategory sets Category field to given value.

### HasCategory

`func (o *ResponsesTemplateResponse) HasCategory() bool`

HasCategory returns a boolean if a field has been set.

### GetRawBody

`func (o *ResponsesTemplateResponse) GetRawBody() string`

GetRawBody returns the RawBody field if non-nil, zero value otherwise.

### GetRawBodyOk

`func (o *ResponsesTemplateResponse) GetRawBodyOk() (*string, bool)`

GetRawBodyOk returns a tuple with the RawBody field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRawBody

`func (o *ResponsesTemplateResponse) SetRawBody(v string)`

SetRawBody sets RawBody field to given value.

### HasRawBody

`func (o *ResponsesTemplateResponse) HasRawBody() bool`

HasRawBody returns a boolean if a field has been set.

### GetWhatsappTemplateName

`func (o *ResponsesTemplateResponse) GetWhatsappTemplateName() string`

GetWhatsappTemplateName returns the WhatsappTemplateName field if non-nil, zero value otherwise.

### GetWhatsappTemplateNameOk

`func (o *ResponsesTemplateResponse) GetWhatsappTemplateNameOk() (*string, bool)`

GetWhatsappTemplateNameOk returns a tuple with the WhatsappTemplateName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWhatsappTemplateName

`func (o *ResponsesTemplateResponse) SetWhatsappTemplateName(v string)`

SetWhatsappTemplateName sets WhatsappTemplateName field to given value.

### HasWhatsappTemplateName

`func (o *ResponsesTemplateResponse) HasWhatsappTemplateName() bool`

HasWhatsappTemplateName returns a boolean if a field has been set.

### GetWhatsappTemplateStatus

`func (o *ResponsesTemplateResponse) GetWhatsappTemplateStatus() string`

GetWhatsappTemplateStatus returns the WhatsappTemplateStatus field if non-nil, zero value otherwise.

### GetWhatsappTemplateStatusOk

`func (o *ResponsesTemplateResponse) GetWhatsappTemplateStatusOk() (*string, bool)`

GetWhatsappTemplateStatusOk returns a tuple with the WhatsappTemplateStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWhatsappTemplateStatus

`func (o *ResponsesTemplateResponse) SetWhatsappTemplateStatus(v string)`

SetWhatsappTemplateStatus sets WhatsappTemplateStatus field to given value.

### HasWhatsappTemplateStatus

`func (o *ResponsesTemplateResponse) HasWhatsappTemplateStatus() bool`

HasWhatsappTemplateStatus returns a boolean if a field has been set.

### GetCreatedAt

`func (o *ResponsesTemplateResponse) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *ResponsesTemplateResponse) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *ResponsesTemplateResponse) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *ResponsesTemplateResponse) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *ResponsesTemplateResponse) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *ResponsesTemplateResponse) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *ResponsesTemplateResponse) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *ResponsesTemplateResponse) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


