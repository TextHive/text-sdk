/*
 * TextHive Core API
 * TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.
 *
 * The version of the OpenAPI document: 1.1.0
 * Contact: developers@texthive.khulnasoft.com
 *
 * NOTE: This class is auto generated by Konfig (https://konfigthis.com).
 * Do not edit the class manually.
 */


package com.texthive.client.api;

import com.texthive.client.ApiCallback;
import com.texthive.client.ApiClient;
import com.texthive.client.ApiException;
import com.texthive.client.ApiResponse;
import com.texthive.client.Configuration;
import com.texthive.client.Pair;
import com.texthive.client.ProgressRequestBody;
import com.texthive.client.ProgressResponseBody;

import com.google.gson.reflect.TypeToken;

import java.io.IOException;


import com.texthive.client.model.MessagesSendMessageToContactResponse;
import com.texthive.client.model.MessagesSendMessageToPhoneNumberResponse;
import com.texthive.client.model.SendMessageToContactRequest;
import com.texthive.client.model.SendMessageToPhoneNumberRequest;
import java.util.UUID;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.ws.rs.core.GenericType;

public class MessagesApiGenerated {
    private ApiClient localVarApiClient;
    private int localHostIndex;
    private String localCustomBaseUrl;

    public MessagesApiGenerated() throws IllegalArgumentException {
        this(Configuration.getDefaultApiClient());
    }

    public MessagesApiGenerated(ApiClient apiClient) throws IllegalArgumentException {
        this.localVarApiClient = apiClient;
    }

    public ApiClient getApiClient() {
        return localVarApiClient;
    }

    public void setApiClient(ApiClient apiClient) {
        this.localVarApiClient = apiClient;
    }

    public int getHostIndex() {
        return localHostIndex;
    }

    public void setHostIndex(int hostIndex) {
        this.localHostIndex = hostIndex;
    }

    public String getCustomBaseUrl() {
        return localCustomBaseUrl;
    }

    public void setCustomBaseUrl(String customBaseUrl) {
        this.localCustomBaseUrl = customBaseUrl;
    }

