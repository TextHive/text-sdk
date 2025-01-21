# TemplateCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CustomerId** | **string** | Unique identifier of the customer creating the template | 
**Name** | **string** | Name of the template for identification purposes | 

## Methods

### NewTemplateCreateRequest

`func NewTemplateCreateRequest(customerId string, name string, ) *TemplateCreateRequest`

NewTemplateCreateRequest instantiates a new TemplateCreateRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTemplateCreateRequestWithDefaults

`func NewTemplateCreateRequestWithDefaults() *TemplateCreateRequest`

NewTemplateCreateRequestWithDefaults instantiates a new TemplateCreateRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCustomerId

`func (o *TemplateCreateRequest) GetCustomerId() string`

GetCustomerId returns the CustomerId field if non-nil, zero value otherwise.

### GetCustomerIdOk

`func (o *TemplateCreateRequest) GetCustomerIdOk() (*string, bool)`

GetCustomerIdOk returns a tuple with the CustomerId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCustomerId

`func (o *TemplateCreateRequest) SetCustomerId(v string)`

SetCustomerId sets CustomerId field to given value.


### GetName

`func (o *TemplateCreateRequest) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *TemplateCreateRequest) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *TemplateCreateRequest) SetName(v string)`

SetName sets Name field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


