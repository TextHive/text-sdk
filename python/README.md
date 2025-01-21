# texthive-python-sdk<a id="texthive-python-sdk"></a>

TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.


[![PyPI](https://img.shields.io/badge/PyPI-v1.0.0-blue)](https://pypi.org/project/texthive-python-sdk/1.0.0)
[![README.md](https://img.shields.io/badge/README-Click%20Here-green)](https://github.com/texthive/text-sdks/tree/main/python#readme)
[![More Info](https://img.shields.io/badge/More%20Info-Click%20Here-orange)](https://www.texthive.khulnasoft.com/)

## Table of Contents<a id="table-of-contents"></a>

<!-- toc -->

- [Requirements](#requirements)
- [Installation](#installation)
- [Getting Started](#getting-started)
- [Async](#async)
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

## Requirements<a id="requirements"></a>

Python >=3.7

## Installation<a id="installation"></a>

```sh
pip install texthive-python-sdk==1.0.0
```

## Getting Started<a id="getting-started"></a>

```python
from pprint import pprint
from texthive import Texthive, ApiException

texthive = Texthive(api_key="YOUR_API_KEY", access_token="YOUR_BEARER_TOKEN")

try:
    # Retrieve a contact by ID
    get_contact_by_id_response = texthive.contact.get_contact_by_id(
        customer_id="customerId_example",
        id="id_example",
    )
    print(get_contact_by_id_response)
except ApiException as e:
    print("Exception when calling ContactApi.get_contact_by_id: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```

## Async<a id="async"></a>

`async` support is available by prepending `a` to any method.

```python
import asyncio
from pprint import pprint
from texthive import Texthive, ApiException

texthive = Texthive(api_key="YOUR_API_KEY", access_token="YOUR_BEARER_TOKEN")


async def main():
    try:
        # Retrieve a contact by ID
        get_contact_by_id_response = await texthive.contact.aget_contact_by_id(
            customer_id="customerId_example",
            id="id_example",
        )
        print(get_contact_by_id_response)
    except ApiException as e:
        print("Exception when calling ContactApi.get_contact_by_id: %s\n" % e)
        pprint(e.body)
        pprint(e.headers)
        pprint(e.status)
        pprint(e.reason)
        pprint(e.round_trip_time)


asyncio.run(main())
```

## Raw HTTP Response<a id="raw-http-response"></a>

To access raw HTTP response values, use the `.raw` namespace.

```python
from pprint import pprint
from texthive import Texthive, ApiException

texthive = Texthive(api_key="YOUR_API_KEY", access_token="YOUR_BEARER_TOKEN")

try:
    # Retrieve a contact by ID
    get_contact_by_id_response = texthive.contact.raw.get_contact_by_id(
        customer_id="customerId_example",
        id="id_example",
    )
    pprint(get_contact_by_id_response.body)
    pprint(get_contact_by_id_response.body["id"])
    pprint(get_contact_by_id_response.body["phone_number"])
    pprint(get_contact_by_id_response.body["country_code"])
    pprint(get_contact_by_id_response.body["national_format"])
    pprint(get_contact_by_id_response.body["available_channels"])
    pprint(get_contact_by_id_response.body["default_channel"])
    pprint(get_contact_by_id_response.body["verified"])
    pprint(get_contact_by_id_response.body["created_at"])
    pprint(get_contact_by_id_response.body["updated_at"])
    pprint(get_contact_by_id_response.headers)
    pprint(get_contact_by_id_response.status)
    pprint(get_contact_by_id_response.round_trip_time)
except ApiException as e:
    print("Exception when calling ContactApi.get_contact_by_id: %s\n" % e)
    pprint(e.body)
    pprint(e.headers)
    pprint(e.status)
    pprint(e.reason)
    pprint(e.round_trip_time)
```


## Reference<a id="reference"></a>
### `texthive.contact.get_contact_by_id`<a id="texthivecontactget_contact_by_id"></a>

Fetches detailed contact information including available messaging channels and verification status. Use this endpoint when you need to look up a specific contact using their unique identifier.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_contact_by_id_response = texthive.contact.get_contact_by_id(
    customer_id="customerId_example",
    id="id_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customer_id: `str`<a id="customer_id-str"></a>

Unique identifier of the customer account

##### id: `str`<a id="id-str"></a>

Unique identifier of the contact

#### 🔄 Return<a id="🔄-return"></a>

[`Contact`](./texthive/pydantic/contact.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/contact/{customerId}/id/{id}` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `texthive.contact.get_contact_by_phone`<a id="texthivecontactget_contact_by_phone"></a>

Looks up contact information using a phone number. This endpoint is useful when you need to find a contact's details but only have their phone number. It returns the same detailed information as the ID-based lookup.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_contact_by_phone_response = texthive.contact.get_contact_by_phone(
    customer_id="customerId_example",
    phone_number="phoneNumber_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customer_id: `str`<a id="customer_id-str"></a>

Unique identifier of the customer account

##### phone_number: `str`<a id="phone_number-str"></a>

Phone number in E.164 format (e.g., +1234567890)

#### 🔄 Return<a id="🔄-return"></a>

[`Contact`](./texthive/pydantic/contact.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/contact/{customerId}/phone/{phoneNumber}` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `texthive.customers.create_customer`<a id="texthivecustomerscreate_customer"></a>

Creates a new customer account in the Sent platform. This endpoint initializes a new customer profile with basic information and returns the created customer details including generated IDs and credentials for various messaging channels.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
create_customer_response = texthive.customers.create_customer(
    body="Acme Corp",
)
```

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

`str`
Customer name to create the account

#### 🔄 Return<a id="🔄-return"></a>

[`Customer`](./texthive/pydantic/customer.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/customers` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `texthive.customers.delete_customer`<a id="texthivecustomersdelete_customer"></a>

Permanently deletes a customer and all associated data. This action cannot be undone. All active services for this customer will be terminated.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
texthive.customers.delete_customer(
    id="id_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### id: `str`<a id="id-str"></a>

Unique identifier of the customer to delete

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/customers/{id}` `delete`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `texthive.customers.get_all_customers`<a id="texthivecustomersget_all_customers"></a>

Returns a paginated list of all customers. Use page and pageSize parameters to control the number of results returned. Results are sorted by creation date in descending order.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_all_customers_response = texthive.customers.get_all_customers(
    page=1,
    page_size=20,
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### page: `int`<a id="page-int"></a>

Page number to retrieve (starts from 1)

##### page_size: `int`<a id="page_size-int"></a>

Number of items to return per page

#### 🔄 Return<a id="🔄-return"></a>

[`CustomersGetAllCustomersResponse`](./texthive/pydantic/customers_get_all_customers_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/customers` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `texthive.customers.get_customer_by_id`<a id="texthivecustomersget_customer_by_id"></a>

Returns detailed information about a specific customer including their messaging channel configurations and credentials.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_customer_by_id_response = texthive.customers.get_customer_by_id(
    id="id_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### id: `str`<a id="id-str"></a>

Unique identifier of the customer

#### 🔄 Return<a id="🔄-return"></a>

[`Customer`](./texthive/pydantic/customer.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/customers/{id}` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `texthive.customers.update_customer`<a id="texthivecustomersupdate_customer"></a>

Updates an existing customer's information including messaging channel configurations. All fields in the request body will override existing values.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
update_customer_response = texthive.customers.update_customer(
    id="id_example",
    name="string_example",
    sending_phone_number="string_example",
    sms_messaging_profile_id="string_example",
    sms_bearer_token="string_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### id: `str`<a id="id-str"></a>

Unique identifier of the customer to update

##### name: `str`<a id="name-str"></a>

Updated name of the customer organization

##### sending_phone_number: `str`<a id="sending_phone_number-str"></a>

Updated primary phone number for sending messages

##### sms_messaging_profile_id: `str`<a id="sms_messaging_profile_id-str"></a>

Updated SMS messaging profile identifier

##### sms_bearer_token: `str`<a id="sms_bearer_token-str"></a>

Updated bearer token for SMS authentication

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`CustomersUpdateCustomerRequest`](./texthive/type/customers_update_customer_request.py)
Updated customer information

#### 🔄 Return<a id="🔄-return"></a>

[`Customer`](./texthive/pydantic/customer.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/customers/{id}` `put`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `texthive.messages.send_message_to_contact`<a id="texthivemessagessend_message_to_contact"></a>

Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact's preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
send_message_to_contact_response = texthive.messages.send_message_to_contact(
    customer_id="046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    contact_id="046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    template_id="046b6c7f-0b8a-43b9-b35d-6489e6daee91",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customer_id: `str`<a id="customer_id-str"></a>

Unique identifier of the customer

##### contact_id: `str`<a id="contact_id-str"></a>

Unique identifier of the contact

##### template_id: `str`<a id="template_id-str"></a>

Unique identifier of the message template

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`SendMessageToContactRequest`](./texthive/type/send_message_to_contact_request.py)
Message details including customer ID, contact ID, and template ID

#### 🔄 Return<a id="🔄-return"></a>

[`MessagesSendMessageToContactResponse`](./texthive/pydantic/messages_send_message_to_contact_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/messages` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `texthive.messages.send_message_to_phone_number`<a id="texthivemessagessend_message_to_phone_number"></a>

Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn't exist.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
send_message_to_phone_number_response = texthive.messages.send_message_to_phone_number(
    customer_id="046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    phone_number="string_example",
    template_id="046b6c7f-0b8a-43b9-b35d-6489e6daee91",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customer_id: `str`<a id="customer_id-str"></a>

Unique identifier of the customer

##### phone_number: `str`<a id="phone_number-str"></a>

Phone number in E.164 format

##### template_id: `str`<a id="template_id-str"></a>

Unique identifier of the message template

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`SendMessageToPhoneNumberRequest`](./texthive/type/send_message_to_phone_number_request.py)
Message details including customer ID, phone number, and template ID

#### 🔄 Return<a id="🔄-return"></a>

[`MessagesSendMessageToPhoneNumberResponse`](./texthive/pydantic/messages_send_message_to_phone_number_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/messages/phone-number` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `texthive.sms.get_contact_info`<a id="texthivesmsget_contact_info"></a>

Fetches or creates SMS contact information for a given phone number. This endpoint validates the phone number, determines SMS capabilities, and returns detailed formatting information needed for message delivery. Use this before sending messages to ensure proper SMS channel availability.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_contact_info_response = texthive.sms.get_contact_info(
    phone_number="+14155552671",
    retrieve_if_does_not_exists=True,
    sent_id="046b6c7f-0b8a-43b9-b35d-6489e6daee91",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### phone_number: `str`<a id="phone_number-str"></a>

Target phone number in E.164 format (e.g., +1234567890)

##### retrieve_if_does_not_exists: `bool`<a id="retrieve_if_does_not_exists-bool"></a>

When true, creates a new SMS contact if one doesn't exist

##### sent_id: `Optional[str]`<a id="sent_id-optionalstr"></a>

Optional Sent platform identifier for existing contacts

#### 🔄 Return<a id="🔄-return"></a>

[`SMSPayload`](./texthive/pydantic/sms_payload.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/sms` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `texthive.templates.create_template`<a id="texthivetemplatescreate_template"></a>

Creates a new message template that can be used for sending standardized messages across different channels. Templates ensure consistent messaging and support variable substitution.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
create_template_response = texthive.templates.create_template(
    customer_id="046b6c7f-0b8a-43b9-b35d-6489e6daee91",
    name="a",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customer_id: `str`<a id="customer_id-str"></a>

Unique identifier of the customer creating the template

##### name: `str`<a id="name-str"></a>

Name of the template for identification purposes

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

[`TemplateCreateRequest`](./texthive/type/template_create_request.py)
Template creation details including customer ID and template name

#### 🔄 Return<a id="🔄-return"></a>

[`ResponsesTemplateResponse`](./texthive/pydantic/responses_template_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/templates` `post`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `texthive.templates.get_templates_for_customer`<a id="texthivetemplatesget_templates_for_customer"></a>

Returns a list of all message templates associated with the specified customer ID. Templates are returned in descending order by creation date.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_templates_for_customer_response = texthive.templates.get_templates_for_customer(
    customer_id="customerId_example",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customer_id: `str`<a id="customer_id-str"></a>

Unique identifier of the customer

#### 🔄 Return<a id="🔄-return"></a>

[`TemplatesGetTemplatesForCustomerResponse`](./texthive/pydantic/templates_get_templates_for_customer_response.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/templates` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---

### `texthive.whatsapp.get_whatsapp_contact`<a id="texthivewhatsappget_whatsapp_contact"></a>

Fetches or creates WhatsApp contact information for a given phone number. This endpoint validates WhatsApp availability and returns detailed contact metadata including business account status and profile information.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```python
get_whatsapp_contact_response = texthive.whatsapp.get_whatsapp_contact(
    phone_number="+14155552671",
    retrieve_if_does_not_exists=False,
    sent_id="046b6c7f-0b8a-43b9-b35d-6489e6daee91",
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### phone_number: `str`<a id="phone_number-str"></a>

Phone number in international format (E.164)

##### retrieve_if_does_not_exists: `bool`<a id="retrieve_if_does_not_exists-bool"></a>

Whether to create a new contact if one doesn't exist

##### sent_id: `Optional[str]`<a id="sent_id-optionalstr"></a>

Optional Sent platform identifier for tracking

#### 🔄 Return<a id="🔄-return"></a>

[`WhatsAppPayload`](./texthive/pydantic/whats_app_payload.py)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/whatsapp` `get`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


## Author<a id="author"></a>
This Python package is automatically generated by [Konfig](https://konfigthis.com)
