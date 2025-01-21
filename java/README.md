# texthive-java-sdk<a id="texthive-java-sdk"></a>

TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

[![Maven Central](https://img.shields.io/badge/Maven%20Central-v1.0.0-blue)](https://central.sonatype.com/artifact/com.texthive/texthive-java-sdk/1.0.0)
[![More Info](https://img.shields.io/badge/More%20Info-Click%20Here-orange)](https://www.texthive.khulnasoft.com/)

## Table of Contents<a id="table-of-contents"></a>

<!-- toc -->

- [Requirements](#requirements)
- [Installation](#installation)
  * [Maven users](#maven-users)
  * [Gradle users](#gradle-users)
  * [Android users](#android-users)
  * [Others](#others)
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
  * [`texthive.sms.getContactInfo`](#texthivesmsgetcontactinfo)
  * [`texthive.templates.createTemplate`](#texthivetemplatescreatetemplate)
  * [`texthive.templates.getTemplatesForCustomer`](#texthivetemplatesgettemplatesforcustomer)
  * [`texthive.whatsapp.getWhatsappContact`](#texthivewhatsappgetwhatsappcontact)

<!-- tocstop -->

## Requirements<a id="requirements"></a>

Building the API client library requires:

1. Java 1.8+
2. Maven (3.8.3+)/Gradle (7.2+)

If you are adding this library to an Android Application or Library:

3. Android 8.0+ (API Level 26+)

## Installation<a id="installation"></a>

To install the API client library to your local Maven repository, simply execute:

```shell
mvn clean install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn clean deploy
```

Refer to the [OSSRH Guide](http://central.sonatype.org/pages/ossrh-guide.html) for more information.

### Maven users<a id="maven-users"></a>

Add this dependency to your project's POM:

```xml
<dependency>
  <groupId>com.texthive</groupId>
  <artifactId>texthive-java-sdk</artifactId>
  <version>1.0.0</version>
  <scope>compile</scope>
</dependency>
```

### Gradle users<a id="gradle-users"></a>

Add this dependency to your `build.gradle`:

```groovy
// build.gradle
repositories {
  mavenCentral()
}

dependencies {
   implementation "com.texthive:texthive-java-sdk:1.0.0"
}
```

### Android users<a id="android-users"></a>

Make sure your `build.gradle` file as a `minSdk` version of at least 26:
```groovy
// build.gradle
android {
    defaultConfig {
        minSdk 26
    }
}
```

Also make sure your library or application has internet permissions in your `AndroidManifest.xml`:

```xml
<!--AndroidManifest.xml-->
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools">
    <uses-permission android:name="android.permission.INTERNET"/>
</manifest>
```

### Others<a id="others"></a>

At first generate the JAR by executing:

```shell
mvn clean package
```

Then manually install the following JARs:

* `target/texthive-java-sdk-1.0.0.jar`
* `target/lib/*.jar`

## Getting Started<a id="getting-started"></a>

Please follow the [installation](#installation) instruction and execute the following Java code:

```java
import com.texthive.client.ApiClient;
import com.texthive.client.ApiException;
import com.texthive.client.ApiResponse;
import com.texthive.client.Texthive;
import com.texthive.client.Configuration;
import com.texthive.client.auth.*;
import com.texthive.client.model.*;
import com.texthive.client.api.ContactApi;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class Example {
  public static void main(String[] args) {
    Configuration configuration = new Configuration();
    configuration.host = "http://localhost";
    
    configuration.apiKey  = "YOUR API KEY";
    
    // Configure HTTP bearer authorization: BearerAuth
    configuration.token = "BEARER TOKEN";
    Texthive client = new Texthive(configuration);
    UUID customerId = UUID.randomUUID(); // Unique identifier of the customer account
    UUID id = UUID.randomUUID(); // Unique identifier of the contact
    try {
      Contact result = client
              .contact
              .getContactById(customerId, id)
              .execute();
      System.out.println(result);
      System.out.println(result.getId());
      System.out.println(result.getPhoneNumber());
      System.out.println(result.getCountryCode());
      System.out.println(result.getNationalFormat());
      System.out.println(result.getAvailableChannels());
      System.out.println(result.getDefaultChannel());
      System.out.println(result.getVerified());
      System.out.println(result.getCreatedAt());
      System.out.println(result.getUpdatedAt());
    } catch (ApiException e) {
      System.err.println("Exception when calling ContactApi#getContactById");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }

    // Use .executeWithHttpInfo() to retrieve HTTP Status Code, Headers and Request
    try {
      ApiResponse<Contact> response = client
              .contact
              .getContactById(customerId, id)
              .executeWithHttpInfo();
      System.out.println(response.getResponseBody());
      System.out.println(response.getResponseHeaders());
      System.out.println(response.getStatusCode());
      System.out.println(response.getRoundTripTime());
      System.out.println(response.getRequest());
    } catch (ApiException e) {
      System.err.println("Exception when calling ContactApi#getContactById");
      System.err.println("Status code: " + e.getStatusCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}

```
## Reference<a id="reference"></a>


### `texthive.contact.getContactById`<a id="texthivecontactgetcontactbyid"></a>

Fetches detailed contact information including available messaging channels and verification status. Use this endpoint when you need to look up a specific contact using their unique identifier.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
Contact result = client
        .contact
        .getContactById(customerId, id)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customerId: `UUID`<a id="customerid-uuid"></a>

Unique identifier of the customer account

##### id: `UUID`<a id="id-uuid"></a>

Unique identifier of the contact

#### 🔄 Return<a id="🔄-return"></a>

[Contact](./src/main/java/com/konfigthis/client/model/Contact.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/contact/{customerId}/id/{id}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.contact.getContactByPhone`<a id="texthivecontactgetcontactbyphone"></a>

Looks up contact information using a phone number. This endpoint is useful when you need to find a contact's details but only have their phone number. It returns the same detailed information as the ID-based lookup.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
Contact result = client
        .contact
        .getContactByPhone(customerId, phoneNumber)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customerId: `UUID`<a id="customerid-uuid"></a>

Unique identifier of the customer account

##### phoneNumber: `String`<a id="phonenumber-string"></a>

Phone number in E.164 format (e.g., +1234567890)

#### 🔄 Return<a id="🔄-return"></a>

[Contact](./src/main/java/com/konfigthis/client/model/Contact.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/contact/{customerId}/phone/{phoneNumber}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.customers.createCustomer`<a id="texthivecustomerscreatecustomer"></a>

Creates a new customer account in the Sent platform. This endpoint initializes a new customer profile with basic information and returns the created customer details including generated IDs and credentials for various messaging channels.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
Customer result = client
        .customers
        .createCustomer()
        .execute();
```

#### 🔄 Return<a id="🔄-return"></a>

[Customer](./src/main/java/com/konfigthis/client/model/Customer.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/customers` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.customers.deleteCustomer`<a id="texthivecustomersdeletecustomer"></a>

Permanently deletes a customer and all associated data. This action cannot be undone. All active services for this customer will be terminated.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
client
        .customers
        .deleteCustomer(id)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### id: `UUID`<a id="id-uuid"></a>

Unique identifier of the customer to delete

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/customers/{id}` `DELETE`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.customers.getAllCustomers`<a id="texthivecustomersgetallcustomers"></a>

Returns a paginated list of all customers. Use page and pageSize parameters to control the number of results returned. Results are sorted by creation date in descending order.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
List<Customer> result = client
        .customers
        .getAllCustomers(page, pageSize)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### page: `Integer`<a id="page-integer"></a>

Page number to retrieve (starts from 1)

##### pageSize: `Integer`<a id="pagesize-integer"></a>

Number of items to return per page

#### 🔄 Return<a id="🔄-return"></a>

[Customer](./src/main/java/com/konfigthis/client/model/Customer.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/customers` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.customers.getCustomerById`<a id="texthivecustomersgetcustomerbyid"></a>

Returns detailed information about a specific customer including their messaging channel configurations and credentials.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
Customer result = client
        .customers
        .getCustomerById(id)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### id: `UUID`<a id="id-uuid"></a>

Unique identifier of the customer

#### 🔄 Return<a id="🔄-return"></a>

[Customer](./src/main/java/com/konfigthis/client/model/Customer.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/customers/{id}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.customers.updateCustomer`<a id="texthivecustomersupdatecustomer"></a>

Updates an existing customer's information including messaging channel configurations. All fields in the request body will override existing values.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
Customer result = client
        .customers
        .updateCustomer(id)
        .name(name)
        .sendingPhoneNumber(sendingPhoneNumber)
        .smsMessagingProfileId(smsMessagingProfileId)
        .smsBearerToken(smsBearerToken)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### id: `UUID`<a id="id-uuid"></a>

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

[Customer](./src/main/java/com/konfigthis/client/model/Customer.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/customers/{id}` `PUT`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.messages.sendMessageToContact`<a id="texthivemessagessendmessagetocontact"></a>

Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact's preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
MessagesSendMessageToContactResponse result = client
        .messages
        .sendMessageToContact(customerId, contactId, templateId)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customerId: `UUID`<a id="customerid-uuid"></a>

Unique identifier of the customer

##### contactId: `UUID`<a id="contactid-uuid"></a>

Unique identifier of the contact

##### templateId: `UUID`<a id="templateid-uuid"></a>

Unique identifier of the message template

#### 🔄 Return<a id="🔄-return"></a>

[MessagesSendMessageToContactResponse](./src/main/java/com/konfigthis/client/model/MessagesSendMessageToContactResponse.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/messages` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.messages.sendMessageToPhoneNumber`<a id="texthivemessagessendmessagetophonenumber"></a>

Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn't exist.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
MessagesSendMessageToPhoneNumberResponse result = client
        .messages
        .sendMessageToPhoneNumber(customerId, phoneNumber, templateId)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customerId: `UUID`<a id="customerid-uuid"></a>

Unique identifier of the customer

##### phoneNumber: `String`<a id="phonenumber-string"></a>

Phone number in E.164 format

##### templateId: `UUID`<a id="templateid-uuid"></a>

Unique identifier of the message template

#### 🔄 Return<a id="🔄-return"></a>

[MessagesSendMessageToPhoneNumberResponse](./src/main/java/com/konfigthis/client/model/MessagesSendMessageToPhoneNumberResponse.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/messages/phone-number` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.sms.getContactInfo`<a id="texthivesmsgetcontactinfo"></a>

Fetches or creates SMS contact information for a given phone number. This endpoint validates the phone number, determines SMS capabilities, and returns detailed formatting information needed for message delivery. Use this before sending messages to ensure proper SMS channel availability.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
SMSPayload result = client
        .sms
        .getContactInfo(phoneNumber, retrieveIfDoesNotExists)
        .sentId(sentId)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### phoneNumber: `String`<a id="phonenumber-string"></a>

Target phone number in E.164 format (e.g., +1234567890)

##### retrieveIfDoesNotExists: `Boolean`<a id="retrieveifdoesnotexists-boolean"></a>

When true, creates a new SMS contact if one doesn't exist

##### sentId: `UUID`<a id="sentid-uuid"></a>

Optional Sent platform identifier for existing contacts

#### 🔄 Return<a id="🔄-return"></a>

[SMSPayload](./src/main/java/com/konfigthis/client/model/SMSPayload.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/sms` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.templates.createTemplate`<a id="texthivetemplatescreatetemplate"></a>

Creates a new message template that can be used for sending standardized messages across different channels. Templates ensure consistent messaging and support variable substitution.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
ResponsesTemplateResponse result = client
        .templates
        .createTemplate(customerId, name)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customerId: `UUID`<a id="customerid-uuid"></a>

Unique identifier of the customer creating the template

##### name: `String`<a id="name-string"></a>

Name of the template for identification purposes

#### 🔄 Return<a id="🔄-return"></a>

[ResponsesTemplateResponse](./src/main/java/com/konfigthis/client/model/ResponsesTemplateResponse.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/templates` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.templates.getTemplatesForCustomer`<a id="texthivetemplatesgettemplatesforcustomer"></a>

Returns a list of all message templates associated with the specified customer ID. Templates are returned in descending order by creation date.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
List<ResponsesTemplateResponse> result = client
        .templates
        .getTemplatesForCustomer(customerId)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customerId: `UUID`<a id="customerid-uuid"></a>

Unique identifier of the customer

#### 🔄 Return<a id="🔄-return"></a>

[ResponsesTemplateResponse](./src/main/java/com/konfigthis/client/model/ResponsesTemplateResponse.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/templates` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `texthive.whatsapp.getWhatsappContact`<a id="texthivewhatsappgetwhatsappcontact"></a>

Fetches or creates WhatsApp contact information for a given phone number. This endpoint validates WhatsApp availability and returns detailed contact metadata including business account status and profile information.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```java
WhatsAppPayload result = client
        .whatsapp
        .getWhatsappContact(phoneNumber, retrieveIfDoesNotExists)
        .sentId(sentId)
        .execute();
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### phoneNumber: `String`<a id="phonenumber-string"></a>

Phone number in international format (E.164)

##### retrieveIfDoesNotExists: `Boolean`<a id="retrieveifdoesnotexists-boolean"></a>

Whether to create a new contact if one doesn't exist

##### sentId: `UUID`<a id="sentid-uuid"></a>

Optional Sent platform identifier for tracking

#### 🔄 Return<a id="🔄-return"></a>

[WhatsAppPayload](./src/main/java/com/konfigthis/client/model/WhatsAppPayload.java)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/whatsapp` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


## Author<a id="author"></a>
This Java package is automatically generated by [Konfig](https://konfigthis.com)
