# CustomersApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomer**](CustomersApi.md#createCustomer) | **POST** /customers | Create a new customer account
[**deleteCustomer**](CustomersApi.md#deleteCustomer) | **DELETE** /customers/{id} | Delete a customer
[**getAllCustomers**](CustomersApi.md#getAllCustomers) | **GET** /customers | Retrieve all customers with pagination
[**getCustomerById**](CustomersApi.md#getCustomerById) | **GET** /customers/{id} | Retrieve a customer by ID
[**updateCustomer**](CustomersApi.md#updateCustomer) | **PUT** /customers/{id} | Update customer information


<a name="createCustomer"></a>
# **createCustomer**
> Customer createCustomer(body)

Create a new customer account

Creates a new customer account in the Sent platform. This endpoint initializes a new customer profile with basic information and returns the created customer details including generated IDs and credentials for various messaging channels.

### Example
```kotlin
// Import classes:
//import com.texthive.client.infrastructure.*
//import com.texthive.client.models.*

val apiInstance = CustomersApi()
val body : kotlin.String = Acme Corp // kotlin.String | Customer name to create the account
try {
    val result : Customer = apiInstance.createCustomer(body)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CustomersApi#createCustomer")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CustomersApi#createCustomer")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **kotlin.String**| Customer name to create the account |

### Return type

[**Customer**](Customer.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""
Configure BearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteCustomer"></a>
# **deleteCustomer**
> deleteCustomer(id)

Delete a customer

Permanently deletes a customer and all associated data. This action cannot be undone. All active services for this customer will be terminated.

### Example
```kotlin
// Import classes:
//import com.texthive.client.infrastructure.*
//import com.texthive.client.models.*

val apiInstance = CustomersApi()
val id : java.util.UUID = "38400000-8cf0-11bd-b23e-10b96e4ef00d" // java.util.UUID | Unique identifier of the customer to delete
try {
    apiInstance.deleteCustomer(id)
} catch (e: ClientException) {
    println("4xx response calling CustomersApi#deleteCustomer")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CustomersApi#deleteCustomer")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.util.UUID**| Unique identifier of the customer to delete |

### Return type

null (empty response body)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""
Configure BearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="getAllCustomers"></a>
# **getAllCustomers**
> kotlin.collections.List&lt;Customer&gt; getAllCustomers(page, pageSize)

Retrieve all customers with pagination

Returns a paginated list of all customers. Use page and pageSize parameters to control the number of results returned. Results are sorted by creation date in descending order.

### Example
```kotlin
// Import classes:
//import com.texthive.client.infrastructure.*
//import com.texthive.client.models.*

val apiInstance = CustomersApi()
val page : kotlin.Int = 1 // kotlin.Int | Page number to retrieve (starts from 1)
val pageSize : kotlin.Int = 20 // kotlin.Int | Number of items to return per page
try {
    val result : kotlin.collections.List<Customer> = apiInstance.getAllCustomers(page, pageSize)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CustomersApi#getAllCustomers")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CustomersApi#getAllCustomers")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **kotlin.Int**| Page number to retrieve (starts from 1) |
 **pageSize** | **kotlin.Int**| Number of items to return per page |

### Return type

[**kotlin.collections.List&lt;Customer&gt;**](Customer.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""
Configure BearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getCustomerById"></a>
# **getCustomerById**
> Customer getCustomerById(id)

Retrieve a customer by ID

Returns detailed information about a specific customer including their messaging channel configurations and credentials.

### Example
```kotlin
// Import classes:
//import com.texthive.client.infrastructure.*
//import com.texthive.client.models.*

val apiInstance = CustomersApi()
val id : java.util.UUID = "38400000-8cf0-11bd-b23e-10b96e4ef00d" // java.util.UUID | Unique identifier of the customer
try {
    val result : Customer = apiInstance.getCustomerById(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CustomersApi#getCustomerById")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CustomersApi#getCustomerById")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.util.UUID**| Unique identifier of the customer |

### Return type

[**Customer**](Customer.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""
Configure BearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateCustomer"></a>
# **updateCustomer**
> Customer updateCustomer(id, customersUpdateCustomerRequest)

Update customer information

Updates an existing customer&#39;s information including messaging channel configurations. All fields in the request body will override existing values.

### Example
```kotlin
// Import classes:
//import com.texthive.client.infrastructure.*
//import com.texthive.client.models.*

val apiInstance = CustomersApi()
val id : java.util.UUID = "38400000-8cf0-11bd-b23e-10b96e4ef00d" // java.util.UUID | Unique identifier of the customer to update
val customersUpdateCustomerRequest : CustomersUpdateCustomerRequest = {"name":"Acme Corporation","sendingPhoneNumber":"+1234567890","smsMessagingProfileId":"msg_prof_789","smsBearerToken":"sms_token_def"} // CustomersUpdateCustomerRequest | Updated customer information
try {
    val result : Customer = apiInstance.updateCustomer(id, customersUpdateCustomerRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CustomersApi#updateCustomer")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CustomersApi#updateCustomer")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.util.UUID**| Unique identifier of the customer to update |
 **customersUpdateCustomerRequest** | [**CustomersUpdateCustomerRequest**](CustomersUpdateCustomerRequest.md)| Updated customer information |

### Return type

[**Customer**](Customer.md)

### Authorization


Configure ApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""
Configure BearerAuth:
    ApiClient.accessToken = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

