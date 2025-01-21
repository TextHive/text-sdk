

# Customer

Represents a customer account within the Sent platform, including messaging channel configurations and credentials

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **UUID** | Unique identifier for the customer |  [optional] |
|**name** | **String** | Name of the customer organization |  [optional] |
|**sendingPhoneNumber** | **String** | Primary phone number used for sending messages |  [optional] |
|**smsMessagingProfileId** | **String** | Identifier for the SMS messaging profile |  [optional] |
|**smsBearerToken** | **String** | Bearer token for authenticating SMS requests |  [optional] |
|**createdAt** | **OffsetDateTime** | Timestamp when the customer account was created |  [optional] |
|**updatedAt** | **OffsetDateTime** | Timestamp when the customer account was last updated |  [optional] |



