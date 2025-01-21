# WhatsAppPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** | Unique identifier for the phone number record | [optional] 
**SentId** | Pointer to **string** | Sent platform identifier | [optional] 
**PhoneNumber** | Pointer to **string** | Phone number in E.164 format | [optional] 
**WhatsappId** | Pointer to **string** | Unique WhatsApp identifier for the contact | [optional] 
**CountryCode** | Pointer to **string** | ISO country code of the phone number | [optional] 
**NumberType** | Pointer to **string** | Type of phone number (MOBILE, LANDLINE, etc) | [optional] 
**ProfilePicture** | Pointer to **string** | URL to the contact&#39;s WhatsApp profile picture | [optional] 
**IsBusiness** | Pointer to **bool** | Indicates if the number belongs to a WhatsApp Business account | [optional] 
**InvalidRecord** | Pointer to **bool** | Indicates if the WhatsApp account is invalid or deactivated | [optional] 

## Methods

### NewWhatsAppPayload

`func NewWhatsAppPayload() *WhatsAppPayload`

NewWhatsAppPayload instantiates a new WhatsAppPayload object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewWhatsAppPayloadWithDefaults

`func NewWhatsAppPayloadWithDefaults() *WhatsAppPayload`

NewWhatsAppPayloadWithDefaults instantiates a new WhatsAppPayload object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *WhatsAppPayload) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *WhatsAppPayload) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *WhatsAppPayload) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *WhatsAppPayload) HasId() bool`

HasId returns a boolean if a field has been set.

### GetSentId

`func (o *WhatsAppPayload) GetSentId() string`

GetSentId returns the SentId field if non-nil, zero value otherwise.

### GetSentIdOk

`func (o *WhatsAppPayload) GetSentIdOk() (*string, bool)`

GetSentIdOk returns a tuple with the SentId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSentId

`func (o *WhatsAppPayload) SetSentId(v string)`

SetSentId sets SentId field to given value.

### HasSentId

`func (o *WhatsAppPayload) HasSentId() bool`

HasSentId returns a boolean if a field has been set.

### GetPhoneNumber

`func (o *WhatsAppPayload) GetPhoneNumber() string`

GetPhoneNumber returns the PhoneNumber field if non-nil, zero value otherwise.

### GetPhoneNumberOk

`func (o *WhatsAppPayload) GetPhoneNumberOk() (*string, bool)`

GetPhoneNumberOk returns a tuple with the PhoneNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPhoneNumber

`func (o *WhatsAppPayload) SetPhoneNumber(v string)`

SetPhoneNumber sets PhoneNumber field to given value.

### HasPhoneNumber

`func (o *WhatsAppPayload) HasPhoneNumber() bool`

HasPhoneNumber returns a boolean if a field has been set.

### GetWhatsappId

`func (o *WhatsAppPayload) GetWhatsappId() string`

GetWhatsappId returns the WhatsappId field if non-nil, zero value otherwise.

### GetWhatsappIdOk

`func (o *WhatsAppPayload) GetWhatsappIdOk() (*string, bool)`

GetWhatsappIdOk returns a tuple with the WhatsappId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWhatsappId

`func (o *WhatsAppPayload) SetWhatsappId(v string)`

SetWhatsappId sets WhatsappId field to given value.

### HasWhatsappId

`func (o *WhatsAppPayload) HasWhatsappId() bool`

HasWhatsappId returns a boolean if a field has been set.

### GetCountryCode

`func (o *WhatsAppPayload) GetCountryCode() string`

GetCountryCode returns the CountryCode field if non-nil, zero value otherwise.

### GetCountryCodeOk

`func (o *WhatsAppPayload) GetCountryCodeOk() (*string, bool)`

GetCountryCodeOk returns a tuple with the CountryCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCountryCode

`func (o *WhatsAppPayload) SetCountryCode(v string)`

SetCountryCode sets CountryCode field to given value.

### HasCountryCode

`func (o *WhatsAppPayload) HasCountryCode() bool`

HasCountryCode returns a boolean if a field has been set.

### GetNumberType

`func (o *WhatsAppPayload) GetNumberType() string`

GetNumberType returns the NumberType field if non-nil, zero value otherwise.

### GetNumberTypeOk

`func (o *WhatsAppPayload) GetNumberTypeOk() (*string, bool)`

GetNumberTypeOk returns a tuple with the NumberType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumberType

`func (o *WhatsAppPayload) SetNumberType(v string)`

SetNumberType sets NumberType field to given value.

### HasNumberType

`func (o *WhatsAppPayload) HasNumberType() bool`

HasNumberType returns a boolean if a field has been set.

### GetProfilePicture

`func (o *WhatsAppPayload) GetProfilePicture() string`

GetProfilePicture returns the ProfilePicture field if non-nil, zero value otherwise.

### GetProfilePictureOk

`func (o *WhatsAppPayload) GetProfilePictureOk() (*string, bool)`

GetProfilePictureOk returns a tuple with the ProfilePicture field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProfilePicture

`func (o *WhatsAppPayload) SetProfilePicture(v string)`

SetProfilePicture sets ProfilePicture field to given value.

### HasProfilePicture

`func (o *WhatsAppPayload) HasProfilePicture() bool`

HasProfilePicture returns a boolean if a field has been set.

### GetIsBusiness

`func (o *WhatsAppPayload) GetIsBusiness() bool`

GetIsBusiness returns the IsBusiness field if non-nil, zero value otherwise.

### GetIsBusinessOk

`func (o *WhatsAppPayload) GetIsBusinessOk() (*bool, bool)`

GetIsBusinessOk returns a tuple with the IsBusiness field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsBusiness

`func (o *WhatsAppPayload) SetIsBusiness(v bool)`

SetIsBusiness sets IsBusiness field to given value.

### HasIsBusiness

`func (o *WhatsAppPayload) HasIsBusiness() bool`

HasIsBusiness returns a boolean if a field has been set.

### GetInvalidRecord

`func (o *WhatsAppPayload) GetInvalidRecord() bool`

GetInvalidRecord returns the InvalidRecord field if non-nil, zero value otherwise.

### GetInvalidRecordOk

`func (o *WhatsAppPayload) GetInvalidRecordOk() (*bool, bool)`

GetInvalidRecordOk returns a tuple with the InvalidRecord field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInvalidRecord

`func (o *WhatsAppPayload) SetInvalidRecord(v bool)`

SetInvalidRecord sets InvalidRecord field to given value.

### HasInvalidRecord

`func (o *WhatsAppPayload) HasInvalidRecord() bool`

HasInvalidRecord returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


