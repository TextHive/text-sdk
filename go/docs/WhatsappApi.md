# APIClient.WhatsappApi

All URIs are relative to *http://localhost*

Method | Path | Description
------------- | ------------- | -------------
[**GetWhatsappContact**](WhatsappApi.md#GetWhatsappContact) | **Get** /whatsapp | Retrieve WhatsApp contact information



## GetWhatsappContact

Retrieve WhatsApp contact information



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

    request := client.WhatsappApi.GetWhatsappContact(
        ""+14155552671"",
        false,
    )
    request.SentId(""38400000-8cf0-11bd-b23e-10b96e4ef00d"")
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `WhatsappApi.GetWhatsappContact``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetWhatsappContact`: WhatsAppPayload
    fmt.Fprintf(os.Stdout, "Response from `WhatsappApi.GetWhatsappContact`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `WhatsAppPayload.GetWhatsappContact.Id`: %v\n", *resp.Id)
    fmt.Fprintf(os.Stdout, "Response from `WhatsAppPayload.GetWhatsappContact.SentId`: %v\n", *resp.SentId)
    fmt.Fprintf(os.Stdout, "Response from `WhatsAppPayload.GetWhatsappContact.PhoneNumber`: %v\n", *resp.PhoneNumber)
    fmt.Fprintf(os.Stdout, "Response from `WhatsAppPayload.GetWhatsappContact.WhatsappId`: %v\n", *resp.WhatsappId)
    fmt.Fprintf(os.Stdout, "Response from `WhatsAppPayload.GetWhatsappContact.CountryCode`: %v\n", *resp.CountryCode)
    fmt.Fprintf(os.Stdout, "Response from `WhatsAppPayload.GetWhatsappContact.NumberType`: %v\n", *resp.NumberType)
    fmt.Fprintf(os.Stdout, "Response from `WhatsAppPayload.GetWhatsappContact.ProfilePicture`: %v\n", *resp.ProfilePicture)
    fmt.Fprintf(os.Stdout, "Response from `WhatsAppPayload.GetWhatsappContact.IsBusiness`: %v\n", *resp.IsBusiness)
    fmt.Fprintf(os.Stdout, "Response from `WhatsAppPayload.GetWhatsappContact.InvalidRecord`: %v\n", *resp.InvalidRecord)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

