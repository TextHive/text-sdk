# WhatsAppPayloadAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WhatsappId** | Pointer to **string** | Unique WhatsApp identifier for the contact | [optional] 
**CountryCode** | Pointer to **string** | ISO country code of the phone number | [optional] 
**NumberType** | Pointer to **string** | Type of phone number (MOBILE, LANDLINE, etc) | [optional] 
**ProfilePicture** | Pointer to **string** | URL to the contact&#39;s WhatsApp profile picture | [optional] 
**IsBusiness** | Pointer to **bool** | Indicates if the number belongs to a WhatsApp Business account | [optional] 
**InvalidRecord** | Pointer to **bool** | Indicates if the WhatsApp account is invalid or deactivated | [optional] 

## Methods

### NewWhatsAppPayloadAllOf

`func NewWhatsAppPayloadAllOf() *WhatsAppPayloadAllOf`

NewWhatsAppPayloadAllOf instantiates a new WhatsAppPayloadAllOf object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewWhatsAppPayloadAllOfWithDefaults

`func NewWhatsAppPayloadAllOfWithDefaults() *WhatsAppPayloadAllOf`

NewWhatsAppPayloadAllOfWithDefaults instantiates a new WhatsAppPayloadAllOf object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetWhatsappId

`func (o *WhatsAppPayloadAllOf) GetWhatsappId() string`

GetWhatsappId returns the WhatsappId field if non-nil, zero value otherwise.

### GetWhatsappIdOk

`func (o *WhatsAppPayloadAllOf) GetWhatsappIdOk() (*string, bool)`

GetWhatsappIdOk returns a tuple with the WhatsappId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWhatsappId

`func (o *WhatsAppPayloadAllOf) SetWhatsappId(v string)`

SetWhatsappId sets WhatsappId field to given value.

### HasWhatsappId

`func (o *WhatsAppPayloadAllOf) HasWhatsappId() bool`

HasWhatsappId returns a boolean if a field has been set.

### GetCountryCode

`func (o *WhatsAppPayloadAllOf) GetCountryCode() string`

GetCountryCode returns the CountryCode field if non-nil, zero value otherwise.

### GetCountryCodeOk

`func (o *WhatsAppPayloadAllOf) GetCountryCodeOk() (*string, bool)`

GetCountryCodeOk returns a tuple with the CountryCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCountryCode

`func (o *WhatsAppPayloadAllOf) SetCountryCode(v string)`

SetCountryCode sets CountryCode field to given value.

### HasCountryCode

`func (o *WhatsAppPayloadAllOf) HasCountryCode() bool`

HasCountryCode returns a boolean if a field has been set.

### GetNumberType

`func (o *WhatsAppPayloadAllOf) GetNumberType() string`

GetNumberType returns the NumberType field if non-nil, zero value otherwise.

### GetNumberTypeOk

`func (o *WhatsAppPayloadAllOf) GetNumberTypeOk() (*string, bool)`

GetNumberTypeOk returns a tuple with the NumberType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumberType

`func (o *WhatsAppPayloadAllOf) SetNumberType(v string)`

SetNumberType sets NumberType field to given value.

### HasNumberType

`func (o *WhatsAppPayloadAllOf) HasNumberType() bool`

HasNumberType returns a boolean if a field has been set.

### GetProfilePicture

`func (o *WhatsAppPayloadAllOf) GetProfilePicture() string`

GetProfilePicture returns the ProfilePicture field if non-nil, zero value otherwise.

### GetProfilePictureOk

`func (o *WhatsAppPayloadAllOf) GetProfilePictureOk() (*string, bool)`

GetProfilePictureOk returns a tuple with the ProfilePicture field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProfilePicture

`func (o *WhatsAppPayloadAllOf) SetProfilePicture(v string)`

SetProfilePicture sets ProfilePicture field to given value.

### HasProfilePicture

`func (o *WhatsAppPayloadAllOf) HasProfilePicture() bool`

HasProfilePicture returns a boolean if a field has been set.

### GetIsBusiness

`func (o *WhatsAppPayloadAllOf) GetIsBusiness() bool`

GetIsBusiness returns the IsBusiness field if non-nil, zero value otherwise.

### GetIsBusinessOk

`func (o *WhatsAppPayloadAllOf) GetIsBusinessOk() (*bool, bool)`

GetIsBusinessOk returns a tuple with the IsBusiness field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsBusiness

`func (o *WhatsAppPayloadAllOf) SetIsBusiness(v bool)`

SetIsBusiness sets IsBusiness field to given value.

### HasIsBusiness

`func (o *WhatsAppPayloadAllOf) HasIsBusiness() bool`

HasIsBusiness returns a boolean if a field has been set.

### GetInvalidRecord

`func (o *WhatsAppPayloadAllOf) GetInvalidRecord() bool`

GetInvalidRecord returns the InvalidRecord field if non-nil, zero value otherwise.

### GetInvalidRecordOk

`func (o *WhatsAppPayloadAllOf) GetInvalidRecordOk() (*bool, bool)`

GetInvalidRecordOk returns a tuple with the InvalidRecord field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInvalidRecord

`func (o *WhatsAppPayloadAllOf) SetInvalidRecord(v bool)`

SetInvalidRecord sets InvalidRecord field to given value.

### HasInvalidRecord

`func (o *WhatsAppPayloadAllOf) HasInvalidRecord() bool`

HasInvalidRecord returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


