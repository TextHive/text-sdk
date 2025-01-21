# APIClient.SMSApi

All URIs are relative to *http://localhost*

Method | Path | Description
------------- | ------------- | -------------
[**GetContactInfo**](SMSApi.md#GetContactInfo) | **Get** /sms | Retrieve SMS contact information and capabilities



## GetContactInfo

Retrieve SMS contact information and capabilities



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

    request := client.SMSApi.GetContactInfo(
        ""+14155552671"",
        true,
    )
    request.SentId(""38400000-8cf0-11bd-b23e-10b96e4ef00d"")
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SMSApi.GetContactInfo``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `GetContactInfo`: SMSPayload
    fmt.Fprintf(os.Stdout, "Response from `SMSApi.GetContactInfo`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `SMSPayload.GetContactInfo.Id`: %v\n", *resp.Id)
    fmt.Fprintf(os.Stdout, "Response from `SMSPayload.GetContactInfo.SentId`: %v\n", *resp.SentId)
    fmt.Fprintf(os.Stdout, "Response from `SMSPayload.GetContactInfo.PhoneNumber`: %v\n", *resp.PhoneNumber)
    fmt.Fprintf(os.Stdout, "Response from `SMSPayload.GetContactInfo.CountryCode`: %v\n", *resp.CountryCode)
    fmt.Fprintf(os.Stdout, "Response from `SMSPayload.GetContactInfo.ValidNumber`: %v\n", *resp.ValidNumber)
    fmt.Fprintf(os.Stdout, "Response from `SMSPayload.GetContactInfo.NationalFormat`: %v\n", *resp.NationalFormat)
    fmt.Fprintf(os.Stdout, "Response from `SMSPayload.GetContactInfo.Payload`: %v\n", *resp.Payload)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