    private okhttp3.Call sendMessageToContactCall(SendMessageToContactRequest sendMessageToContactRequest, final ApiCallback _callback) throws ApiException {
        String basePath = null;
        // Operation Servers
        String[] localBasePaths = new String[] {  };

        // Determine Base Path to Use
        if (localCustomBaseUrl != null){
            basePath = localCustomBaseUrl;
        } else if ( localBasePaths.length > 0 ) {
            basePath = localBasePaths[localHostIndex];
        } else {
            basePath = null;
        }

        Object localVarPostBody = sendMessageToContactRequest;

        // create path and map variables
        String localVarPath = "/messages";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
            "application/json"
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        if (localVarContentType != null) {
            localVarHeaderParams.put("Content-Type", localVarContentType);
        }

        String[] localVarAuthNames = new String[] { "ApiKey", "BearerAuth" };
        return localVarApiClient.buildCall(basePath, localVarPath, "POST", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarCookieParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call sendMessageToContactValidateBeforeCall(SendMessageToContactRequest sendMessageToContactRequest, final ApiCallback _callback) throws ApiException {
        // verify the required parameter 'sendMessageToContactRequest' is set
        if (sendMessageToContactRequest == null) {
            throw new ApiException("Missing the required parameter 'sendMessageToContactRequest' when calling sendMessageToContact(Async)");
        }

        return sendMessageToContactCall(sendMessageToContactRequest, _callback);

    }


    private ApiResponse<MessagesSendMessageToContactResponse> sendMessageToContactWithHttpInfo(SendMessageToContactRequest sendMessageToContactRequest) throws ApiException {
        okhttp3.Call localVarCall = sendMessageToContactValidateBeforeCall(sendMessageToContactRequest, null);
        Type localVarReturnType = new TypeToken<MessagesSendMessageToContactResponse>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    private okhttp3.Call sendMessageToContactAsync(SendMessageToContactRequest sendMessageToContactRequest, final ApiCallback<MessagesSendMessageToContactResponse> _callback) throws ApiException {

        okhttp3.Call localVarCall = sendMessageToContactValidateBeforeCall(sendMessageToContactRequest, _callback);
        Type localVarReturnType = new TypeToken<MessagesSendMessageToContactResponse>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }

    public abstract class SendMessageToContactRequestBuilderGenerated {
        final UUID customerId;
        final UUID contactId;
        final UUID templateId;

        public SendMessageToContactRequestBuilderGenerated(UUID customerId, UUID contactId, UUID templateId) {
            this.customerId = customerId;
            this.contactId = contactId;
            this.templateId = templateId;
        }

        /**
         * Build call for sendMessageToContact
         * @param _callback ApiCallback API callback
         * @return Call to execute
         * @throws ApiException If fail to serialize the request body object
         * @http.response.details
         <table summary="Response Details" border="1">
            <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
            <tr><td> 200 </td><td> Message successfully queued for delivery </td><td>  -  </td></tr>
            <tr><td> 401 </td><td> Unauthorized - Invalid or missing API key </td><td>  -  </td></tr>
            <tr><td> 404 </td><td> Contact, template, or customer not found </td><td>  -  </td></tr>
         </table>
         */
        public okhttp3.Call buildCall(final ApiCallback _callback) throws ApiException {
            SendMessageToContactRequest sendMessageToContactRequest = buildBodyParams();
            return sendMessageToContactCall(sendMessageToContactRequest, _callback);
        }

        private SendMessageToContactRequest buildBodyParams() {
            SendMessageToContactRequest sendMessageToContactRequest = new SendMessageToContactRequest();
            sendMessageToContactRequest.customerId(this.customerId);
            sendMessageToContactRequest.contactId(this.contactId);
            sendMessageToContactRequest.templateId(this.templateId);
            return sendMessageToContactRequest;
        }

        /**
         * Execute sendMessageToContact request
         * @return MessagesSendMessageToContactResponse
         * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
         * @http.response.details
         <table summary="Response Details" border="1">
            <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
            <tr><td> 200 </td><td> Message successfully queued for delivery </td><td>  -  </td></tr>
            <tr><td> 401 </td><td> Unauthorized - Invalid or missing API key </td><td>  -  </td></tr>
            <tr><td> 404 </td><td> Contact, template, or customer not found </td><td>  -  </td></tr>
         </table>
         */
        public MessagesSendMessageToContactResponse execute() throws ApiException {
            SendMessageToContactRequest sendMessageToContactRequest = buildBodyParams();
            ApiResponse<MessagesSendMessageToContactResponse> localVarResp = sendMessageToContactWithHttpInfo(sendMessageToContactRequest);
            return localVarResp.getResponseBody();
        }

        /**
         * Execute sendMessageToContact request with HTTP info returned
         * @return ApiResponse&lt;MessagesSendMessageToContactResponse&gt;
         * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
         * @http.response.details
         <table summary="Response Details" border="1">
            <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
            <tr><td> 200 </td><td> Message successfully queued for delivery </td><td>  -  </td></tr>
            <tr><td> 401 </td><td> Unauthorized - Invalid or missing API key </td><td>  -  </td></tr>
            <tr><td> 404 </td><td> Contact, template, or customer not found </td><td>  -  </td></tr>
         </table>
         */
        public ApiResponse<MessagesSendMessageToContactResponse> executeWithHttpInfo() throws ApiException {
            SendMessageToContactRequest sendMessageToContactRequest = buildBodyParams();
            return sendMessageToContactWithHttpInfo(sendMessageToContactRequest);
        }

        /**
         * Execute sendMessageToContact request (asynchronously)
         * @param _callback The callback to be executed when the API call finishes
         * @return The request call
         * @throws ApiException If fail to process the API call, e.g. serializing the request body object
         * @http.response.details
         <table summary="Response Details" border="1">
            <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
            <tr><td> 200 </td><td> Message successfully queued for delivery </td><td>  -  </td></tr>
            <tr><td> 401 </td><td> Unauthorized - Invalid or missing API key </td><td>  -  </td></tr>
            <tr><td> 404 </td><td> Contact, template, or customer not found </td><td>  -  </td></tr>
         </table>
         */
        public okhttp3.Call executeAsync(final ApiCallback<MessagesSendMessageToContactResponse> _callback) throws ApiException {
            SendMessageToContactRequest sendMessageToContactRequest = buildBodyParams();
            return sendMessageToContactAsync(sendMessageToContactRequest, _callback);
        }
    }

    /**
     * Send a message to a contact using a template
     * Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact&#39;s preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.
     * @param sendMessageToContactRequest Message details including customer ID, contact ID, and template ID (required)
     * @return SendMessageToContactRequestBuilder
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Message successfully queued for delivery </td><td>  -  </td></tr>
        <tr><td> 401 </td><td> Unauthorized - Invalid or missing API key </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Contact, template, or customer not found </td><td>  -  </td></tr>
     </table>
     */
    public MessagesApi.SendMessageToContactRequestBuilder sendMessageToContact(UUID customerId, UUID contactId, UUID templateId) throws IllegalArgumentException {
        if (customerId == null) throw new IllegalArgumentException("\"customerId\" is required but got null");
            

        if (contactId == null) throw new IllegalArgumentException("\"contactId\" is required but got null");
            

        if (templateId == null) throw new IllegalArgumentException("\"templateId\" is required but got null");
            

        return ((MessagesApi) this).new SendMessageToContactRequestBuilder(customerId, contactId, templateId);
    }
    private okhttp3.Call sendMessageToPhoneNumberCall(SendMessageToPhoneNumberRequest sendMessageToPhoneNumberRequest, final ApiCallback _callback) throws ApiException {
        String basePath = null;
        // Operation Servers
        String[] localBasePaths = new String[] {  };

        // Determine Base Path to Use
        if (localCustomBaseUrl != null){
            basePath = localCustomBaseUrl;
        } else if ( localBasePaths.length > 0 ) {
            basePath = localBasePaths[localHostIndex];
        } else {
            basePath = null;
        }

        Object localVarPostBody = sendMessageToPhoneNumberRequest;

        // create path and map variables
        String localVarPath = "/messages/phone-number";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
            "application/json"
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        if (localVarContentType != null) {
            localVarHeaderParams.put("Content-Type", localVarContentType);
        }

        String[] localVarAuthNames = new String[] { "ApiKey", "BearerAuth" };
        return localVarApiClient.buildCall(basePath, localVarPath, "POST", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarCookieParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call sendMessageToPhoneNumberValidateBeforeCall(SendMessageToPhoneNumberRequest sendMessageToPhoneNumberRequest, final ApiCallback _callback) throws ApiException {
        // verify the required parameter 'sendMessageToPhoneNumberRequest' is set
        if (sendMessageToPhoneNumberRequest == null) {
            throw new ApiException("Missing the required parameter 'sendMessageToPhoneNumberRequest' when calling sendMessageToPhoneNumber(Async)");
        }

        return sendMessageToPhoneNumberCall(sendMessageToPhoneNumberRequest, _callback);

    }


    private ApiResponse<MessagesSendMessageToPhoneNumberResponse> sendMessageToPhoneNumberWithHttpInfo(SendMessageToPhoneNumberRequest sendMessageToPhoneNumberRequest) throws ApiException {
        okhttp3.Call localVarCall = sendMessageToPhoneNumberValidateBeforeCall(sendMessageToPhoneNumberRequest, null);
        Type localVarReturnType = new TypeToken<MessagesSendMessageToPhoneNumberResponse>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    private okhttp3.Call sendMessageToPhoneNumberAsync(SendMessageToPhoneNumberRequest sendMessageToPhoneNumberRequest, final ApiCallback<MessagesSendMessageToPhoneNumberResponse> _callback) throws ApiException {

        okhttp3.Call localVarCall = sendMessageToPhoneNumberValidateBeforeCall(sendMessageToPhoneNumberRequest, _callback);
        Type localVarReturnType = new TypeToken<MessagesSendMessageToPhoneNumberResponse>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }

    public abstract class SendMessageToPhoneNumberRequestBuilderGenerated {
        final UUID customerId;
        final String phoneNumber;
        final UUID templateId;

        public SendMessageToPhoneNumberRequestBuilderGenerated(UUID customerId, String phoneNumber, UUID templateId) {
            this.customerId = customerId;
            this.phoneNumber = phoneNumber;
            this.templateId = templateId;
        }

        /**
         * Build call for sendMessageToPhoneNumber
         * @param _callback ApiCallback API callback
         * @return Call to execute
         * @throws ApiException If fail to serialize the request body object
         * @http.response.details
         <table summary="Response Details" border="1">
            <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
            <tr><td> 200 </td><td> Message successfully queued for delivery </td><td>  -  </td></tr>
            <tr><td> 400 </td><td> Invalid phone number or request parameters </td><td>  -  </td></tr>
            <tr><td> 401 </td><td> Unauthorized - Invalid or missing API key </td><td>  -  </td></tr>
            <tr><td> 404 </td><td> Template or customer not found </td><td>  -  </td></tr>
         </table>
         */
        public okhttp3.Call buildCall(final ApiCallback _callback) throws ApiException {
            SendMessageToPhoneNumberRequest sendMessageToPhoneNumberRequest = buildBodyParams();
            return sendMessageToPhoneNumberCall(sendMessageToPhoneNumberRequest, _callback);
        }

        private SendMessageToPhoneNumberRequest buildBodyParams() {
            SendMessageToPhoneNumberRequest sendMessageToPhoneNumberRequest = new SendMessageToPhoneNumberRequest();
            sendMessageToPhoneNumberRequest.customerId(this.customerId);
            sendMessageToPhoneNumberRequest.phoneNumber(this.phoneNumber);
            sendMessageToPhoneNumberRequest.templateId(this.templateId);
            return sendMessageToPhoneNumberRequest;
        }

        /**
         * Execute sendMessageToPhoneNumber request
         * @return MessagesSendMessageToPhoneNumberResponse
         * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
         * @http.response.details
         <table summary="Response Details" border="1">
            <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
            <tr><td> 200 </td><td> Message successfully queued for delivery </td><td>  -  </td></tr>
            <tr><td> 400 </td><td> Invalid phone number or request parameters </td><td>  -  </td></tr>
            <tr><td> 401 </td><td> Unauthorized - Invalid or missing API key </td><td>  -  </td></tr>
            <tr><td> 404 </td><td> Template or customer not found </td><td>  -  </td></tr>
         </table>
         */
        public MessagesSendMessageToPhoneNumberResponse execute() throws ApiException {
            SendMessageToPhoneNumberRequest sendMessageToPhoneNumberRequest = buildBodyParams();
            ApiResponse<MessagesSendMessageToPhoneNumberResponse> localVarResp = sendMessageToPhoneNumberWithHttpInfo(sendMessageToPhoneNumberRequest);
            return localVarResp.getResponseBody();
        }

        /**
         * Execute sendMessageToPhoneNumber request with HTTP info returned
         * @return ApiResponse&lt;MessagesSendMessageToPhoneNumberResponse&gt;
         * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
         * @http.response.details
         <table summary="Response Details" border="1">
            <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
            <tr><td> 200 </td><td> Message successfully queued for delivery </td><td>  -  </td></tr>
            <tr><td> 400 </td><td> Invalid phone number or request parameters </td><td>  -  </td></tr>
            <tr><td> 401 </td><td> Unauthorized - Invalid or missing API key </td><td>  -  </td></tr>
            <tr><td> 404 </td><td> Template or customer not found </td><td>  -  </td></tr>
         </table>
         */
        public ApiResponse<MessagesSendMessageToPhoneNumberResponse> executeWithHttpInfo() throws ApiException {
            SendMessageToPhoneNumberRequest sendMessageToPhoneNumberRequest = buildBodyParams();
            return sendMessageToPhoneNumberWithHttpInfo(sendMessageToPhoneNumberRequest);
        }

        /**
         * Execute sendMessageToPhoneNumber request (asynchronously)
         * @param _callback The callback to be executed when the API call finishes
         * @return The request call
         * @throws ApiException If fail to process the API call, e.g. serializing the request body object
         * @http.response.details
         <table summary="Response Details" border="1">
            <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
            <tr><td> 200 </td><td> Message successfully queued for delivery </td><td>  -  </td></tr>
            <tr><td> 400 </td><td> Invalid phone number or request parameters </td><td>  -  </td></tr>
            <tr><td> 401 </td><td> Unauthorized - Invalid or missing API key </td><td>  -  </td></tr>
            <tr><td> 404 </td><td> Template or customer not found </td><td>  -  </td></tr>
         </table>
         */
        public okhttp3.Call executeAsync(final ApiCallback<MessagesSendMessageToPhoneNumberResponse> _callback) throws ApiException {
            SendMessageToPhoneNumberRequest sendMessageToPhoneNumberRequest = buildBodyParams();
            return sendMessageToPhoneNumberAsync(sendMessageToPhoneNumberRequest, _callback);
        }
    }

    /**
     * Send a message to a phone number using a template
     * Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn&#39;t exist.
     * @param sendMessageToPhoneNumberRequest Message details including customer ID, phone number, and template ID (required)
     * @return SendMessageToPhoneNumberRequestBuilder
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> Message successfully queued for delivery </td><td>  -  </td></tr>
        <tr><td> 400 </td><td> Invalid phone number or request parameters </td><td>  -  </td></tr>
        <tr><td> 401 </td><td> Unauthorized - Invalid or missing API key </td><td>  -  </td></tr>
        <tr><td> 404 </td><td> Template or customer not found </td><td>  -  </td></tr>
     </table>
     */
    public MessagesApi.SendMessageToPhoneNumberRequestBuilder sendMessageToPhoneNumber(UUID customerId, String phoneNumber, UUID templateId) throws IllegalArgumentException {
        if (customerId == null) throw new IllegalArgumentException("\"customerId\" is required but got null");
            

        if (phoneNumber == null) throw new IllegalArgumentException("\"phoneNumber\" is required but got null");
            

        if (templateId == null) throw new IllegalArgumentException("\"templateId\" is required but got null");
            

        return ((MessagesApi) this).new SendMessageToPhoneNumberRequestBuilder(customerId, phoneNumber, templateId);
    }
}
