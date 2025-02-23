/*
 * TextHive Core API
 *
 * TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.
 *
 * The version of the OpenAPI document: 1.1.0
 * Contact: developers@texthive.khulnasoft.com
 * Generated by: https://konfigthis.com
 */


using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Net;
using System.Net.Mime;
using Texthive.Net.Client;
using Texthive.Net.Model;

namespace Texthive.Net.Api
{

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IContactApiSync : IApiAccessor
    {
        #region Synchronous Operations
        /// <summary>
        /// Retrieve a contact by ID
        /// </summary>
        /// <remarks>
        /// Fetches detailed contact information including available messaging channels and verification status. Use this endpoint when you need to look up a specific contact using their unique identifier.
        /// </remarks>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Unique identifier of the customer account</param>
        /// <param name="id">Unique identifier of the contact</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>Contact</returns>
        Contact GetContactById(string customerId, string id, int operationIndex = 0);

        /// <summary>
        /// Retrieve a contact by ID
        /// </summary>
        /// <remarks>
        /// Fetches detailed contact information including available messaging channels and verification status. Use this endpoint when you need to look up a specific contact using their unique identifier.
        /// </remarks>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Unique identifier of the customer account</param>
        /// <param name="id">Unique identifier of the contact</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ApiResponse of Contact</returns>
        ApiResponse<Contact> GetContactByIdWithHttpInfo(string customerId, string id, int operationIndex = 0);
        /// <summary>
        /// Retrieve a contact by phone number
        /// </summary>
        /// <remarks>
        /// Looks up contact information using a phone number. This endpoint is useful when you need to find a contact&#39;s details but only have their phone number. It returns the same detailed information as the ID-based lookup.
        /// </remarks>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Unique identifier of the customer account</param>
        /// <param name="phoneNumber">Phone number in E.164 format (e.g., +1234567890)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>Contact</returns>
        Contact GetContactByPhone(string customerId, string phoneNumber, int operationIndex = 0);

        /// <summary>
        /// Retrieve a contact by phone number
        /// </summary>
        /// <remarks>
        /// Looks up contact information using a phone number. This endpoint is useful when you need to find a contact&#39;s details but only have their phone number. It returns the same detailed information as the ID-based lookup.
        /// </remarks>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Unique identifier of the customer account</param>
        /// <param name="phoneNumber">Phone number in E.164 format (e.g., +1234567890)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ApiResponse of Contact</returns>
        ApiResponse<Contact> GetContactByPhoneWithHttpInfo(string customerId, string phoneNumber, int operationIndex = 0);
        #endregion Synchronous Operations
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IContactApiAsync : IApiAccessor
    {
        #region Asynchronous Operations
        /// <summary>
        /// Retrieve a contact by ID
        /// </summary>
        /// <remarks>
        /// Fetches detailed contact information including available messaging channels and verification status. Use this endpoint when you need to look up a specific contact using their unique identifier.
        /// </remarks>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Unique identifier of the customer account</param>
        /// <param name="id">Unique identifier of the contact</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of Contact</returns>
        System.Threading.Tasks.Task<Contact> GetContactByIdAsync(string customerId, string id, int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));

        /// <summary>
        /// Retrieve a contact by ID
        /// </summary>
        /// <remarks>
        /// Fetches detailed contact information including available messaging channels and verification status. Use this endpoint when you need to look up a specific contact using their unique identifier.
        /// </remarks>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Unique identifier of the customer account</param>
        /// <param name="id">Unique identifier of the contact</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse (Contact)</returns>
        System.Threading.Tasks.Task<ApiResponse<Contact>> GetContactByIdWithHttpInfoAsync(string customerId, string id, int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));
        /// <summary>
        /// Retrieve a contact by phone number
        /// </summary>
        /// <remarks>
        /// Looks up contact information using a phone number. This endpoint is useful when you need to find a contact&#39;s details but only have their phone number. It returns the same detailed information as the ID-based lookup.
        /// </remarks>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Unique identifier of the customer account</param>
        /// <param name="phoneNumber">Phone number in E.164 format (e.g., +1234567890)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of Contact</returns>
        System.Threading.Tasks.Task<Contact> GetContactByPhoneAsync(string customerId, string phoneNumber, int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));

        /// <summary>
        /// Retrieve a contact by phone number
        /// </summary>
        /// <remarks>
        /// Looks up contact information using a phone number. This endpoint is useful when you need to find a contact&#39;s details but only have their phone number. It returns the same detailed information as the ID-based lookup.
        /// </remarks>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Unique identifier of the customer account</param>
        /// <param name="phoneNumber">Phone number in E.164 format (e.g., +1234567890)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse (Contact)</returns>
        System.Threading.Tasks.Task<ApiResponse<Contact>> GetContactByPhoneWithHttpInfoAsync(string customerId, string phoneNumber, int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));
        #endregion Asynchronous Operations
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IContactApi : IContactApiSync, IContactApiAsync
    {

    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public partial class ContactApiGenerated : IContactApi
    {
        private Texthive.Net.Client.ExceptionFactory _exceptionFactory = (name, response) => null;

        /// <summary>
        /// Initializes a new instance of the <see cref="ContactApiGenerated"/> class.
        /// </summary>
        /// <returns></returns>
        public ContactApiGenerated() : this((string)null)
        {
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="ContactApiGenerated"/> class.
        /// </summary>
        /// <returns></returns>
        public ContactApiGenerated(string basePath)
        {
            this.Configuration = Texthive.Net.Client.Configuration.MergeConfigurations(
                Texthive.Net.Client.GlobalConfiguration.Instance,
                new Texthive.Net.Client.Configuration { BasePath = basePath }
            );
            this.Client = new Texthive.Net.Client.ApiClient(this.Configuration);
            this.AsynchronousClient = new Texthive.Net.Client.ApiClient(this.Configuration);
            this.ExceptionFactory = Texthive.Net.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="ContactApiGenerated"/> class
        /// using Configuration object
        /// </summary>
        /// <param name="configuration">An instance of Configuration</param>
        /// <returns></returns>
        public ContactApiGenerated(Texthive.Net.Client.Configuration configuration)
        {
            if (configuration == null) throw new ArgumentNullException("configuration");

            this.Configuration = Texthive.Net.Client.Configuration.MergeConfigurations(
                Texthive.Net.Client.GlobalConfiguration.Instance,
                configuration
            );
            this.Client = new Texthive.Net.Client.ApiClient(this.Configuration);
            this.AsynchronousClient = new Texthive.Net.Client.ApiClient(this.Configuration);
            this.ExceptionFactory = Texthive.Net.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="ContactApiGenerated"/> class
        /// using a Configuration object and client instance.
        /// </summary>
        /// <param name="client">The client interface for synchronous API access.</param>
        /// <param name="asyncClient">The client interface for asynchronous API access.</param>
        /// <param name="configuration">The configuration object.</param>
        public ContactApiGenerated(Texthive.Net.Client.ISynchronousClient client, Texthive.Net.Client.IAsynchronousClient asyncClient, Texthive.Net.Client.IReadableConfiguration configuration)
        {
            if (client == null) throw new ArgumentNullException("client");
            if (asyncClient == null) throw new ArgumentNullException("asyncClient");
            if (configuration == null) throw new ArgumentNullException("configuration");

            this.Client = client;
            this.AsynchronousClient = asyncClient;
            this.Configuration = configuration;
            this.ExceptionFactory = Texthive.Net.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// The client for accessing this underlying API asynchronously.
        /// </summary>
        public Texthive.Net.Client.IAsynchronousClient AsynchronousClient { get; set; }

        /// <summary>
        /// The client for accessing this underlying API synchronously.
        /// </summary>
        public Texthive.Net.Client.ISynchronousClient Client { get; set; }

        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <value>The base path</value>
        public string GetBasePath()
        {
            return this.Configuration.BasePath;
        }

        /// <summary>
        /// Gets or sets the configuration object
        /// </summary>
        /// <value>An instance of the Configuration</value>
        public Texthive.Net.Client.IReadableConfiguration Configuration { get; set; }

        /// <summary>
        /// Provides a factory method hook for the creation of exceptions.
        /// </summary>
        public Texthive.Net.Client.ExceptionFactory ExceptionFactory
        {
            get
            {
                if (_exceptionFactory != null && _exceptionFactory.GetInvocationList().Length > 1)
                {
                    throw new InvalidOperationException("Multicast delegate for ExceptionFactory is unsupported.");
                }
                return _exceptionFactory;
            }
            set { _exceptionFactory = value; }
        }

        /// <summary>
        /// Retrieve a contact by ID Fetches detailed contact information including available messaging channels and verification status. Use this endpoint when you need to look up a specific contact using their unique identifier.
        /// </summary>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Unique identifier of the customer account</param>
        /// <param name="id">Unique identifier of the contact</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>Contact</returns>
        public Contact GetContactById(string customerId, string id, int operationIndex = 0)
        {
            Texthive.Net.Client.ApiResponse<Contact> localVarResponse = GetContactByIdWithHttpInfo(customerId, id);
            return localVarResponse.Data;
        }

        /// <summary>
        /// Retrieve a contact by ID Fetches detailed contact information including available messaging channels and verification status. Use this endpoint when you need to look up a specific contact using their unique identifier.
        /// </summary>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Unique identifier of the customer account</param>
        /// <param name="id">Unique identifier of the contact</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ApiResponse of Contact</returns>
        public Texthive.Net.Client.ApiResponse<Contact> GetContactByIdWithHttpInfo(string customerId, string id, int operationIndex = 0)
        {
            // verify the required parameter 'customerId' is set
            if (customerId == null)
            {
                throw new Texthive.Net.Client.ApiException(400, "Missing required parameter 'customerId' when calling ContactApi->GetContactById");
            }

            // verify the required parameter 'id' is set
            if (id == null)
            {
                throw new Texthive.Net.Client.ApiException(400, "Missing required parameter 'id' when calling ContactApi->GetContactById");
            }

            Texthive.Net.Client.RequestOptions localVarRequestOptions = new Texthive.Net.Client.RequestOptions();

            string[] _contentTypes = new string[] {
            };

            // to determine the Accept header
            string[] _accepts = new string[] {
                "application/json"
            };

            var localVarContentType = Texthive.Net.Client.ClientUtils.SelectHeaderContentType(_contentTypes);
            if (localVarContentType != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Content-Type", localVarContentType);
            }

            var localVarAccept = Texthive.Net.Client.ClientUtils.SelectHeaderAccept(_accepts);
            if (localVarAccept != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Accept", localVarAccept);
            }

            localVarRequestOptions.PathParameters.Add("customerId", Texthive.Net.Client.ClientUtils.ParameterToString(customerId)); // path parameter
            localVarRequestOptions.PathParameters.Add("id", Texthive.Net.Client.ClientUtils.ParameterToString(id)); // path parameter

            localVarRequestOptions.Operation = "ContactApi.GetContactById";
            localVarRequestOptions.OperationIndex = operationIndex;

            // authentication (ApiKey) required
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("x-api-key")))
            {
                localVarRequestOptions.HeaderParameters.Add("x-api-key", this.Configuration.GetApiKeyWithPrefix("x-api-key"));
            }
            // authentication (BearerAuth) required
            // bearer authentication required
            if (!string.IsNullOrEmpty(this.Configuration.AccessToken) && !localVarRequestOptions.HeaderParameters.ContainsKey("Authorization"))
            {
                localVarRequestOptions.HeaderParameters.Add("Authorization", "Bearer " + this.Configuration.AccessToken);
            }

            // make the HTTP request
            var localVarResponse = this.Client.Get<Contact>("/contact/{customerId}/id/{id}", localVarRequestOptions, this.Configuration);
            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("GetContactById", localVarResponse);
                if (_exception != null)
                {
                    throw _exception;
                }
            }

            return localVarResponse;
        }

        /// <summary>
        /// Retrieve a contact by ID Fetches detailed contact information including available messaging channels and verification status. Use this endpoint when you need to look up a specific contact using their unique identifier.
        /// </summary>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Unique identifier of the customer account</param>
        /// <param name="id">Unique identifier of the contact</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of Contact</returns>
        public async System.Threading.Tasks.Task<Contact> GetContactByIdAsync(string customerId, string id, int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            Texthive.Net.Client.ApiResponse<Contact> localVarResponse = await GetContactByIdWithHttpInfoAsync(customerId, id, operationIndex, cancellationToken).ConfigureAwait(false);
            return localVarResponse.Data;
        }

        /// <summary>
        /// Retrieve a contact by ID Fetches detailed contact information including available messaging channels and verification status. Use this endpoint when you need to look up a specific contact using their unique identifier.
        /// </summary>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Unique identifier of the customer account</param>
        /// <param name="id">Unique identifier of the contact</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse (Contact)</returns>
        public virtual async System.Threading.Tasks.Task<Texthive.Net.Client.ApiResponse<Contact>> GetContactByIdWithHttpInfoAsync(string customerId, string id, int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            // verify the required parameter 'customerId' is set
            if (customerId == null)
            {
                throw new Texthive.Net.Client.ApiException(400, "Missing required parameter 'customerId' when calling ContactApi->GetContactById");
            }

            // verify the required parameter 'id' is set
            if (id == null)
            {
                throw new Texthive.Net.Client.ApiException(400, "Missing required parameter 'id' when calling ContactApi->GetContactById");
            }


            Texthive.Net.Client.RequestOptions localVarRequestOptions = new Texthive.Net.Client.RequestOptions();

            string[] _contentTypes = new string[] {
            };

            // to determine the Accept header
            string[] _accepts = new string[] {
                "application/json"
            };

            var localVarContentType = Texthive.Net.Client.ClientUtils.SelectHeaderContentType(_contentTypes);
            if (localVarContentType != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Content-Type", localVarContentType);
            }

            var localVarAccept = Texthive.Net.Client.ClientUtils.SelectHeaderAccept(_accepts);
            if (localVarAccept != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Accept", localVarAccept);
            }

            localVarRequestOptions.PathParameters.Add("customerId", Texthive.Net.Client.ClientUtils.ParameterToString(customerId)); // path parameter
            localVarRequestOptions.PathParameters.Add("id", Texthive.Net.Client.ClientUtils.ParameterToString(id)); // path parameter

            localVarRequestOptions.Operation = "ContactApi.GetContactById";
            localVarRequestOptions.OperationIndex = operationIndex;

            // authentication (ApiKey) required
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("x-api-key")))
            {
                localVarRequestOptions.HeaderParameters.Add("x-api-key", this.Configuration.GetApiKeyWithPrefix("x-api-key"));
            }
            // authentication (BearerAuth) required
            // bearer authentication required
            if (!string.IsNullOrEmpty(this.Configuration.AccessToken) && !localVarRequestOptions.HeaderParameters.ContainsKey("Authorization"))
            {
                localVarRequestOptions.HeaderParameters.Add("Authorization", "Bearer " + this.Configuration.AccessToken);
            }

            // make the HTTP request
            var localVarResponse = await this.AsynchronousClient.GetAsync<Contact>("/contact/{customerId}/id/{id}", localVarRequestOptions, this.Configuration, cancellationToken).ConfigureAwait(false);

            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("GetContactById", localVarResponse);
                if (_exception != null)
                {
                    throw _exception;
                }
            }

            return localVarResponse;
        }

        /// <summary>
        /// Retrieve a contact by phone number Looks up contact information using a phone number. This endpoint is useful when you need to find a contact&#39;s details but only have their phone number. It returns the same detailed information as the ID-based lookup.
        /// </summary>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Unique identifier of the customer account</param>
        /// <param name="phoneNumber">Phone number in E.164 format (e.g., +1234567890)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>Contact</returns>
        public Contact GetContactByPhone(string customerId, string phoneNumber, int operationIndex = 0)
        {
            Texthive.Net.Client.ApiResponse<Contact> localVarResponse = GetContactByPhoneWithHttpInfo(customerId, phoneNumber);
            return localVarResponse.Data;
        }

        /// <summary>
        /// Retrieve a contact by phone number Looks up contact information using a phone number. This endpoint is useful when you need to find a contact&#39;s details but only have their phone number. It returns the same detailed information as the ID-based lookup.
        /// </summary>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Unique identifier of the customer account</param>
        /// <param name="phoneNumber">Phone number in E.164 format (e.g., +1234567890)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ApiResponse of Contact</returns>
        public Texthive.Net.Client.ApiResponse<Contact> GetContactByPhoneWithHttpInfo(string customerId, string phoneNumber, int operationIndex = 0)
        {
            // verify the required parameter 'customerId' is set
            if (customerId == null)
            {
                throw new Texthive.Net.Client.ApiException(400, "Missing required parameter 'customerId' when calling ContactApi->GetContactByPhone");
            }

            // verify the required parameter 'phoneNumber' is set
            if (phoneNumber == null)
            {
                throw new Texthive.Net.Client.ApiException(400, "Missing required parameter 'phoneNumber' when calling ContactApi->GetContactByPhone");
            }

            Texthive.Net.Client.RequestOptions localVarRequestOptions = new Texthive.Net.Client.RequestOptions();

            string[] _contentTypes = new string[] {
            };

            // to determine the Accept header
            string[] _accepts = new string[] {
                "application/json"
            };

            var localVarContentType = Texthive.Net.Client.ClientUtils.SelectHeaderContentType(_contentTypes);
            if (localVarContentType != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Content-Type", localVarContentType);
            }

            var localVarAccept = Texthive.Net.Client.ClientUtils.SelectHeaderAccept(_accepts);
            if (localVarAccept != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Accept", localVarAccept);
            }

            localVarRequestOptions.PathParameters.Add("customerId", Texthive.Net.Client.ClientUtils.ParameterToString(customerId)); // path parameter
            localVarRequestOptions.PathParameters.Add("phoneNumber", Texthive.Net.Client.ClientUtils.ParameterToString(phoneNumber)); // path parameter

            localVarRequestOptions.Operation = "ContactApi.GetContactByPhone";
            localVarRequestOptions.OperationIndex = operationIndex;

            // authentication (ApiKey) required
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("x-api-key")))
            {
                localVarRequestOptions.HeaderParameters.Add("x-api-key", this.Configuration.GetApiKeyWithPrefix("x-api-key"));
            }
            // authentication (BearerAuth) required
            // bearer authentication required
            if (!string.IsNullOrEmpty(this.Configuration.AccessToken) && !localVarRequestOptions.HeaderParameters.ContainsKey("Authorization"))
            {
                localVarRequestOptions.HeaderParameters.Add("Authorization", "Bearer " + this.Configuration.AccessToken);
            }

            // make the HTTP request
            var localVarResponse = this.Client.Get<Contact>("/contact/{customerId}/phone/{phoneNumber}", localVarRequestOptions, this.Configuration);
            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("GetContactByPhone", localVarResponse);
                if (_exception != null)
                {
                    throw _exception;
                }
            }

            return localVarResponse;
        }

        /// <summary>
        /// Retrieve a contact by phone number Looks up contact information using a phone number. This endpoint is useful when you need to find a contact&#39;s details but only have their phone number. It returns the same detailed information as the ID-based lookup.
        /// </summary>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Unique identifier of the customer account</param>
        /// <param name="phoneNumber">Phone number in E.164 format (e.g., +1234567890)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of Contact</returns>
        public async System.Threading.Tasks.Task<Contact> GetContactByPhoneAsync(string customerId, string phoneNumber, int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            Texthive.Net.Client.ApiResponse<Contact> localVarResponse = await GetContactByPhoneWithHttpInfoAsync(customerId, phoneNumber, operationIndex, cancellationToken).ConfigureAwait(false);
            return localVarResponse.Data;
        }

        /// <summary>
        /// Retrieve a contact by phone number Looks up contact information using a phone number. This endpoint is useful when you need to find a contact&#39;s details but only have their phone number. It returns the same detailed information as the ID-based lookup.
        /// </summary>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Unique identifier of the customer account</param>
        /// <param name="phoneNumber">Phone number in E.164 format (e.g., +1234567890)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse (Contact)</returns>
        public virtual async System.Threading.Tasks.Task<Texthive.Net.Client.ApiResponse<Contact>> GetContactByPhoneWithHttpInfoAsync(string customerId, string phoneNumber, int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            // verify the required parameter 'customerId' is set
            if (customerId == null)
            {
                throw new Texthive.Net.Client.ApiException(400, "Missing required parameter 'customerId' when calling ContactApi->GetContactByPhone");
            }

            // verify the required parameter 'phoneNumber' is set
            if (phoneNumber == null)
            {
                throw new Texthive.Net.Client.ApiException(400, "Missing required parameter 'phoneNumber' when calling ContactApi->GetContactByPhone");
            }


            Texthive.Net.Client.RequestOptions localVarRequestOptions = new Texthive.Net.Client.RequestOptions();

            string[] _contentTypes = new string[] {
            };

            // to determine the Accept header
            string[] _accepts = new string[] {
                "application/json"
            };

            var localVarContentType = Texthive.Net.Client.ClientUtils.SelectHeaderContentType(_contentTypes);
            if (localVarContentType != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Content-Type", localVarContentType);
            }

            var localVarAccept = Texthive.Net.Client.ClientUtils.SelectHeaderAccept(_accepts);
            if (localVarAccept != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Accept", localVarAccept);
            }

            localVarRequestOptions.PathParameters.Add("customerId", Texthive.Net.Client.ClientUtils.ParameterToString(customerId)); // path parameter
            localVarRequestOptions.PathParameters.Add("phoneNumber", Texthive.Net.Client.ClientUtils.ParameterToString(phoneNumber)); // path parameter

            localVarRequestOptions.Operation = "ContactApi.GetContactByPhone";
            localVarRequestOptions.OperationIndex = operationIndex;

            // authentication (ApiKey) required
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("x-api-key")))
            {
                localVarRequestOptions.HeaderParameters.Add("x-api-key", this.Configuration.GetApiKeyWithPrefix("x-api-key"));
            }
            // authentication (BearerAuth) required
            // bearer authentication required
            if (!string.IsNullOrEmpty(this.Configuration.AccessToken) && !localVarRequestOptions.HeaderParameters.ContainsKey("Authorization"))
            {
                localVarRequestOptions.HeaderParameters.Add("Authorization", "Bearer " + this.Configuration.AccessToken);
            }

            // make the HTTP request
            var localVarResponse = await this.AsynchronousClient.GetAsync<Contact>("/contact/{customerId}/phone/{phoneNumber}", localVarRequestOptions, this.Configuration, cancellationToken).ConfigureAwait(false);

            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("GetContactByPhone", localVarResponse);
                if (_exception != null)
                {
                    throw _exception;
                }
            }

            return localVarResponse;
        }

    }
}
