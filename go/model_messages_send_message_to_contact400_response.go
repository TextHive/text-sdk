/*
TextHive Core API

TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

API version: 1.1.0
Contact: developers@texthive.khulnasoft.com
*/

// Code generated by Konfig (https://konfigthis.com); DO NOT EDIT.

package texthive

import (
	"encoding/json"
)

// MessagesSendMessageToContact400Response struct for MessagesSendMessageToContact400Response
type MessagesSendMessageToContact400Response struct {
	Error *string `json:"error,omitempty"`
	Details []string `json:"details,omitempty"`
}

// NewMessagesSendMessageToContact400Response instantiates a new MessagesSendMessageToContact400Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewMessagesSendMessageToContact400Response() *MessagesSendMessageToContact400Response {
	this := MessagesSendMessageToContact400Response{}
	return &this
}

// NewMessagesSendMessageToContact400ResponseWithDefaults instantiates a new MessagesSendMessageToContact400Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewMessagesSendMessageToContact400ResponseWithDefaults() *MessagesSendMessageToContact400Response {
	this := MessagesSendMessageToContact400Response{}
	return &this
}

// GetError returns the Error field value if set, zero value otherwise.
func (o *MessagesSendMessageToContact400Response) GetError() string {
	if o == nil || isNil(o.Error) {
		var ret string
		return ret
	}
	return *o.Error
}

// GetErrorOk returns a tuple with the Error field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *MessagesSendMessageToContact400Response) GetErrorOk() (*string, bool) {
	if o == nil || isNil(o.Error) {
    return nil, false
	}
	return o.Error, true
}

// HasError returns a boolean if a field has been set.
func (o *MessagesSendMessageToContact400Response) HasError() bool {
	if o != nil && !isNil(o.Error) {
		return true
	}

	return false
}

// SetError gets a reference to the given string and assigns it to the Error field.
func (o *MessagesSendMessageToContact400Response) SetError(v string) {
	o.Error = &v
}

// GetDetails returns the Details field value if set, zero value otherwise.
func (o *MessagesSendMessageToContact400Response) GetDetails() []string {
	if o == nil || isNil(o.Details) {
		var ret []string
		return ret
	}
	return o.Details
}

// GetDetailsOk returns a tuple with the Details field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *MessagesSendMessageToContact400Response) GetDetailsOk() ([]string, bool) {
	if o == nil || isNil(o.Details) {
    return nil, false
	}
	return o.Details, true
}

// HasDetails returns a boolean if a field has been set.
func (o *MessagesSendMessageToContact400Response) HasDetails() bool {
	if o != nil && !isNil(o.Details) {
		return true
	}

	return false
}

// SetDetails gets a reference to the given []string and assigns it to the Details field.
func (o *MessagesSendMessageToContact400Response) SetDetails(v []string) {
	o.Details = v
}

func (o MessagesSendMessageToContact400Response) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.Error) {
		toSerialize["error"] = o.Error
	}
	if !isNil(o.Details) {
		toSerialize["details"] = o.Details
	}
	return json.Marshal(toSerialize)
}

type NullableMessagesSendMessageToContact400Response struct {
	value *MessagesSendMessageToContact400Response
	isSet bool
}

func (v NullableMessagesSendMessageToContact400Response) Get() *MessagesSendMessageToContact400Response {
	return v.value
}

func (v *NullableMessagesSendMessageToContact400Response) Set(val *MessagesSendMessageToContact400Response) {
	v.value = val
	v.isSet = true
}

func (v NullableMessagesSendMessageToContact400Response) IsSet() bool {
	return v.isSet
}

func (v *NullableMessagesSendMessageToContact400Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableMessagesSendMessageToContact400Response(val *MessagesSendMessageToContact400Response) *NullableMessagesSendMessageToContact400Response {
	return &NullableMessagesSendMessageToContact400Response{value: val, isSet: true}
}

func (v NullableMessagesSendMessageToContact400Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableMessagesSendMessageToContact400Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


