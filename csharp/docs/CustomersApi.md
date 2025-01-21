# Texthive.Net.Api.CustomersApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**CreateCustomer**](CustomersApi.md#createcustomer) | **POST** /customers | Create a new customer account |
| [**DeleteCustomer**](CustomersApi.md#deletecustomer) | **DELETE** /customers/{id} | Delete a customer |
| [**GetAllCustomers**](CustomersApi.md#getallcustomers) | **GET** /customers | Retrieve all customers with pagination |
| [**GetCustomerById**](CustomersApi.md#getcustomerbyid) | **GET** /customers/{id} | Retrieve a customer by ID |
| [**UpdateCustomer**](CustomersApi.md#updatecustomer) | **PUT** /customers/{id} | Update customer information |


# **CreateCustomer**



Creates a new customer account in the Sent platform. This endpoint initializes a new customer profile with basic information and returns the created customer details including generated IDs and credentials for various messaging channels.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using Texthive.Net.Client;
using Texthive.Net.Model;

namespace Example
{
    public class CreateCustomerExample
    {
        public static void Main()
        {
            Texthive client = new Texthive();
            // Configure API key authorization: ApiKey
            client.SetApiKey("YOUR_API_KEY");
            // Configure token for authorization
            client.SetAccessToken("YOUR_TOKEN");

            var body = Acme Corp; // Customer name to create the account
            
            try
            {
                // Create a new customer account
                Customer result = client.Customers.CreateCustomer(body);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling CustomersApi.CreateCustomer: " + e.Message);
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

#### Using the CreateCustomerWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Create a new customer account
    ApiResponse<Customer> response = apiInstance.CreateCustomerWithHttpInfo(body);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CustomersApi.CreateCustomerWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **body** | **string** | Customer name to create the account |  |

### Return type

[**Customer**](Customer.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Customer successfully created |  -  |
| **401** | Authentication credentials are missing or invalid |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **DeleteCustomer**



Permanently deletes a customer and all associated data. This action cannot be undone. All active services for this customer will be terminated.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using Texthive.Net.Client;
using Texthive.Net.Model;

namespace Example
{
    public class DeleteCustomerExample
    {
        public static void Main()
        {
            Texthive client = new Texthive();
            // Configure API key authorization: ApiKey
            client.SetApiKey("YOUR_API_KEY");
            // Configure token for authorization
            client.SetAccessToken("YOUR_TOKEN");

            var id = "id_example"; // Unique identifier of the customer to delete
            
            try
            {
                // Delete a customer
                client.Customers.DeleteCustomer(id);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling CustomersApi.DeleteCustomer: " + e.Message);
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

#### Using the DeleteCustomerWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Delete a customer
    apiInstance.DeleteCustomerWithHttpInfo(id);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CustomersApi.DeleteCustomerWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** | Unique identifier of the customer to delete |  |

### Return type

void (empty response body)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Customer successfully deleted |  -  |
| **404** | Customer not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **GetAllCustomers**



Returns a paginated list of all customers. Use page and pageSize parameters to control the number of results returned. Results are sorted by creation date in descending order.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using Texthive.Net.Client;
using Texthive.Net.Model;

namespace Example
{
    public class GetAllCustomersExample
    {
        public static void Main()
        {
            Texthive client = new Texthive();
            // Configure API key authorization: ApiKey
            client.SetApiKey("YOUR_API_KEY");
            // Configure token for authorization
            client.SetAccessToken("YOUR_TOKEN");

            var page = 1; // Page number to retrieve (starts from 1)
            var pageSize = 20; // Number of items to return per page
            
            try
            {
                // Retrieve all customers with pagination
                List<Customer> result = client.Customers.GetAllCustomers(page, pageSize);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling CustomersApi.GetAllCustomers: " + e.Message);
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

#### Using the GetAllCustomersWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Retrieve all customers with pagination
    ApiResponse<List<Customer>> response = apiInstance.GetAllCustomersWithHttpInfo(page, pageSize);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CustomersApi.GetAllCustomersWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **page** | **int** | Page number to retrieve (starts from 1) |  |
| **pageSize** | **int** | Number of items to return per page |  |

### Return type

[**List&lt;Customer&gt;**](Customer.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of customers retrieved successfully |  -  |
| **401** | Authentication credentials are missing or invalid |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **GetCustomerById**



Returns detailed information about a specific customer including their messaging channel configurations and credentials.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using Texthive.Net.Client;
using Texthive.Net.Model;

namespace Example
{
    public class GetCustomerByIdExample
    {
        public static void Main()
        {
            Texthive client = new Texthive();
            // Configure API key authorization: ApiKey
            client.SetApiKey("YOUR_API_KEY");
            // Configure token for authorization
            client.SetAccessToken("YOUR_TOKEN");

            var id = "id_example"; // Unique identifier of the customer
            
            try
            {
                // Retrieve a customer by ID
                Customer result = client.Customers.GetCustomerById(id);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling CustomersApi.GetCustomerById: " + e.Message);
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

#### Using the GetCustomerByIdWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Retrieve a customer by ID
    ApiResponse<Customer> response = apiInstance.GetCustomerByIdWithHttpInfo(id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CustomersApi.GetCustomerByIdWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** | Unique identifier of the customer |  |

### Return type

[**Customer**](Customer.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Customer details retrieved successfully |  -  |
| **404** | Customer not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **UpdateCustomer**



Updates an existing customer's information including messaging channel configurations. All fields in the request body will override existing values.

### Example
```csharp
using System;
using System.Collections.Generic;
using System.Diagnostics;
using Texthive.Net.Client;
using Texthive.Net.Model;

namespace Example
{
    public class UpdateCustomerExample
    {
        public static void Main()
        {
            Texthive client = new Texthive();
            // Configure API key authorization: ApiKey
            client.SetApiKey("YOUR_API_KEY");
            // Configure token for authorization
            client.SetAccessToken("YOUR_TOKEN");

            var id = "id_example"; // Unique identifier of the customer to update
            var name = "name_example"; // Updated name of the customer organization
            var sendingPhoneNumber = "sendingPhoneNumber_example"; // Updated primary phone number for sending messages
            var smsMessagingProfileId = "smsMessagingProfileId_example"; // Updated SMS messaging profile identifier
            var smsBearerToken = "smsBearerToken_example"; // Updated bearer token for SMS authentication
            
            // Updated customer information
            var customersUpdateCustomerRequest = new CustomersUpdateCustomerRequest(
                name,
                sendingPhoneNumber,
                smsMessagingProfileId,
                smsBearerToken
            );
            
            try
            {
                // Update customer information
                Customer result = client.Customers.UpdateCustomer(id, customersUpdateCustomerRequest);
                Console.WriteLine(result);
            }
            catch (ApiException e)
            {
                Console.WriteLine("Exception when calling CustomersApi.UpdateCustomer: " + e.Message);
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

#### Using the UpdateCustomerWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Update customer information
    ApiResponse<Customer> response = apiInstance.UpdateCustomerWithHttpInfo(id, customersUpdateCustomerRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CustomersApi.UpdateCustomerWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** | Unique identifier of the customer to update |  |
| **customersUpdateCustomerRequest** | [**CustomersUpdateCustomerRequest**](CustomersUpdateCustomerRequest.md) | Updated customer information |  |

### Return type

[**Customer**](Customer.md)


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Customer updated successfully |  -  |
| **401** | Authentication credentials are missing or invalid |  -  |
| **404** | Customer not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

