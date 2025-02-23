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

// SendMessageToContactRequest Request model for sending a message to a contact using a template
type SendMessageToContactRequest struct {
	// Unique identifier of the customer
	CustomerId string `json:"customerId"`
	// Unique identifier of the contact
	ContactId string `json:"contactId"`
	// Unique identifier of the message template
	TemplateId string `json:"templateId"`
}

// NewSendMessageToContactRequest instantiates a new SendMessageToContactRequest object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSendMessageToContactRequest(customerId string, contactId string, templateId string) *SendMessageToContactRequest {
	this := SendMessageToContactRequest{}
	this.CustomerId = customerId
	this.ContactId = contactId
	this.TemplateId = templateId
	return &this
}

// NewSendMessageToContactRequestWithDefaults instantiates a new SendMessageToContactRequest object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSendMessageToContactRequestWithDefaults() *SendMessageToContactRequest {
	this := SendMessageToContactRequest{}
	return &this
}

// GetCustomerId returns the CustomerId field value
func (o *SendMessageToContactRequest) GetCustomerId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.CustomerId
}

// GetCustomerIdOk returns a tuple with the CustomerId field value
// and a boolean to check if the value has been set.
func (o *SendMessageToContactRequest) GetCustomerIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.CustomerId, true
}

// SetCustomerId sets field value
func (o *SendMessageToContactRequest) SetCustomerId(v string) {
	o.CustomerId = v
}

// GetContactId returns the ContactId field value
func (o *SendMessageToContactRequest) GetContactId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.ContactId
}

// GetContactIdOk returns a tuple with the ContactId field value
// and a boolean to check if the value has been set.
func (o *SendMessageToContactRequest) GetContactIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.ContactId, true
}

// SetContactId sets field value
func (o *SendMessageToContactRequest) SetContactId(v string) {
	o.ContactId = v
}

// GetTemplateId returns the TemplateId field value
func (o *SendMessageToContactRequest) GetTemplateId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.TemplateId
}

// GetTemplateIdOk returns a tuple with the TemplateId field value
// and a boolean to check if the value has been set.
func (o *SendMessageToContactRequest) GetTemplateIdOk() (*string, bool) {
	if o == nil {
    return nil, false
	}
	return &o.TemplateId, true
}

// SetTemplateId sets field value
func (o *SendMessageToContactRequest) SetTemplateId(v string) {
	o.TemplateId = v
}

func (o SendMessageToContactRequest) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["customerId"] = o.CustomerId
	}
	if true {
		toSerialize["contactId"] = o.ContactId
	}
	if true {
		toSerialize["templateId"] = o.TemplateId
	}
	return json.Marshal(toSerialize)
}

type NullableSendMessageToContactRequest struct {
	value *SendMessageToContactRequest
	isSet bool
}

func (v NullableSendMessageToContactRequest) Get() *SendMessageToContactRequest {
	return v.value
}

func (v *NullableSendMessageToContactRequest) Set(val *SendMessageToContactRequest) {
	v.value = val
	v.isSet = true
}

func (v NullableSendMessageToContactRequest) IsSet() bool {
	return v.isSet
}

func (v *NullableSendMessageToContactRequest) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSendMessageToContactRequest(val *SendMessageToContactRequest) *NullableSendMessageToContactRequest {
	return &NullableSendMessageToContactRequest{value: val, isSet: true}
}

func (v NullableSendMessageToContactRequest) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSendMessageToContactRequest) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


