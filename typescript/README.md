# texthive-typescript-sdk<a id="texthive-typescript-sdk"></a>

TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

[![npm](https://img.shields.io/badge/npm-v1.0.0-blue)](https://www.npmjs.com/package/texthive-typescript-sdk/v/1.0.0)
[![More Info](https://img.shields.io/badge/More%20Info-Click%20Here-orange)](https://www.texthive.khulnasoft.com/)

## Table of Contents<a id="table-of-contents"></a>

<!-- toc -->

- [Installation](#installation)
- [Getting Started](#getting-started)
- [Reference](#reference)
  * [`texthive.contact.getContactById`](#texthivecontactgetcontactbyid)
  * [`texthive.contact.getContactByPhone`](#texthivecontactgetcontactbyphone)
  * [`texthive.customers.createCustomer`](#texthivecustomerscreatecustomer)
  * [`texthive.customers.deleteCustomer`](#texthivecustomersdeletecustomer)
  * [`texthive.customers.getAllCustomers`](#texthivecustomersgetallcustomers)
  * [`texthive.customers.getCustomerById`](#texthivecustomersgetcustomerbyid)
  * [`texthive.customers.updateCustomer`](#texthivecustomersupdatecustomer)
  * [`texthive.messages.sendMessageToContact`](#texthivemessagessendmessagetocontact)
  * [`texthive.messages.sendMessageToPhoneNumber`](#texthivemessagessendmessagetophonenumber)
  * [`texthive.sMS.getContactInfo`](#texthivesmsgetcontactinfo)
  * [`texthive.templates.createTemplate`](#texthivetemplatescreatetemplate)
  * [`texthive.templates.getTemplatesForCustomer`](#texthivetemplatesgettemplatesforcustomer)
  * [`texthive.whatsapp.getWhatsappContact`](#texthivewhatsappgetwhatsappcontact)

<!-- tocstop -->

## Installation<a id="installation"></a>

<table>
<tr>
<th width="292px"><code>npm</code></th>
<th width="293px"><code>pnpm</code></th>
<th width="292px"><code>yarn</code></th>
</tr>
<tr>
<td>

```bash
npm i texthive-typescript-sdk
```

</td>
<td>

```bash
pnpm i texthive-typescript-sdk
```

</td>
<td>

```bash
yarn add texthive-typescript-sdk
```

</td>
</tr>
</table>

## Getting Started<a id="getting-started"></a>

```typescript
import { Texthive } from "texthive-typescript-sdk";

const texthive = new Texthive({
  // Defining the base path is optional and defaults to http://localhost
  // basePath: "http://localhost",
  apiKey: "API_KEY",
  accessToken: "ACCESS_TOKEN",
});

const getContactByIdResponse = await texthive.contact.getContactById({
  customerId: "customerId_example",
  id: "id_example",
});

console.log(getContactByIdResponse);
```

## Reference<a id="reference"></a>


### `texthive.contact.getContactById`<a id="texthivecontactgetcontactbyid"></a>

Fetches detailed contact information including available messaging channels and verification status. Use this endpoint when you need to look up a specific contact using their unique identifier.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getContactByIdResponse = await texthive.contact.getContactById({
  customerId: "customerId_example",
  id: "id_example",
});
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customerId: `string`<a id="customerid-string"></a>

Unique identifier of the customer account

##### id: `string`<a id="id-string"></a>

Unique identifier of the contact

#### 🔄 Return<a id="🔄-return"></a>

[Contact](./models/contact.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/contact/{customerId}/id/{id}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.contact.getContactByPhone`<a id="texthivecontactgetcontactbyphone"></a>

Looks up contact information using a phone number. This endpoint is useful when you need to find a contact's details but only have their phone number. It returns the same detailed information as the ID-based lookup.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getContactByPhoneResponse = await texthive.contact.getContactByPhone({
  customerId: "customerId_example",
  phoneNumber: "phoneNumber_example",
});
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customerId: `string`<a id="customerid-string"></a>

Unique identifier of the customer account

##### phoneNumber: `string`<a id="phonenumber-string"></a>

Phone number in E.164 format (e.g., +1234567890)

#### 🔄 Return<a id="🔄-return"></a>

[Contact](./models/contact.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/contact/{customerId}/phone/{phoneNumber}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.customers.createCustomer`<a id="texthivecustomerscreatecustomer"></a>

Creates a new customer account in the Sent platform. This endpoint initializes a new customer profile with basic information and returns the created customer details including generated IDs and credentials for various messaging channels.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const createCustomerResponse = await texthive.customers.createCustomer(
  "example_string"
);
```

#### 🔄 Return<a id="🔄-return"></a>

[Customer](./models/customer.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/customers` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.customers.deleteCustomer`<a id="texthivecustomersdeletecustomer"></a>

Permanently deletes a customer and all associated data. This action cannot be undone. All active services for this customer will be terminated.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const deleteCustomerResponse = await texthive.customers.deleteCustomer({
  id: "id_example",
});
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### id: `string`<a id="id-string"></a>

Unique identifier of the customer to delete

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/customers/{id}` `DELETE`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.customers.getAllCustomers`<a id="texthivecustomersgetallcustomers"></a>

Returns a paginated list of all customers. Use page and pageSize parameters to control the number of results returned. Results are sorted by creation date in descending order.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getAllCustomersResponse = await texthive.customers.getAllCustomers({
  page: 1,
  pageSize: 20,
});
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### page: `number`<a id="page-number"></a>

Page number to retrieve (starts from 1)

##### pageSize: `number`<a id="pagesize-number"></a>

Number of items to return per page

#### 🔄 Return<a id="🔄-return"></a>

[Customer](./models/customer.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/customers` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.customers.getCustomerById`<a id="texthivecustomersgetcustomerbyid"></a>

Returns detailed information about a specific customer including their messaging channel configurations and credentials.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getCustomerByIdResponse = await texthive.customers.getCustomerById({
  id: "id_example",
});
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### id: `string`<a id="id-string"></a>

Unique identifier of the customer

#### 🔄 Return<a id="🔄-return"></a>

[Customer](./models/customer.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/customers/{id}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.customers.updateCustomer`<a id="texthivecustomersupdatecustomer"></a>

Updates an existing customer's information including messaging channel configurations. All fields in the request body will override existing values.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const updateCustomerResponse = await texthive.customers.updateCustomer({
  id: "id_example",
});
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### id: `string`<a id="id-string"></a>

Unique identifier of the customer to update

##### name: `string`<a id="name-string"></a>

Updated name of the customer organization

##### sendingPhoneNumber: `string`<a id="sendingphonenumber-string"></a>

Updated primary phone number for sending messages

##### smsMessagingProfileId: `string`<a id="smsmessagingprofileid-string"></a>

Updated SMS messaging profile identifier

##### smsBearerToken: `string`<a id="smsbearertoken-string"></a>

Updated bearer token for SMS authentication

#### 🔄 Return<a id="🔄-return"></a>

[Customer](./models/customer.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/customers/{id}` `PUT`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.messages.sendMessageToContact`<a id="texthivemessagessendmessagetocontact"></a>

Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact's preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const sendMessageToContactResponse = await texthive.messages.sendMessageToContact(
  {
    customerId: "customerId_example",
    contactId: "contactId_example",
    templateId: "templateId_example",
  }
);
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customerId: `string`<a id="customerid-string"></a>

Unique identifier of the customer

##### contactId: `string`<a id="contactid-string"></a>

Unique identifier of the contact

##### templateId: `string`<a id="templateid-string"></a>

Unique identifier of the message template

#### 🔄 Return<a id="🔄-return"></a>

[MessagesSendMessageToContactResponse](./models/messages-send-message-to-contact-response.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/messages` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.messages.sendMessageToPhoneNumber`<a id="texthivemessagessendmessagetophonenumber"></a>

Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn't exist.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const sendMessageToPhoneNumberResponse =
  await texthive.messages.sendMessageToPhoneNumber({
    customerId: "customerId_example",
    phoneNumber: "phoneNumber_example",
    templateId: "templateId_example",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customerId: `string`<a id="customerid-string"></a>

Unique identifier of the customer

##### phoneNumber: `string`<a id="phonenumber-string"></a>

Phone number in E.164 format

##### templateId: `string`<a id="templateid-string"></a>

Unique identifier of the message template

#### 🔄 Return<a id="🔄-return"></a>

[MessagesSendMessageToPhoneNumberResponse](./models/messages-send-message-to-phone-number-response.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/messages/phone-number` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.sMS.getContactInfo`<a id="texthivesmsgetcontactinfo"></a>

Fetches or creates SMS contact information for a given phone number. This endpoint validates the phone number, determines SMS capabilities, and returns detailed formatting information needed for message delivery. Use this before sending messages to ensure proper SMS channel availability.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getContactInfoResponse = await texthive.sMS.getContactInfo({
  phoneNumber: "phoneNumber_example",
  retrieveIfDoesNotExists: true,
});
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### phoneNumber: `string`<a id="phonenumber-string"></a>

Target phone number in E.164 format (e.g., +1234567890)

##### retrieveIfDoesNotExists: `boolean`<a id="retrieveifdoesnotexists-boolean"></a>

When true, creates a new SMS contact if one doesn\'t exist

##### sentId: `string`<a id="sentid-string"></a>

Optional Sent platform identifier for existing contacts

#### 🔄 Return<a id="🔄-return"></a>

[SMSPayload](./models/smspayload.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/sms` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.templates.createTemplate`<a id="texthivetemplatescreatetemplate"></a>

Creates a new message template that can be used for sending standardized messages across different channels. Templates ensure consistent messaging and support variable substitution.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const createTemplateResponse = await texthive.templates.createTemplate({
  customerId: "customerId_example",
  name: "name_example",
});
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customerId: `string`<a id="customerid-string"></a>

Unique identifier of the customer creating the template

##### name: `string`<a id="name-string"></a>

Name of the template for identification purposes

#### 🔄 Return<a id="🔄-return"></a>

[ResponsesTemplateResponse](./models/responses-template-response.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/templates` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.templates.getTemplatesForCustomer`<a id="texthivetemplatesgettemplatesforcustomer"></a>

Returns a list of all message templates associated with the specified customer ID. Templates are returned in descending order by creation date.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getTemplatesForCustomerResponse =
  await texthive.templates.getTemplatesForCustomer({
    customerId: "customerId_example",
  });
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customerId: `string`<a id="customerid-string"></a>

Unique identifier of the customer

#### 🔄 Return<a id="🔄-return"></a>

[ResponsesTemplateResponse](./models/responses-template-response.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/templates` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.whatsapp.getWhatsappContact`<a id="texthivewhatsappgetwhatsappcontact"></a>

Fetches or creates WhatsApp contact information for a given phone number. This endpoint validates WhatsApp availability and returns detailed contact metadata including business account status and profile information.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```typescript
const getWhatsappContactResponse = await texthive.whatsapp.getWhatsappContact({
  phoneNumber: "+14155552671",
  retrieveIfDoesNotExists: false,
});
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### phoneNumber: `string`<a id="phonenumber-string"></a>

Phone number in international format (E.164)

##### retrieveIfDoesNotExists: `boolean`<a id="retrieveifdoesnotexists-boolean"></a>

Whether to create a new contact if one doesn\'t exist

##### sentId: `string`<a id="sentid-string"></a>

Optional Sent platform identifier for tracking

#### 🔄 Return<a id="🔄-return"></a>

[WhatsAppPayload](./models/whats-app-payload.ts)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/whatsapp` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


## Author<a id="author"></a>
This TypeScript package is automatically generated by [Konfig](https://konfigthis.com)
