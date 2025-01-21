# texthive<a id="texthive"></a>

TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

For more information, please visit [https://www.texthive.khulnasoft.com/](https://www.texthive.khulnasoft.com/)

## Table of Contents<a id="table-of-contents"></a>

<!-- toc -->

- [Installation](#installation)
- [Getting Started](#getting-started)
- [Raw HTTP Response](#raw-http-response)
- [Reference](#reference)
  * [`texthive.contact.get_contact_by_id`](#texthivecontactget_contact_by_id)
  * [`texthive.contact.get_contact_by_phone`](#texthivecontactget_contact_by_phone)
  * [`texthive.customers.create_customer`](#texthivecustomerscreate_customer)
  * [`texthive.customers.delete_customer`](#texthivecustomersdelete_customer)
  * [`texthive.customers.get_all_customers`](#texthivecustomersget_all_customers)
  * [`texthive.customers.get_customer_by_id`](#texthivecustomersget_customer_by_id)
  * [`texthive.customers.update_customer`](#texthivecustomersupdate_customer)
  * [`texthive.messages.send_message_to_contact`](#texthivemessagessend_message_to_contact)
  * [`texthive.messages.send_message_to_phone_number`](#texthivemessagessend_message_to_phone_number)
  * [`texthive.sms.get_contact_info`](#texthivesmsget_contact_info)
  * [`texthive.templates.create_template`](#texthivetemplatescreate_template)
  * [`texthive.templates.get_templates_for_customer`](#texthivetemplatesget_templates_for_customer)
  * [`texthive.whatsapp.get_whatsapp_contact`](#texthivewhatsappget_whatsapp_contact)

<!-- tocstop -->

## Installation<a id="installation"></a>

Add to Gemfile:

```ruby
gem 'texthive', '~> 1.0.0'
```

## Getting Started<a id="getting-started"></a>

```ruby
require 'texthive'
configuration = Texthive::Configuration.new
configuration.api_key = 'YOUR API KEY'
configuration.access_token = 'YOUR_BEARER_TOKEN'
texthive = texthive::Client.new(configuration)
result = texthive.contact.get_contact_by_id(
  customer_id: "customerId_example",
  id: "id_example",
)
p result
```

## Raw HTTP Response<a id="raw-http-response"></a>

To access the raw HTTP response, suffix any method with `_with_http_info`.

```ruby
result = texthive.contact.get_contact_by_id_with_http_info(
  customer_id: "customerId_example",
  id: "id_example",
)
p result.data # [Contact] Deserialized data
p.result.status_code # [Integer] HTTP status code
p.result.headers # [Hash] HTTP headers
p.result.response # [Faraday::Response] Raw HTTP response
```

## Reference<a id="reference"></a>


### `texthive.contact.get_contact_by_id`<a id="texthivecontactget_contact_by_id"></a>

Fetches detailed contact information including available messaging channels and verification status. Use this endpoint when you need to look up a specific contact using their unique identifier.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = texthive.contact.get_contact_by_id(
  customer_id: "customerId_example",
  id: "id_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customer_id: `String`<a id="customer_id-string"></a>
Unique identifier of the customer account

##### id: `String`<a id="id-string"></a>
Unique identifier of the contact

#### 🔄 Return<a id="🔄-return"></a>

[Contact](./lib/texthive/models/contact.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/contact/{customerId}/id/{id}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.contact.get_contact_by_phone`<a id="texthivecontactget_contact_by_phone"></a>

Looks up contact information using a phone number. This endpoint is useful when you need to find a contact's details but only have their phone number. It returns the same detailed information as the ID-based lookup.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = texthive.contact.get_contact_by_phone(
  customer_id: "customerId_example",
  phone_number: "phoneNumber_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customer_id: `String`<a id="customer_id-string"></a>
Unique identifier of the customer account

##### phone_number: `String`<a id="phone_number-string"></a>
Phone number in E.164 format (e.g., +1234567890)

#### 🔄 Return<a id="🔄-return"></a>

[Contact](./lib/texthive/models/contact.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/contact/{customerId}/phone/{phoneNumber}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.customers.create_customer`<a id="texthivecustomerscreate_customer"></a>

Creates a new customer account in the Sent platform. This endpoint initializes a new customer profile with basic information and returns the created customer details including generated IDs and credentials for various messaging channels.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = texthive.customers.create_customer(
  body: "Acme Corp",
)
p result
```

#### 🔄 Return<a id="🔄-return"></a>

[Customer](./lib/texthive/models/customer.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/customers` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.customers.delete_customer`<a id="texthivecustomersdelete_customer"></a>

Permanently deletes a customer and all associated data. This action cannot be undone. All active services for this customer will be terminated.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
texthive.customers.delete_customer(
  id: "id_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### id: `String`<a id="id-string"></a>
Unique identifier of the customer to delete

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/customers/{id}` `DELETE`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.customers.get_all_customers`<a id="texthivecustomersget_all_customers"></a>

Returns a paginated list of all customers. Use page and pageSize parameters to control the number of results returned. Results are sorted by creation date in descending order.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = texthive.customers.get_all_customers(
  page: 1,
  page_size: 20,
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### page: `Integer`<a id="page-integer"></a>
Page number to retrieve (starts from 1)

##### page_size: `Integer`<a id="page_size-integer"></a>
Number of items to return per page

#### 🔄 Return<a id="🔄-return"></a>

[Customer](./lib/texthive/models/customer.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/customers` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.customers.get_customer_by_id`<a id="texthivecustomersget_customer_by_id"></a>

Returns detailed information about a specific customer including their messaging channel configurations and credentials.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = texthive.customers.get_customer_by_id(
  id: "id_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### id: `String`<a id="id-string"></a>
Unique identifier of the customer

#### 🔄 Return<a id="🔄-return"></a>

[Customer](./lib/texthive/models/customer.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/customers/{id}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.customers.update_customer`<a id="texthivecustomersupdate_customer"></a>

Updates an existing customer's information including messaging channel configurations. All fields in the request body will override existing values.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = texthive.customers.update_customer(
  id: "id_example",
  name: "string_example",
  sending_phone_number: "string_example",
  sms_messaging_profile_id: "string_example",
  sms_bearer_token: "string_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### id: `String`<a id="id-string"></a>
Unique identifier of the customer to update

##### name: `String`<a id="name-string"></a>
Updated name of the customer organization

##### sendingPhoneNumber: `String`<a id="sendingphonenumber-string"></a>
Updated primary phone number for sending messages

##### smsMessagingProfileId: `String`<a id="smsmessagingprofileid-string"></a>
Updated SMS messaging profile identifier

##### smsBearerToken: `String`<a id="smsbearertoken-string"></a>
Updated bearer token for SMS authentication

#### 🔄 Return<a id="🔄-return"></a>

[Customer](./lib/texthive/models/customer.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/customers/{id}` `PUT`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.messages.send_message_to_contact`<a id="texthivemessagessend_message_to_contact"></a>

Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact's preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = texthive.messages.send_message_to_contact(
  customer_id: "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  contact_id: "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  template_id: "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customerId: `String`<a id="customerid-string"></a>
Unique identifier of the customer

##### contactId: `String`<a id="contactid-string"></a>
Unique identifier of the contact

##### templateId: `String`<a id="templateid-string"></a>
Unique identifier of the message template

#### 🔄 Return<a id="🔄-return"></a>

[MessagesSendMessageToContactResponse](./lib/texthive/models/messages_send_message_to_contact_response.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/messages` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.messages.send_message_to_phone_number`<a id="texthivemessagessend_message_to_phone_number"></a>

Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn't exist.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = texthive.messages.send_message_to_phone_number(
  customer_id: "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  phone_number: "string_example",
  template_id: "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customerId: `String`<a id="customerid-string"></a>
Unique identifier of the customer

##### phoneNumber: `String`<a id="phonenumber-string"></a>
Phone number in E.164 format

##### templateId: `String`<a id="templateid-string"></a>
Unique identifier of the message template

#### 🔄 Return<a id="🔄-return"></a>

[MessagesSendMessageToPhoneNumberResponse](./lib/texthive/models/messages_send_message_to_phone_number_response.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/messages/phone-number` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.sms.get_contact_info`<a id="texthivesmsget_contact_info"></a>

Fetches or creates SMS contact information for a given phone number. This endpoint validates the phone number, determines SMS capabilities, and returns detailed formatting information needed for message delivery. Use this before sending messages to ensure proper SMS channel availability.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = texthive.sms.get_contact_info(
  phone_number: "+14155552671",
  retrieve_if_does_not_exists: true,
  sent_id: "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### phone_number: `String`<a id="phone_number-string"></a>
Target phone number in E.164 format (e.g., +1234567890)

##### retrieve_if_does_not_exists: `Boolean`<a id="retrieve_if_does_not_exists-boolean"></a>
When true, creates a new SMS contact if one doesn't exist

##### sent_id: `String`<a id="sent_id-string"></a>
Optional Sent platform identifier for existing contacts

#### 🔄 Return<a id="🔄-return"></a>

[SMSPayload](./lib/texthive/models/sms_payload.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/sms` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.templates.create_template`<a id="texthivetemplatescreate_template"></a>

Creates a new message template that can be used for sending standardized messages across different channels. Templates ensure consistent messaging and support variable substitution.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = texthive.templates.create_template(
  customer_id: "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
  name: "a",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customerId: `String`<a id="customerid-string"></a>
Unique identifier of the customer creating the template

##### name: `String`<a id="name-string"></a>
Name of the template for identification purposes

#### 🔄 Return<a id="🔄-return"></a>

[ResponsesTemplateResponse](./lib/texthive/models/responses_template_response.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/templates` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.templates.get_templates_for_customer`<a id="texthivetemplatesget_templates_for_customer"></a>

Returns a list of all message templates associated with the specified customer ID. Templates are returned in descending order by creation date.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = texthive.templates.get_templates_for_customer(
  customer_id: "customerId_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customer_id: `String`<a id="customer_id-string"></a>
Unique identifier of the customer

#### 🔄 Return<a id="🔄-return"></a>

[ResponsesTemplateResponse](./lib/texthive/models/responses_template_response.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/templates` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.whatsapp.get_whatsapp_contact`<a id="texthivewhatsappget_whatsapp_contact"></a>

Fetches or creates WhatsApp contact information for a given phone number. This endpoint validates WhatsApp availability and returns detailed contact metadata including business account status and profile information.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = texthive.whatsapp.get_whatsapp_contact(
  phone_number: "+14155552671",
  retrieve_if_does_not_exists: false,
  sent_id: "046b6c7f-0b8a-43b9-b35d-6489e6daee91",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### phone_number: `String`<a id="phone_number-string"></a>
Phone number in international format (E.164)

##### retrieve_if_does_not_exists: `Boolean`<a id="retrieve_if_does_not_exists-boolean"></a>
Whether to create a new contact if one doesn't exist

##### sent_id: `String`<a id="sent_id-string"></a>
Optional Sent platform identifier for tracking

#### 🔄 Return<a id="🔄-return"></a>

[WhatsAppPayload](./lib/texthive/models/whats_app_payload.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/whatsapp` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


## Author<a id="author"></a>
This TypeScript package is automatically generated by [Konfig](https://konfigthis.com)
