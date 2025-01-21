# texthive - Sent API Support's Go SDK

TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

For more information, please visit [https://www.texthive.khulnasoft.com/](https://www.texthive.khulnasoft.com/)

## Installation

Add to your project:

```shell
go get github.com/texthive/text-sdks/go
```

## Getting Started

```golang
package main

import (
    "fmt"
    "os"
    texthive "github.com/texthive/text-sdks/go"
)

func main() {
    configuration := texthive.NewConfiguration()
    configuration.SetApiKey("X_API_KEY")
    client := texthive.NewAPIClient(configuration)

    request := client.ContactApi.GetContactById(
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ContactApi.GetContactById``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetContactById`: Contact
    fmt.Fprintf(os.Stdout, "Response from `ContactApi.GetContactById`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `Contact.GetContactById.Id`: %v\n", *resp.Id)
    fmt.Fprintf(os.Stdout, "Response from `Contact.GetContactById.PhoneNumber`: %v\n", *resp.PhoneNumber)
    fmt.Fprintf(os.Stdout, "Response from `Contact.GetContactById.CountryCode`: %v\n", *resp.CountryCode)
    fmt.Fprintf(os.Stdout, "Response from `Contact.GetContactById.NationalFormat`: %v\n", *resp.NationalFormat)
    fmt.Fprintf(os.Stdout, "Response from `Contact.GetContactById.AvailableChannels`: %v\n", *resp.AvailableChannels)
    fmt.Fprintf(os.Stdout, "Response from `Contact.GetContactById.DefaultChannel`: %v\n", *resp.DefaultChannel)
    fmt.Fprintf(os.Stdout, "Response from `Contact.GetContactById.Verified`: %v\n", *resp.Verified)
    fmt.Fprintf(os.Stdout, "Response from `Contact.GetContactById.CreatedAt`: %v\n", *resp.CreatedAt)
    fmt.Fprintf(os.Stdout, "Response from `Contact.GetContactById.UpdatedAt`: %v\n", *resp.UpdatedAt)
}
```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ContactApi* | [**GetContactById**](docs/ContactApi.md#getcontactbyid) | **Get** /contact/{customerId}/id/{id} | Retrieve a contact by ID
*ContactApi* | [**GetContactByPhone**](docs/ContactApi.md#getcontactbyphone) | **Get** /contact/{customerId}/phone/{phoneNumber} | Retrieve a contact by phone number
*CustomersApi* | [**CreateCustomer**](docs/CustomersApi.md#createcustomer) | **Post** /customers | Create a new customer account
*CustomersApi* | [**DeleteCustomer**](docs/CustomersApi.md#deletecustomer) | **Delete** /customers/{id} | Delete a customer
*CustomersApi* | [**GetAllCustomers**](docs/CustomersApi.md#getallcustomers) | **Get** /customers | Retrieve all customers with pagination
*CustomersApi* | [**GetCustomerById**](docs/CustomersApi.md#getcustomerbyid) | **Get** /customers/{id} | Retrieve a customer by ID
*CustomersApi* | [**UpdateCustomer**](docs/CustomersApi.md#updatecustomer) | **Put** /customers/{id} | Update customer information
*MessagesApi* | [**SendMessageToContact**](docs/MessagesApi.md#sendmessagetocontact) | **Post** /messages | Send a message to a contact using a template
*MessagesApi* | [**SendMessageToPhoneNumber**](docs/MessagesApi.md#sendmessagetophonenumber) | **Post** /messages/phone-number | Send a message to a phone number using a template
*SMSApi* | [**GetContactInfo**](docs/SMSApi.md#getcontactinfo) | **Get** /sms | Retrieve SMS contact information and capabilities
*TemplatesApi* | [**CreateTemplate**](docs/TemplatesApi.md#createtemplate) | **Post** /templates | Create a new message template
*TemplatesApi* | [**GetTemplatesForCustomer**](docs/TemplatesApi.md#gettemplatesforcustomer) | **Get** /templates | Retrieve all templates for a customer
*WhatsappApi* | [**GetWhatsappContact**](docs/WhatsappApi.md#getwhatsappcontact) | **Get** /whatsapp | Retrieve WhatsApp contact information


## Documentation For Models

 - [Contact](docs/Contact.md)
 - [Customer](docs/Customer.md)
 - [CustomersUpdateCustomerRequest](docs/CustomersUpdateCustomerRequest.md)
 - [MessagesSendMessageToContact400Response](docs/MessagesSendMessageToContact400Response.md)
 - [MessagesSendMessageToContactResponse](docs/MessagesSendMessageToContactResponse.md)
 - [MessagesSendMessageToPhoneNumberResponse](docs/MessagesSendMessageToPhoneNumberResponse.md)
 - [PayloadPhoneNumber](docs/PayloadPhoneNumber.md)
 - [ResponsesTemplateResponse](docs/ResponsesTemplateResponse.md)
 - [SMSPayload](docs/SMSPayload.md)
 - [SMSPayloadAllOf](docs/SMSPayloadAllOf.md)
 - [SendMessageToContactRequest](docs/SendMessageToContactRequest.md)
 - [SendMessageToPhoneNumberRequest](docs/SendMessageToPhoneNumberRequest.md)
 - [SmsGetContactInfoResponse](docs/SmsGetContactInfoResponse.md)
 - [TemplateCreateRequest](docs/TemplateCreateRequest.md)
 - [WhatsAppPayload](docs/WhatsAppPayload.md)
 - [WhatsAppPayloadAllOf](docs/WhatsAppPayloadAllOf.md)
 - [WhatsappGetWhatsappContactResponse](docs/WhatsappGetWhatsappContactResponse.md)
