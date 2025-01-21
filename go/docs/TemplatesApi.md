# APIClient.TemplatesApi

All URIs are relative to *http://localhost*

Method | Path | Description
------------- | ------------- | -------------
[**CreateTemplate**](TemplatesApi.md#CreateTemplate) | **Post** /templates | Create a new message template
[**GetTemplatesForCustomer**](TemplatesApi.md#GetTemplatesForCustomer) | **Get** /templates | Retrieve all templates for a customer



## CreateTemplate

Create a new message template



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

    
    templateCreateRequest := *texthive.NewTemplateCreateRequest(
        "null",
        "null",
    )
    
    request := client.TemplatesApi.CreateTemplate(
        templateCreateRequest,
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TemplatesApi.CreateTemplate``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `CreateTemplate`: ResponsesTemplateResponse
    fmt.Fprintf(os.Stdout, "Response from `TemplatesApi.CreateTemplate`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `ResponsesTemplateResponse.CreateTemplate.Id`: %v\n", *resp.Id)
    fmt.Fprintf(os.Stdout, "Response from `ResponsesTemplateResponse.CreateTemplate.CustomerId`: %v\n", *resp.CustomerId)
    fmt.Fprintf(os.Stdout, "Response from `ResponsesTemplateResponse.CreateTemplate.Name`: %v\n", *resp.Name)
    fmt.Fprintf(os.Stdout, "Response from `ResponsesTemplateResponse.CreateTemplate.Category`: %v\n", *resp.Category)
    fmt.Fprintf(os.Stdout, "Response from `ResponsesTemplateResponse.CreateTemplate.RawBody`: %v\n", *resp.RawBody)
    fmt.Fprintf(os.Stdout, "Response from `ResponsesTemplateResponse.CreateTemplate.WhatsappTemplateName`: %v\n", *resp.WhatsappTemplateName)
    fmt.Fprintf(os.Stdout, "Response from `ResponsesTemplateResponse.CreateTemplate.WhatsappTemplateStatus`: %v\n", *resp.WhatsappTemplateStatus)
    fmt.Fprintf(os.Stdout, "Response from `ResponsesTemplateResponse.CreateTemplate.CreatedAt`: %v\n", *resp.CreatedAt)
    fmt.Fprintf(os.Stdout, "Response from `ResponsesTemplateResponse.CreateTemplate.UpdatedAt`: %v\n", *resp.UpdatedAt)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetTemplatesForCustomer

Retrieve all templates for a customer



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

    request := client.TemplatesApi.GetTemplatesForCustomer(
        ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TemplatesApi.GetTemplatesForCustomer``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetTemplatesForCustomer`: []ResponsesTemplateResponse
    fmt.Fprintf(os.Stdout, "Response from `TemplatesApi.GetTemplatesForCustomer`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `ResponsesTemplateResponse.GetTemplatesForCustomer.Id`: %v\n", *resp.Id)
    fmt.Fprintf(os.Stdout, "Response from `ResponsesTemplateResponse.GetTemplatesForCustomer.CustomerId`: %v\n", *resp.CustomerId)
    fmt.Fprintf(os.Stdout, "Response from `ResponsesTemplateResponse.GetTemplatesForCustomer.Name`: %v\n", *resp.Name)
    fmt.Fprintf(os.Stdout, "Response from `ResponsesTemplateResponse.GetTemplatesForCustomer.Category`: %v\n", *resp.Category)
    fmt.Fprintf(os.Stdout, "Response from `ResponsesTemplateResponse.GetTemplatesForCustomer.RawBody`: %v\n", *resp.RawBody)
    fmt.Fprintf(os.Stdout, "Response from `ResponsesTemplateResponse.GetTemplatesForCustomer.WhatsappTemplateName`: %v\n", *resp.WhatsappTemplateName)
    fmt.Fprintf(os.Stdout, "Response from `ResponsesTemplateResponse.GetTemplatesForCustomer.WhatsappTemplateStatus`: %v\n", *resp.WhatsappTemplateStatus)
    fmt.Fprintf(os.Stdout, "Response from `ResponsesTemplateResponse.GetTemplatesForCustomer.CreatedAt`: %v\n", *resp.CreatedAt)
    fmt.Fprintf(os.Stdout, "Response from `ResponsesTemplateResponse.GetTemplatesForCustomer.UpdatedAt`: %v\n", *resp.UpdatedAt)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

