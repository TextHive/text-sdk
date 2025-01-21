# Texthive.Net - C#

[![NuGet](https://img.shields.io/badge/NuGet-1.0.0-blue.svg)](https://www.nuget.org/packages/Texthive.Net/1.0.0)
[![More Info](https://img.shields.io/badge/More%20Info-Click%20Here-orange)](https://www.texthive.khulnasoft.com/)

TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

## Frameworks supported
- .NET Core >=1.0
- .NET Framework >=4.6
- Mono/Xamarin >=vNext

## Installation

Using the [.NET Core command-line interface (CLI) tools][dotnet-core-cli-tools]:

```sh
dotnet add package Texthive.Net
```

Using the [NuGet Command Line Interface (CLI)][nuget-cli]:

```sh
nuget install Texthive.Net
```

Using the [Package Manager Console][package-manager-console]:

```powershell
Install-Package Texthive.Net
```

From within Visual Studio:

1. Open the Solution Explorer.
2. Right-click on a project within your solution.
3. Click on *Manage NuGet Packages...*
4. Click on the *Browse* tab and search for "Texthive.Net".
5. Click on the "Texthive.Net" package, select the appropriate version in the
   right-tab and click *Install*.

## Getting Started

```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using Texthive.Net.Client;
using Texthive.Net.Model;

namespace Example
{
    public class GetContactByIdExample
    {
        public static void Main()
        {
            Texthive client = new Texthive();
            // Configure API key authorization: ApiKey
            client.SetApiKey("YOUR_API_KEY");
            // Configure token for authorization
            client.SetAccessToken("YOUR_TOKEN");

            var customerId = "customerId_example"; // Unique identifier of the customer account
            var id = "id_example"; // Unique identifier of the contact
            
            try
            {
                // Retrieve a contact by ID
                Contact result = client.Contact.GetContactById(customerId, id);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling ContactApi.GetContactById: " + e.Message);
                Console.WriteLine("Status Code: "+ e.ErrorCode);
                Console.WriteLine(e.StackTrace);
            }
            catch (ClientException e)
            {
                Console.WriteLine(e.Response.StatusCode);
                Console.WriteLine(e.Response.RawContent);
                Console.WriteLine(e.InnerException);
            }
        }
    }
}
```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ContactApi* | [**GetContactById**](docs/ContactApi.md#getcontactbyid) | **GET** /contact/{customerId}/id/{id} | Retrieve a contact by ID
*ContactApi* | [**GetContactByPhone**](docs/ContactApi.md#getcontactbyphone) | **GET** /contact/{customerId}/phone/{phoneNumber} | Retrieve a contact by phone number
*CustomersApi* | [**CreateCustomer**](docs/CustomersApi.md#createcustomer) | **POST** /customers | Create a new customer account
*CustomersApi* | [**DeleteCustomer**](docs/CustomersApi.md#deletecustomer) | **DELETE** /customers/{id} | Delete a customer
*CustomersApi* | [**GetAllCustomers**](docs/CustomersApi.md#getallcustomers) | **GET** /customers | Retrieve all customers with pagination
*CustomersApi* | [**GetCustomerById**](docs/CustomersApi.md#getcustomerbyid) | **GET** /customers/{id} | Retrieve a customer by ID
*CustomersApi* | [**UpdateCustomer**](docs/CustomersApi.md#updatecustomer) | **PUT** /customers/{id} | Update customer information
*MessagesApi* | [**SendMessageToContact**](docs/MessagesApi.md#sendmessagetocontact) | **POST** /messages | Send a message to a contact using a template
*MessagesApi* | [**SendMessageToPhoneNumber**](docs/MessagesApi.md#sendmessagetophonenumber) | **POST** /messages/phone-number | Send a message to a phone number using a template
*SMSApi* | [**GetContactInfo**](docs/SMSApi.md#getcontactinfo) | **GET** /sms | Retrieve SMS contact information and capabilities
*TemplatesApi* | [**CreateTemplate**](docs/TemplatesApi.md#createtemplate) | **POST** /templates | Create a new message template
*TemplatesApi* | [**GetTemplatesForCustomer**](docs/TemplatesApi.md#gettemplatesforcustomer) | **GET** /templates | Retrieve all templates for a customer
*WhatsappApi* | [**GetWhatsappContact**](docs/WhatsappApi.md#getwhatsappcontact) | **GET** /whatsapp | Retrieve WhatsApp contact information


## Documentation for Models

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


## Dependencies

- [RestSharp](https://www.nuget.org/packages/RestSharp) - 106.13.0 or later
- [Json.NET](https://www.nuget.org/packages/Newtonsoft.Json/) - 13.0.1 or later
- [JsonSubTypes](https://www.nuget.org/packages/JsonSubTypes/) - 1.8.0 or later
- [System.ComponentModel.Annotations](https://www.nuget.org/packages/System.ComponentModel.Annotations) - 5.0.0 or later

## Author
This C# package is automatically generated by [Konfig](https://konfigthis.com)

[dotnet-core-cli-tools]: https://docs.microsoft.com/en-us/dotnet/core/tools/
[nuget-cli]: https://docs.microsoft.com/en-us/nuget/tools/nuget-exe-cli-reference
[package-manager-console]: https://docs.microsoft.com/en-us/nuget/tools/package-manager-console
