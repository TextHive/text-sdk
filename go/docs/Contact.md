# Contact

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** | Unique identifier for the contact | [optional] 
**PhoneNumber** | Pointer to **string** | Contact&#39;s phone number in E.164 format | [optional] 
**CountryCode** | Pointer to **string** | Two-letter ISO country code | [optional] 
**NationalFormat** | Pointer to **string** | Phone number formatted according to national standards | [optional] 
**AvailableChannels** | Pointer to **string** | Comma-separated list of available messaging channels (SMS, WHATSAPP) | [optional] 
**DefaultChannel** | Pointer to **string** | Preferred messaging channel for this contact | [optional] 
**Verified** | Pointer to **bool** | Indicates if the contact&#39;s phone number has been verified | [optional] 
**CreatedAt** | Pointer to **time.Time** | Timestamp when the contact was created | [optional] 
**UpdatedAt** | Pointer to **time.Time** | Timestamp when the contact was last updated | [optional] 

## Methods

### NewContact

`func NewContact() *Contact`

NewContact instantiates a new Contact object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewContactWithDefaults

`func NewContactWithDefaults() *Contact`

NewContactWithDefaults instantiates a new Contact object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *Contact) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Contact) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Contact) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *Contact) HasId() bool`

HasId returns a boolean if a field has been set.

### GetPhoneNumber

`func (o *Contact) GetPhoneNumber() string`

GetPhoneNumber returns the PhoneNumber field if non-nil, zero value otherwise.

### GetPhoneNumberOk

`func (o *Contact) GetPhoneNumberOk() (*string, bool)`

GetPhoneNumberOk returns a tuple with the PhoneNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPhoneNumber

`func (o *Contact) SetPhoneNumber(v string)`

SetPhoneNumber sets PhoneNumber field to given value.

### HasPhoneNumber

`func (o *Contact) HasPhoneNumber() bool`

HasPhoneNumber returns a boolean if a field has been set.

### GetCountryCode

`func (o *Contact) GetCountryCode() string`

GetCountryCode returns the CountryCode field if non-nil, zero value otherwise.

### GetCountryCodeOk

`func (o *Contact) GetCountryCodeOk() (*string, bool)`

GetCountryCodeOk returns a tuple with the CountryCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCountryCode

`func (o *Contact) SetCountryCode(v string)`

SetCountryCode sets CountryCode field to given value.

### HasCountryCode

`func (o *Contact) HasCountryCode() bool`

HasCountryCode returns a boolean if a field has been set.

### GetNationalFormat

`func (o *Contact) GetNationalFormat() string`

GetNationalFormat returns the NationalFormat field if non-nil, zero value otherwise.

### GetNationalFormatOk

`func (o *Contact) GetNationalFormatOk() (*string, bool)`

GetNationalFormatOk returns a tuple with the NationalFormat field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNationalFormat

`func (o *Contact) SetNationalFormat(v string)`

SetNationalFormat sets NationalFormat field to given value.

### HasNationalFormat

`func (o *Contact) HasNationalFormat() bool`

HasNationalFormat returns a boolean if a field has been set.

### GetAvailableChannels

`func (o *Contact) GetAvailableChannels() string`

GetAvailableChannels returns the AvailableChannels field if non-nil, zero value otherwise.

### GetAvailableChannelsOk

`func (o *Contact) GetAvailableChannelsOk() (*string, bool)`

GetAvailableChannelsOk returns a tuple with the AvailableChannels field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvailableChannels

`func (o *Contact) SetAvailableChannels(v string)`

SetAvailableChannels sets AvailableChannels field to given value.

### HasAvailableChannels

`func (o *Contact) HasAvailableChannels() bool`

HasAvailableChannels returns a boolean if a field has been set.

### GetDefaultChannel

`func (o *Contact) GetDefaultChannel() string`

GetDefaultChannel returns the DefaultChannel field if non-nil, zero value otherwise.

### GetDefaultChannelOk

`func (o *Contact) GetDefaultChannelOk() (*string, bool)`

GetDefaultChannelOk returns a tuple with the DefaultChannel field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDefaultChannel

`func (o *Contact) SetDefaultChannel(v string)`

SetDefaultChannel sets DefaultChannel field to given value.

### HasDefaultChannel

`func (o *Contact) HasDefaultChannel() bool`

HasDefaultChannel returns a boolean if a field has been set.

### GetVerified

`func (o *Contact) GetVerified() bool`

GetVerified returns the Verified field if non-nil, zero value otherwise.

### GetVerifiedOk

`func (o *Contact) GetVerifiedOk() (*bool, bool)`

GetVerifiedOk returns a tuple with the Verified field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVerified

`func (o *Contact) SetVerified(v bool)`

SetVerified sets Verified field to given value.

### HasVerified

`func (o *Contact) HasVerified() bool`

HasVerified returns a boolean if a field has been set.

### GetCreatedAt

`func (o *Contact) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *Contact) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *Contact) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *Contact) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *Contact) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *Contact) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *Contact) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *Contact) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


