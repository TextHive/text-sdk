/* tslint:disable */
/* eslint-disable */
/*
TextHive Core API

TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

The version of the OpenAPI document: 1.1.0
Contact: developers@texthive.khulnasoft.com

NOTE: This file is auto generated by Konfig (https://konfigthis.com).
*/

import globalAxios, { AxiosPromise, AxiosInstance, AxiosRequestConfig } from 'axios';
import { Configuration } from '../configuration';
// Some imports not used depending on template conditions
// @ts-ignore
import { DUMMY_BASE_URL, assertParamExists, setApiKeyToObject, setBasicAuthToObject, setBearerAuthToObject, setSearchParams, serializeDataIfNeeded, toPathString, createRequestFunction, isBrowser } from '../common';
// @ts-ignore
import { BASE_PATH, COLLECTION_FORMATS, RequestArgs, BaseAPI, RequiredError } from '../base';
// @ts-ignore
import { Customer } from '../models';
// @ts-ignore
import { CustomersUpdateCustomerRequest } from '../models';
import { paginate } from "../pagination/paginate";
import type * as buffer from "buffer"
import { requestBeforeHook } from '../requestBeforeHook';
/**
 * CustomersApi - axios parameter creator
 * @export
 */
export const CustomersApiAxiosParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * Creates a new customer account in the Sent platform. This endpoint initializes a new customer profile with basic information and returns the created customer details including generated IDs and credentials for various messaging channels.
         * @summary Create a new customer account
         * @param {string} body Customer name to create the account
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        createCustomer: async (body: string, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'body' is not null or undefined
            assertParamExists('createCustomer', 'body', body)
            const localVarPath = `/customers`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions: AxiosRequestConfig = { method: 'POST', ...baseOptions, ...options};
            const localVarHeaderParameter = configuration && !isBrowser() ? { "User-Agent": configuration.userAgent } : {} as any;
            const localVarQueryParameter = {} as any;

            // authentication ApiKey required
            await setApiKeyToObject({ object: localVarHeaderParameter, key: "x-api-key", keyParamName: "apiKey", configuration })
            // authentication BearerAuth required
            // http bearer authentication required
            await setBearerAuthToObject(localVarHeaderParameter, configuration)

    
            localVarHeaderParameter['Content-Type'] = 'application/json';


            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            requestBeforeHook({
                requestBody: body,
                queryParameters: localVarQueryParameter,
                requestConfig: localVarRequestOptions,
                path: localVarPath,
                configuration,
                pathTemplate: '/customers',
                httpMethod: 'POST'
            });
            localVarRequestOptions.data = serializeDataIfNeeded(body, localVarRequestOptions, configuration)

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Permanently deletes a customer and all associated data. This action cannot be undone. All active services for this customer will be terminated.
         * @summary Delete a customer
         * @param {string} id Unique identifier of the customer to delete
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        deleteCustomer: async (id: string, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'id' is not null or undefined
            assertParamExists('deleteCustomer', 'id', id)
            const localVarPath = `/customers/{id}`
                .replace(`{${"id"}}`, encodeURIComponent(String(id !== undefined ? id : `-id-`)));
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions: AxiosRequestConfig = { method: 'DELETE', ...baseOptions, ...options};
            const localVarHeaderParameter = configuration && !isBrowser() ? { "User-Agent": configuration.userAgent } : {} as any;
            const localVarQueryParameter = {} as any;

            // authentication ApiKey required
            await setApiKeyToObject({ object: localVarHeaderParameter, key: "x-api-key", keyParamName: "apiKey", configuration })
            // authentication BearerAuth required
            // http bearer authentication required
            await setBearerAuthToObject(localVarHeaderParameter, configuration)

    
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            requestBeforeHook({
                queryParameters: localVarQueryParameter,
                requestConfig: localVarRequestOptions,
                path: localVarPath,
                configuration,
                pathTemplate: '/customers/{id}',
                httpMethod: 'DELETE'
            });

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Returns a paginated list of all customers. Use page and pageSize parameters to control the number of results returned. Results are sorted by creation date in descending order.
         * @summary Retrieve all customers with pagination
         * @param {number} page Page number to retrieve (starts from 1)
         * @param {number} pageSize Number of items to return per page
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getAllCustomers: async (page: number, pageSize: number, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'page' is not null or undefined
            assertParamExists('getAllCustomers', 'page', page)
            // verify required parameter 'pageSize' is not null or undefined
            assertParamExists('getAllCustomers', 'pageSize', pageSize)
            const localVarPath = `/customers`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions: AxiosRequestConfig = { method: 'GET', ...baseOptions, ...options};
            const localVarHeaderParameter = configuration && !isBrowser() ? { "User-Agent": configuration.userAgent } : {} as any;
            const localVarQueryParameter = {} as any;

            // authentication ApiKey required
            await setApiKeyToObject({ object: localVarHeaderParameter, key: "x-api-key", keyParamName: "apiKey", configuration })
            // authentication BearerAuth required
            // http bearer authentication required
            await setBearerAuthToObject(localVarHeaderParameter, configuration)
            if (page !== undefined) {
                localVarQueryParameter['page'] = page;
            }

            if (pageSize !== undefined) {
                localVarQueryParameter['pageSize'] = pageSize;
            }


    
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            requestBeforeHook({
                queryParameters: localVarQueryParameter,
                requestConfig: localVarRequestOptions,
                path: localVarPath,
                configuration,
                pathTemplate: '/customers',
                httpMethod: 'GET'
            });

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Returns detailed information about a specific customer including their messaging channel configurations and credentials.
         * @summary Retrieve a customer by ID
         * @param {string} id Unique identifier of the customer
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getCustomerById: async (id: string, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'id' is not null or undefined
            assertParamExists('getCustomerById', 'id', id)
            const localVarPath = `/customers/{id}`
                .replace(`{${"id"}}`, encodeURIComponent(String(id !== undefined ? id : `-id-`)));
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions: AxiosRequestConfig = { method: 'GET', ...baseOptions, ...options};
            const localVarHeaderParameter = configuration && !isBrowser() ? { "User-Agent": configuration.userAgent } : {} as any;
            const localVarQueryParameter = {} as any;

            // authentication ApiKey required
            await setApiKeyToObject({ object: localVarHeaderParameter, key: "x-api-key", keyParamName: "apiKey", configuration })
            // authentication BearerAuth required
            // http bearer authentication required
            await setBearerAuthToObject(localVarHeaderParameter, configuration)

    
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            requestBeforeHook({
                queryParameters: localVarQueryParameter,
                requestConfig: localVarRequestOptions,
                path: localVarPath,
                configuration,
                pathTemplate: '/customers/{id}',
                httpMethod: 'GET'
            });

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Updates an existing customer\'s information including messaging channel configurations. All fields in the request body will override existing values.
         * @summary Update customer information
         * @param {string} id Unique identifier of the customer to update
         * @param {CustomersUpdateCustomerRequest} customersUpdateCustomerRequest Updated customer information
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        updateCustomer: async (id: string, customersUpdateCustomerRequest: CustomersUpdateCustomerRequest, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'id' is not null or undefined
            assertParamExists('updateCustomer', 'id', id)
            // verify required parameter 'customersUpdateCustomerRequest' is not null or undefined
            assertParamExists('updateCustomer', 'customersUpdateCustomerRequest', customersUpdateCustomerRequest)
            const localVarPath = `/customers/{id}`
                .replace(`{${"id"}}`, encodeURIComponent(String(id !== undefined ? id : `-id-`)));
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions: AxiosRequestConfig = { method: 'PUT', ...baseOptions, ...options};
            const localVarHeaderParameter = configuration && !isBrowser() ? { "User-Agent": configuration.userAgent } : {} as any;
            const localVarQueryParameter = {} as any;

            // authentication ApiKey required
            await setApiKeyToObject({ object: localVarHeaderParameter, key: "x-api-key", keyParamName: "apiKey", configuration })
            // authentication BearerAuth required
            // http bearer authentication required
            await setBearerAuthToObject(localVarHeaderParameter, configuration)

    
            localVarHeaderParameter['Content-Type'] = 'application/json';


            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            requestBeforeHook({
                requestBody: customersUpdateCustomerRequest,
                queryParameters: localVarQueryParameter,
                requestConfig: localVarRequestOptions,
                path: localVarPath,
                configuration,
                pathTemplate: '/customers/{id}',
                httpMethod: 'PUT'
            });
            localVarRequestOptions.data = serializeDataIfNeeded(customersUpdateCustomerRequest, localVarRequestOptions, configuration)

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
    }
};

/**
 * CustomersApi - functional programming interface
 * @export
 */
export const CustomersApiFp = function(configuration?: Configuration) {
    const localVarAxiosParamCreator = CustomersApiAxiosParamCreator(configuration)
    return {
        /**
         * Creates a new customer account in the Sent platform. This endpoint initializes a new customer profile with basic information and returns the created customer details including generated IDs and credentials for various messaging channels.
         * @summary Create a new customer account
         * @param {CustomersApiCreateCustomerRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async createCustomer(requestParameters: CustomersApiCreateCustomerRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<Customer>> {
            const body: string = requestParameters;
            const localVarAxiosArgs = await localVarAxiosParamCreator.createCustomer(body, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
        /**
         * Permanently deletes a customer and all associated data. This action cannot be undone. All active services for this customer will be terminated.
         * @summary Delete a customer
         * @param {CustomersApiDeleteCustomerRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async deleteCustomer(requestParameters: CustomersApiDeleteCustomerRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<void>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.deleteCustomer(requestParameters.id, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
        /**
         * Returns a paginated list of all customers. Use page and pageSize parameters to control the number of results returned. Results are sorted by creation date in descending order.
         * @summary Retrieve all customers with pagination
         * @param {CustomersApiGetAllCustomersRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async getAllCustomers(requestParameters: CustomersApiGetAllCustomersRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<Array<Customer>>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.getAllCustomers(requestParameters.page, requestParameters.pageSize, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
        /**
         * Returns detailed information about a specific customer including their messaging channel configurations and credentials.
         * @summary Retrieve a customer by ID
         * @param {CustomersApiGetCustomerByIdRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async getCustomerById(requestParameters: CustomersApiGetCustomerByIdRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<Customer>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.getCustomerById(requestParameters.id, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
        /**
         * Updates an existing customer\'s information including messaging channel configurations. All fields in the request body will override existing values.
         * @summary Update customer information
         * @param {CustomersApiUpdateCustomerRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async updateCustomer(requestParameters: CustomersApiUpdateCustomerRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<Customer>> {
            const customersUpdateCustomerRequest: CustomersUpdateCustomerRequest = {
                name: requestParameters.name,
                sendingPhoneNumber: requestParameters.sendingPhoneNumber,
                smsMessagingProfileId: requestParameters.smsMessagingProfileId,
                smsBearerToken: requestParameters.smsBearerToken
            };
            const localVarAxiosArgs = await localVarAxiosParamCreator.updateCustomer(requestParameters.id, customersUpdateCustomerRequest, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
    }
};

/**
 * CustomersApi - factory interface
 * @export
 */
export const CustomersApiFactory = function (configuration?: Configuration, basePath?: string, axios?: AxiosInstance) {
    const localVarFp = CustomersApiFp(configuration)
    return {
        /**
         * Creates a new customer account in the Sent platform. This endpoint initializes a new customer profile with basic information and returns the created customer details including generated IDs and credentials for various messaging channels.
         * @summary Create a new customer account
         * @param {CustomersApiCreateCustomerRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        createCustomer(requestParameters: CustomersApiCreateCustomerRequest, options?: AxiosRequestConfig): AxiosPromise<Customer> {
            return localVarFp.createCustomer(requestParameters, options).then((request) => request(axios, basePath));
        },
        /**
         * Permanently deletes a customer and all associated data. This action cannot be undone. All active services for this customer will be terminated.
         * @summary Delete a customer
         * @param {CustomersApiDeleteCustomerRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        deleteCustomer(requestParameters: CustomersApiDeleteCustomerRequest, options?: AxiosRequestConfig): AxiosPromise<void> {
            return localVarFp.deleteCustomer(requestParameters, options).then((request) => request(axios, basePath));
        },
        /**
         * Returns a paginated list of all customers. Use page and pageSize parameters to control the number of results returned. Results are sorted by creation date in descending order.
         * @summary Retrieve all customers with pagination
         * @param {CustomersApiGetAllCustomersRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getAllCustomers(requestParameters: CustomersApiGetAllCustomersRequest, options?: AxiosRequestConfig): AxiosPromise<Array<Customer>> {
            return localVarFp.getAllCustomers(requestParameters, options).then((request) => request(axios, basePath));
        },
        /**
         * Returns detailed information about a specific customer including their messaging channel configurations and credentials.
         * @summary Retrieve a customer by ID
         * @param {CustomersApiGetCustomerByIdRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getCustomerById(requestParameters: CustomersApiGetCustomerByIdRequest, options?: AxiosRequestConfig): AxiosPromise<Customer> {
            return localVarFp.getCustomerById(requestParameters, options).then((request) => request(axios, basePath));
        },
        /**
         * Updates an existing customer\'s information including messaging channel configurations. All fields in the request body will override existing values.
         * @summary Update customer information
         * @param {CustomersApiUpdateCustomerRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        updateCustomer(requestParameters: CustomersApiUpdateCustomerRequest, options?: AxiosRequestConfig): AxiosPromise<Customer> {
            return localVarFp.updateCustomer(requestParameters, options).then((request) => request(axios, basePath));
        },
    };
};

/**
 * Request parameters for createCustomer operation in CustomersApi.
 * @export
 * @interface CustomersApiCreateCustomerRequest
 */
export type CustomersApiCreateCustomerRequest = string

/**
 * Request parameters for deleteCustomer operation in CustomersApi.
 * @export
 * @interface CustomersApiDeleteCustomerRequest
 */
export type CustomersApiDeleteCustomerRequest = {
    
    /**
    * Unique identifier of the customer to delete
    * @type {string}
    * @memberof CustomersApiDeleteCustomer
    */
    readonly id: string
    
}

/**
 * Request parameters for getAllCustomers operation in CustomersApi.
 * @export
 * @interface CustomersApiGetAllCustomersRequest
 */
export type CustomersApiGetAllCustomersRequest = {
    
    /**
    * Page number to retrieve (starts from 1)
    * @type {number}
    * @memberof CustomersApiGetAllCustomers
    */
    readonly page: number
    
    /**
    * Number of items to return per page
    * @type {number}
    * @memberof CustomersApiGetAllCustomers
    */
    readonly pageSize: number
    
}

/**
 * Request parameters for getCustomerById operation in CustomersApi.
 * @export
 * @interface CustomersApiGetCustomerByIdRequest
 */
export type CustomersApiGetCustomerByIdRequest = {
    
    /**
    * Unique identifier of the customer
    * @type {string}
    * @memberof CustomersApiGetCustomerById
    */
    readonly id: string
    
}

/**
 * Request parameters for updateCustomer operation in CustomersApi.
 * @export
 * @interface CustomersApiUpdateCustomerRequest
 */
export type CustomersApiUpdateCustomerRequest = {
    
    /**
    * Unique identifier of the customer to update
    * @type {string}
    * @memberof CustomersApiUpdateCustomer
    */
    readonly id: string
    
} & CustomersUpdateCustomerRequest

/**
 * CustomersApiGenerated - object-oriented interface
 * @export
 * @class CustomersApiGenerated
 * @extends {BaseAPI}
 */
export class CustomersApiGenerated extends BaseAPI {
    /**
     * Creates a new customer account in the Sent platform. This endpoint initializes a new customer profile with basic information and returns the created customer details including generated IDs and credentials for various messaging channels.
     * @summary Create a new customer account
     * @param {CustomersApiCreateCustomerRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof CustomersApiGenerated
     */
    public createCustomer(requestParameters: CustomersApiCreateCustomerRequest, options?: AxiosRequestConfig) {
        return CustomersApiFp(this.configuration).createCustomer(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Permanently deletes a customer and all associated data. This action cannot be undone. All active services for this customer will be terminated.
     * @summary Delete a customer
     * @param {CustomersApiDeleteCustomerRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof CustomersApiGenerated
     */
    public deleteCustomer(requestParameters: CustomersApiDeleteCustomerRequest, options?: AxiosRequestConfig) {
        return CustomersApiFp(this.configuration).deleteCustomer(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Returns a paginated list of all customers. Use page and pageSize parameters to control the number of results returned. Results are sorted by creation date in descending order.
     * @summary Retrieve all customers with pagination
     * @param {CustomersApiGetAllCustomersRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof CustomersApiGenerated
     */
    public getAllCustomers(requestParameters: CustomersApiGetAllCustomersRequest, options?: AxiosRequestConfig) {
        return CustomersApiFp(this.configuration).getAllCustomers(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Returns detailed information about a specific customer including their messaging channel configurations and credentials.
     * @summary Retrieve a customer by ID
     * @param {CustomersApiGetCustomerByIdRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof CustomersApiGenerated
     */
    public getCustomerById(requestParameters: CustomersApiGetCustomerByIdRequest, options?: AxiosRequestConfig) {
        return CustomersApiFp(this.configuration).getCustomerById(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Updates an existing customer\'s information including messaging channel configurations. All fields in the request body will override existing values.
     * @summary Update customer information
     * @param {CustomersApiUpdateCustomerRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof CustomersApiGenerated
     */
    public updateCustomer(requestParameters: CustomersApiUpdateCustomerRequest, options?: AxiosRequestConfig) {
        return CustomersApiFp(this.configuration).updateCustomer(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }
}
