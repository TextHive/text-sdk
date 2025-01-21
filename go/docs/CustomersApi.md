# APIClient.CustomersApi

All URIs are relative to *http://localhost*

Method | Path | Description
------------- | ------------- | -------------
[**CreateCustomer**](CustomersApi.md#CreateCustomer) | **Post** /customers | Create a new customer account
[**DeleteCustomer**](CustomersApi.md#DeleteCustomer) | **Delete** /customers/{id} | Delete a customer
[**GetAllCustomers**](CustomersApi.md#GetAllCustomers) | **Get** /customers | Retrieve all customers with pagination
[**GetCustomerById**](CustomersApi.md#GetCustomerById) | **Get** /customers/{id} | Retrieve a customer by ID
[**UpdateCustomer**](CustomersApi.md#UpdateCustomer) | **Put** /customers/{id} | Update customer information



## CreateCustomer

Create a new customer account



### Example

```go
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

    
    body := *texthive.Newstring()
    
    request := client.CustomersApi.CreateCustomer(
        "Acme Corp",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CustomersApi.CreateCustomer``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `CreateCustomer`: Customer
    fmt.Fprintf(os.Stdout, "Response from `CustomersApi.CreateCustomer`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `Customer.CreateCustomer.Id`: %v\n", *resp.Id)
    fmt.Fprintf(os.Stdout, "Response from `Customer.CreateCustomer.Name`: %v\n", *resp.Name)
    fmt.Fprintf(os.Stdout, "Response from `Customer.CreateCustomer.SendingPhoneNumber`: %v\n", *resp.SendingPhoneNumber)
    fmt.Fprintf(os.Stdout, "Response from `Customer.CreateCustomer.SmsMessagingProfileId`: %v\n", *resp.SmsMessagingProfileId)
    fmt.Fprintf(os.Stdout, "Response from `Customer.CreateCustomer.SmsBearerToken`: %v\n", *resp.SmsBearerToken)
    fmt.Fprintf(os.Stdout, "Response from `Customer.CreateCustomer.CreatedAt`: %v\n", *resp.CreatedAt)
    fmt.Fprintf(os.Stdout, "Response from `Customer.CreateCustomer.UpdatedAt`: %v\n", *resp.UpdatedAt)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteCustomer

Delete a customer



### Example

```go
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

    request := client.CustomersApi.DeleteCustomer(
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CustomersApi.DeleteCustomer``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAllCustomers

Retrieve all customers with pagination



### Example

```go
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

    request := client.CustomersApi.GetAllCustomers(
        1,
        20,
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CustomersApi.GetAllCustomers``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetAllCustomers`: []Customer
    fmt.Fprintf(os.Stdout, "Response from `CustomersApi.GetAllCustomers`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `Customer.GetAllCustomers.Id`: %v\n", *resp.Id)
    fmt.Fprintf(os.Stdout, "Response from `Customer.GetAllCustomers.Name`: %v\n", *resp.Name)
    fmt.Fprintf(os.Stdout, "Response from `Customer.GetAllCustomers.SendingPhoneNumber`: %v\n", *resp.SendingPhoneNumber)
    fmt.Fprintf(os.Stdout, "Response from `Customer.GetAllCustomers.SmsMessagingProfileId`: %v\n", *resp.SmsMessagingProfileId)
    fmt.Fprintf(os.Stdout, "Response from `Customer.GetAllCustomers.SmsBearerToken`: %v\n", *resp.SmsBearerToken)
    fmt.Fprintf(os.Stdout, "Response from `Customer.GetAllCustomers.CreatedAt`: %v\n", *resp.CreatedAt)
    fmt.Fprintf(os.Stdout, "Response from `Customer.GetAllCustomers.UpdatedAt`: %v\n", *resp.UpdatedAt)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetCustomerById

Retrieve a customer by ID



### Example

```go
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

    request := client.CustomersApi.GetCustomerById(
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CustomersApi.GetCustomerById``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetCustomerById`: Customer
    fmt.Fprintf(os.Stdout, "Response from `CustomersApi.GetCustomerById`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `Customer.GetCustomerById.Id`: %v\n", *resp.Id)
    fmt.Fprintf(os.Stdout, "Response from `Customer.GetCustomerById.Name`: %v\n", *resp.Name)
    fmt.Fprintf(os.Stdout, "Response from `Customer.GetCustomerById.SendingPhoneNumber`: %v\n", *resp.SendingPhoneNumber)
    fmt.Fprintf(os.Stdout, "Response from `Customer.GetCustomerById.SmsMessagingProfileId`: %v\n", *resp.SmsMessagingProfileId)
    fmt.Fprintf(os.Stdout, "Response from `Customer.GetCustomerById.SmsBearerToken`: %v\n", *resp.SmsBearerToken)
    fmt.Fprintf(os.Stdout, "Response from `Customer.GetCustomerById.CreatedAt`: %v\n", *resp.CreatedAt)
    fmt.Fprintf(os.Stdout, "Response from `Customer.GetCustomerById.UpdatedAt`: %v\n", *resp.UpdatedAt)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateCustomer

Update customer information



### Example

```go
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

    
    customersUpdateCustomerRequest := *texthive.NewCustomersUpdateCustomerRequest()
    customersUpdateCustomerRequest.SetName("null")
    customersUpdateCustomerRequest.SetSendingPhoneNumber("null")
    customersUpdateCustomerRequest.SetSmsMessagingProfileId("null")
    customersUpdateCustomerRequest.SetSmsBearerToken("null")
    
    request := client.CustomersApi.UpdateCustomer(
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        customersUpdateCustomerRequest,
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CustomersApi.UpdateCustomer``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `UpdateCustomer`: Customer
    fmt.Fprintf(os.Stdout, "Response from `CustomersApi.UpdateCustomer`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `Customer.UpdateCustomer.Id`: %v\n", *resp.Id)
    fmt.Fprintf(os.Stdout, "Response from `Customer.UpdateCustomer.Name`: %v\n", *resp.Name)
    fmt.Fprintf(os.Stdout, "Response from `Customer.UpdateCustomer.SendingPhoneNumber`: %v\n", *resp.SendingPhoneNumber)
    fmt.Fprintf(os.Stdout, "Response from `Customer.UpdateCustomer.SmsMessagingProfileId`: %v\n", *resp.SmsMessagingProfileId)
    fmt.Fprintf(os.Stdout, "Response from `Customer.UpdateCustomer.SmsBearerToken`: %v\n", *resp.SmsBearerToken)
    fmt.Fprintf(os.Stdout, "Response from `Customer.UpdateCustomer.CreatedAt`: %v\n", *resp.CreatedAt)
    fmt.Fprintf(os.Stdout, "Response from `Customer.UpdateCustomer.UpdatedAt`: %v\n", *resp.UpdatedAt)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

