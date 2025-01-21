# APIClient.MessagesApi

All URIs are relative to *http://localhost*

Method | Path | Description
------------- | ------------- | -------------
[**SendMessageToContact**](MessagesApi.md#SendMessageToContact) | **Post** /messages | Send a message to a contact using a template
[**SendMessageToPhoneNumber**](MessagesApi.md#SendMessageToPhoneNumber) | **Post** /messages/phone-number | Send a message to a phone number using a template



## SendMessageToContact

Send a message to a contact using a template



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

    
    sendMessageToContactRequest := *texthive.NewSendMessageToContactRequest(
        "null",
        "null",
        "null",
    )
    
    request := client.MessagesApi.SendMessageToContact(
        sendMessageToContactRequest,
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `MessagesApi.SendMessageToContact``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `SendMessageToContact`: MessagesSendMessageToContactResponse
    fmt.Fprintf(os.Stdout, "Response from `MessagesApi.SendMessageToContact`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `MessagesSendMessageToContactResponse.SendMessageToContact.MessageId`: %v\n", *resp.MessageId)
    fmt.Fprintf(os.Stdout, "Response from `MessagesSendMessageToContactResponse.SendMessageToContact.Status`: %v\n", *resp.Status)
    fmt.Fprintf(os.Stdout, "Response from `MessagesSendMessageToContactResponse.SendMessageToContact.Channel`: %v\n", *resp.Channel)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SendMessageToPhoneNumber

Send a message to a phone number using a template



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

    
    sendMessageToPhoneNumberRequest := *texthive.NewSendMessageToPhoneNumberRequest(
        "null",
        "null",
        "null",
    )
    
    request := client.MessagesApi.SendMessageToPhoneNumber(
        sendMessageToPhoneNumberRequest,
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `MessagesApi.SendMessageToPhoneNumber``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `SendMessageToPhoneNumber`: MessagesSendMessageToPhoneNumberResponse
    fmt.Fprintf(os.Stdout, "Response from `MessagesApi.SendMessageToPhoneNumber`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `MessagesSendMessageToPhoneNumberResponse.SendMessageToPhoneNumber.MessageId`: %v\n", *resp.MessageId)
    fmt.Fprintf(os.Stdout, "Response from `MessagesSendMessageToPhoneNumberResponse.SendMessageToPhoneNumber.Status`: %v\n", *resp.Status)
    fmt.Fprintf(os.Stdout, "Response from `MessagesSendMessageToPhoneNumberResponse.SendMessageToPhoneNumber.Channel`: %v\n", *resp.Channel)
    fmt.Fprintf(os.Stdout, "Response from `MessagesSendMessageToPhoneNumberResponse.SendMessageToPhoneNumber.ContactId`: %v\n", *resp.ContactId)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

