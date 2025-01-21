# APIClient.ContactApi

All URIs are relative to *http://localhost*

Method | Path | Description
------------- | ------------- | -------------
[**GetContactById**](ContactApi.md#GetContactById) | **Get** /contact/{customerId}/id/{id} | Retrieve a contact by ID
[**GetContactByPhone**](ContactApi.md#GetContactByPhone) | **Get** /contact/{customerId}/phone/{phoneNumber} | Retrieve a contact by phone number



## GetContactById

Retrieve a contact by ID



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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetContactByPhone

Retrieve a contact by phone number



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

    request := client.ContactApi.GetContactByPhone(
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        "phoneNumber_example",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ContactApi.GetContactByPhone``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetContactByPhone`: Contact
    fmt.Fprintf(os.Stdout, "Response from `ContactApi.GetContactByPhone`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `Contact.GetContactByPhone.Id`: %v\n", *resp.Id)
    fmt.Fprintf(os.Stdout, "Response from `Contact.GetContactByPhone.PhoneNumber`: %v\n", *resp.PhoneNumber)
    fmt.Fprintf(os.Stdout, "Response from `Contact.GetContactByPhone.CountryCode`: %v\n", *resp.CountryCode)
    fmt.Fprintf(os.Stdout, "Response from `Contact.GetContactByPhone.NationalFormat`: %v\n", *resp.NationalFormat)
    fmt.Fprintf(os.Stdout, "Response from `Contact.GetContactByPhone.AvailableChannels`: %v\n", *resp.AvailableChannels)
    fmt.Fprintf(os.Stdout, "Response from `Contact.GetContactByPhone.DefaultChannel`: %v\n", *resp.DefaultChannel)
    fmt.Fprintf(os.Stdout, "Response from `Contact.GetContactByPhone.Verified`: %v\n", *resp.Verified)
    fmt.Fprintf(os.Stdout, "Response from `Contact.GetContactByPhone.CreatedAt`: %v\n", *resp.CreatedAt)
    fmt.Fprintf(os.Stdout, "Response from `Contact.GetContactByPhone.UpdatedAt`: %v\n", *resp.UpdatedAt)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

