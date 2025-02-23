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
    public interface IMessagesApiSync : IApiAccessor
    {
        #region Synchronous Operations
        /// <summary>
        /// Send a message to a contact using a template
        /// </summary>
        /// <remarks>
        /// Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact&#39;s preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.
        /// </remarks>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="sendMessageToContactRequest">Message details including customer ID, contact ID, and template ID</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>MessagesSendMessageToContactResponse</returns>
        MessagesSendMessageToContactResponse SendMessageToContact(SendMessageToContactRequest sendMessageToContactRequest, int operationIndex = 0);

        /// <summary>
        /// Send a message to a contact using a template
        /// </summary>
        /// <remarks>
        /// Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact&#39;s preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.
        /// </remarks>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="sendMessageToContactRequest">Message details including customer ID, contact ID, and template ID</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ApiResponse of MessagesSendMessageToContactResponse</returns>
        ApiResponse<MessagesSendMessageToContactResponse> SendMessageToContactWithHttpInfo(SendMessageToContactRequest sendMessageToContactRequest, int operationIndex = 0);
        /// <summary>
        /// Send a message to a phone number using a template
        /// </summary>
        /// <remarks>
        /// Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn&#39;t exist.
        /// </remarks>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="sendMessageToPhoneNumberRequest">Message details including customer ID, phone number, and template ID</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>MessagesSendMessageToPhoneNumberResponse</returns>
        MessagesSendMessageToPhoneNumberResponse SendMessageToPhoneNumber(SendMessageToPhoneNumberRequest sendMessageToPhoneNumberRequest, int operationIndex = 0);

        /// <summary>
        /// Send a message to a phone number using a template
        /// </summary>
        /// <remarks>
        /// Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn&#39;t exist.
        /// </remarks>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="sendMessageToPhoneNumberRequest">Message details including customer ID, phone number, and template ID</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ApiResponse of MessagesSendMessageToPhoneNumberResponse</returns>
        ApiResponse<MessagesSendMessageToPhoneNumberResponse> SendMessageToPhoneNumberWithHttpInfo(SendMessageToPhoneNumberRequest sendMessageToPhoneNumberRequest, int operationIndex = 0);
        #endregion Synchronous Operations
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IMessagesApiAsync : IApiAccessor
    {
        #region Asynchronous Operations
        /// <summary>
        /// Send a message to a contact using a template
        /// </summary>
        /// <remarks>
        /// Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact&#39;s preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.
        /// </remarks>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="sendMessageToContactRequest">Message details including customer ID, contact ID, and template ID</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of MessagesSendMessageToContactResponse</returns>
        System.Threading.Tasks.Task<MessagesSendMessageToContactResponse> SendMessageToContactAsync(SendMessageToContactRequest sendMessageToContactRequest, int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));

        /// <summary>
        /// Send a message to a contact using a template
        /// </summary>
        /// <remarks>
        /// Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact&#39;s preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.
        /// </remarks>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="sendMessageToContactRequest">Message details including customer ID, contact ID, and template ID</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse (MessagesSendMessageToContactResponse)</returns>
        System.Threading.Tasks.Task<ApiResponse<MessagesSendMessageToContactResponse>> SendMessageToContactWithHttpInfoAsync(SendMessageToContactRequest sendMessageToContactRequest, int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));
        /// <summary>
        /// Send a message to a phone number using a template
        /// </summary>
        /// <remarks>
        /// Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn&#39;t exist.
        /// </remarks>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="sendMessageToPhoneNumberRequest">Message details including customer ID, phone number, and template ID</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of MessagesSendMessageToPhoneNumberResponse</returns>
        System.Threading.Tasks.Task<MessagesSendMessageToPhoneNumberResponse> SendMessageToPhoneNumberAsync(SendMessageToPhoneNumberRequest sendMessageToPhoneNumberRequest, int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));

        /// <summary>
        /// Send a message to a phone number using a template
        /// </summary>
        /// <remarks>
        /// Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn&#39;t exist.
        /// </remarks>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="sendMessageToPhoneNumberRequest">Message details including customer ID, phone number, and template ID</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse (MessagesSendMessageToPhoneNumberResponse)</returns>
        System.Threading.Tasks.Task<ApiResponse<MessagesSendMessageToPhoneNumberResponse>> SendMessageToPhoneNumberWithHttpInfoAsync(SendMessageToPhoneNumberRequest sendMessageToPhoneNumberRequest, int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));
        #endregion Asynchronous Operations
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IMessagesApi : IMessagesApiSync, IMessagesApiAsync
    {

    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public partial class MessagesApiGenerated : IMessagesApi
    {
        private Texthive.Net.Client.ExceptionFactory _exceptionFactory = (name, response) => null;

        /// <summary>
        /// Initializes a new instance of the <see cref="MessagesApiGenerated"/> class.
        /// </summary>
        /// <returns></returns>
        public MessagesApiGenerated() : this((string)null)
        {
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="MessagesApiGenerated"/> class.
        /// </summary>
        /// <returns></returns>
        public MessagesApiGenerated(string basePath)
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
        /// Initializes a new instance of the <see cref="MessagesApiGenerated"/> class
        /// using Configuration object
        /// </summary>
        /// <param name="configuration">An instance of Configuration</param>
        /// <returns></returns>
        public MessagesApiGenerated(Texthive.Net.Client.Configuration configuration)
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
        /// Initializes a new instance of the <see cref="MessagesApiGenerated"/> class
        /// using a Configuration object and client instance.
        /// </summary>
        /// <param name="client">The client interface for synchronous API access.</param>
        /// <param name="asyncClient">The client interface for asynchronous API access.</param>
        /// <param name="configuration">The configuration object.</param>
        public MessagesApiGenerated(Texthive.Net.Client.ISynchronousClient client, Texthive.Net.Client.IAsynchronousClient asyncClient, Texthive.Net.Client.IReadableConfiguration configuration)
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
        /// Send a message to a contact using a template Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact&#39;s preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.
        /// </summary>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="sendMessageToContactRequest">Message details including customer ID, contact ID, and template ID</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>MessagesSendMessageToContactResponse</returns>
        public MessagesSendMessageToContactResponse SendMessageToContact(SendMessageToContactRequest sendMessageToContactRequest, int operationIndex = 0)
        {
            Texthive.Net.Client.ApiResponse<MessagesSendMessageToContactResponse> localVarResponse = SendMessageToContactWithHttpInfo(sendMessageToContactRequest);
            return localVarResponse.Data;
        }

        /// <summary>
        /// Send a message to a contact using a template Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact&#39;s preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.
        /// </summary>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="sendMessageToContactRequest">Message details including customer ID, contact ID, and template ID</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ApiResponse of MessagesSendMessageToContactResponse</returns>
        public Texthive.Net.Client.ApiResponse<MessagesSendMessageToContactResponse> SendMessageToContactWithHttpInfo(SendMessageToContactRequest sendMessageToContactRequest, int operationIndex = 0)
        {
            // verify the required parameter 'sendMessageToContactRequest' is set
            if (sendMessageToContactRequest == null)
            {
                throw new Texthive.Net.Client.ApiException(400, "Missing required parameter 'sendMessageToContactRequest' when calling MessagesApi->SendMessageToContact");
            }

            Texthive.Net.Client.RequestOptions localVarRequestOptions = new Texthive.Net.Client.RequestOptions();

            string[] _contentTypes = new string[] {
                "application/json"
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

            localVarRequestOptions.Data = sendMessageToContactRequest;

            localVarRequestOptions.Operation = "MessagesApi.SendMessageToContact";
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
            var localVarResponse = this.Client.Post<MessagesSendMessageToContactResponse>("/messages", localVarRequestOptions, this.Configuration);
            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("SendMessageToContact", localVarResponse);
                if (_exception != null)
                {
                    throw _exception;
                }
            }

            return localVarResponse;
        }

        /// <summary>
        /// Send a message to a contact using a template Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact&#39;s preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.
        /// </summary>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="sendMessageToContactRequest">Message details including customer ID, contact ID, and template ID</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of MessagesSendMessageToContactResponse</returns>
        public async System.Threading.Tasks.Task<MessagesSendMessageToContactResponse> SendMessageToContactAsync(SendMessageToContactRequest sendMessageToContactRequest, int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            Texthive.Net.Client.ApiResponse<MessagesSendMessageToContactResponse> localVarResponse = await SendMessageToContactWithHttpInfoAsync(sendMessageToContactRequest, operationIndex, cancellationToken).ConfigureAwait(false);
            return localVarResponse.Data;
        }

        /// <summary>
        /// Send a message to a contact using a template Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact&#39;s preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.
        /// </summary>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="sendMessageToContactRequest">Message details including customer ID, contact ID, and template ID</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse (MessagesSendMessageToContactResponse)</returns>
        public virtual async System.Threading.Tasks.Task<Texthive.Net.Client.ApiResponse<MessagesSendMessageToContactResponse>> SendMessageToContactWithHttpInfoAsync(SendMessageToContactRequest sendMessageToContactRequest, int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            // verify the required parameter 'sendMessageToContactRequest' is set
            if (sendMessageToContactRequest == null)
            {
                throw new Texthive.Net.Client.ApiException(400, "Missing required parameter 'sendMessageToContactRequest' when calling MessagesApi->SendMessageToContact");
            }


            Texthive.Net.Client.RequestOptions localVarRequestOptions = new Texthive.Net.Client.RequestOptions();

            string[] _contentTypes = new string[] {
                "application/json"
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

            localVarRequestOptions.Data = sendMessageToContactRequest;

            localVarRequestOptions.Operation = "MessagesApi.SendMessageToContact";
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
            var localVarResponse = await this.AsynchronousClient.PostAsync<MessagesSendMessageToContactResponse>("/messages", localVarRequestOptions, this.Configuration, cancellationToken).ConfigureAwait(false);

            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("SendMessageToContact", localVarResponse);
                if (_exception != null)
                {
                    throw _exception;
                }
            }

            return localVarResponse;
        }

        /// <summary>
        /// Send a message to a phone number using a template Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn&#39;t exist.
        /// </summary>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="sendMessageToPhoneNumberRequest">Message details including customer ID, phone number, and template ID</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>MessagesSendMessageToPhoneNumberResponse</returns>
        public MessagesSendMessageToPhoneNumberResponse SendMessageToPhoneNumber(SendMessageToPhoneNumberRequest sendMessageToPhoneNumberRequest, int operationIndex = 0)
        {
            Texthive.Net.Client.ApiResponse<MessagesSendMessageToPhoneNumberResponse> localVarResponse = SendMessageToPhoneNumberWithHttpInfo(sendMessageToPhoneNumberRequest);
            return localVarResponse.Data;
        }

        /// <summary>
        /// Send a message to a phone number using a template Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn&#39;t exist.
        /// </summary>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="sendMessageToPhoneNumberRequest">Message details including customer ID, phone number, and template ID</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ApiResponse of MessagesSendMessageToPhoneNumberResponse</returns>
        public Texthive.Net.Client.ApiResponse<MessagesSendMessageToPhoneNumberResponse> SendMessageToPhoneNumberWithHttpInfo(SendMessageToPhoneNumberRequest sendMessageToPhoneNumberRequest, int operationIndex = 0)
        {
            // verify the required parameter 'sendMessageToPhoneNumberRequest' is set
            if (sendMessageToPhoneNumberRequest == null)
            {
                throw new Texthive.Net.Client.ApiException(400, "Missing required parameter 'sendMessageToPhoneNumberRequest' when calling MessagesApi->SendMessageToPhoneNumber");
            }

            Texthive.Net.Client.RequestOptions localVarRequestOptions = new Texthive.Net.Client.RequestOptions();

            string[] _contentTypes = new string[] {
                "application/json"
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

            localVarRequestOptions.Data = sendMessageToPhoneNumberRequest;

            localVarRequestOptions.Operation = "MessagesApi.SendMessageToPhoneNumber";
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
            var localVarResponse = this.Client.Post<MessagesSendMessageToPhoneNumberResponse>("/messages/phone-number", localVarRequestOptions, this.Configuration);
            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("SendMessageToPhoneNumber", localVarResponse);
                if (_exception != null)
                {
                    throw _exception;
                }
            }

            return localVarResponse;
        }

        /// <summary>
        /// Send a message to a phone number using a template Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn&#39;t exist.
        /// </summary>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="sendMessageToPhoneNumberRequest">Message details including customer ID, phone number, and template ID</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of MessagesSendMessageToPhoneNumberResponse</returns>
        public async System.Threading.Tasks.Task<MessagesSendMessageToPhoneNumberResponse> SendMessageToPhoneNumberAsync(SendMessageToPhoneNumberRequest sendMessageToPhoneNumberRequest, int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            Texthive.Net.Client.ApiResponse<MessagesSendMessageToPhoneNumberResponse> localVarResponse = await SendMessageToPhoneNumberWithHttpInfoAsync(sendMessageToPhoneNumberRequest, operationIndex, cancellationToken).ConfigureAwait(false);
            return localVarResponse.Data;
        }

        /// <summary>
        /// Send a message to a phone number using a template Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn&#39;t exist.
        /// </summary>
        /// <exception cref="Texthive.Net.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="sendMessageToPhoneNumberRequest">Message details including customer ID, phone number, and template ID</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse (MessagesSendMessageToPhoneNumberResponse)</returns>
        public virtual async System.Threading.Tasks.Task<Texthive.Net.Client.ApiResponse<MessagesSendMessageToPhoneNumberResponse>> SendMessageToPhoneNumberWithHttpInfoAsync(SendMessageToPhoneNumberRequest sendMessageToPhoneNumberRequest, int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            // verify the required parameter 'sendMessageToPhoneNumberRequest' is set
            if (sendMessageToPhoneNumberRequest == null)
            {
                throw new Texthive.Net.Client.ApiException(400, "Missing required parameter 'sendMessageToPhoneNumberRequest' when calling MessagesApi->SendMessageToPhoneNumber");
            }


            Texthive.Net.Client.RequestOptions localVarRequestOptions = new Texthive.Net.Client.RequestOptions();

            string[] _contentTypes = new string[] {
                "application/json"
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

            localVarRequestOptions.Data = sendMessageToPhoneNumberRequest;

            localVarRequestOptions.Operation = "MessagesApi.SendMessageToPhoneNumber";
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
            var localVarResponse = await this.AsynchronousClient.PostAsync<MessagesSendMessageToPhoneNumberResponse>("/messages/phone-number", localVarRequestOptions, this.Configuration, cancellationToken).ConfigureAwait(false);

            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("SendMessageToPhoneNumber", localVarResponse);
                if (_exception != null)
                {
                    throw _exception;
                }
            }

            return localVarResponse;
        }

    }
}
