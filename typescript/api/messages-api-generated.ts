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
import { MessagesSendMessageToContact400Response } from '../models';
// @ts-ignore
import { MessagesSendMessageToContactResponse } from '../models';
// @ts-ignore
import { MessagesSendMessageToPhoneNumberResponse } from '../models';
// @ts-ignore
import { SendMessageToContactRequest } from '../models';
// @ts-ignore
import { SendMessageToPhoneNumberRequest } from '../models';
import { paginate } from "../pagination/paginate";
import type * as buffer from "buffer"
import { requestBeforeHook } from '../requestBeforeHook';
/**
 * MessagesApi - axios parameter creator
 * @export
 */
export const MessagesApiAxiosParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact\'s preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.
         * @summary Send a message to a contact using a template
         * @param {SendMessageToContactRequest} sendMessageToContactRequest Message details including customer ID, contact ID, and template ID
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        sendMessageToContact: async (sendMessageToContactRequest: SendMessageToContactRequest, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'sendMessageToContactRequest' is not null or undefined
            assertParamExists('sendMessageToContact', 'sendMessageToContactRequest', sendMessageToContactRequest)
            const localVarPath = `/messages`;
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
                requestBody: sendMessageToContactRequest,
                queryParameters: localVarQueryParameter,
                requestConfig: localVarRequestOptions,
                path: localVarPath,
                configuration,
                pathTemplate: '/messages',
                httpMethod: 'POST'
            });
            localVarRequestOptions.data = serializeDataIfNeeded(sendMessageToContactRequest, localVarRequestOptions, configuration)

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn\'t exist.
         * @summary Send a message to a phone number using a template
         * @param {SendMessageToPhoneNumberRequest} sendMessageToPhoneNumberRequest Message details including customer ID, phone number, and template ID
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        sendMessageToPhoneNumber: async (sendMessageToPhoneNumberRequest: SendMessageToPhoneNumberRequest, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'sendMessageToPhoneNumberRequest' is not null or undefined
            assertParamExists('sendMessageToPhoneNumber', 'sendMessageToPhoneNumberRequest', sendMessageToPhoneNumberRequest)
            const localVarPath = `/messages/phone-number`;
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
                requestBody: sendMessageToPhoneNumberRequest,
                queryParameters: localVarQueryParameter,
                requestConfig: localVarRequestOptions,
                path: localVarPath,
                configuration,
                pathTemplate: '/messages/phone-number',
                httpMethod: 'POST'
            });
            localVarRequestOptions.data = serializeDataIfNeeded(sendMessageToPhoneNumberRequest, localVarRequestOptions, configuration)

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
    }
};

/**
 * MessagesApi - functional programming interface
 * @export
 */
export const MessagesApiFp = function(configuration?: Configuration) {
    const localVarAxiosParamCreator = MessagesApiAxiosParamCreator(configuration)
    return {
        /**
         * Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact\'s preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.
         * @summary Send a message to a contact using a template
         * @param {MessagesApiSendMessageToContactRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async sendMessageToContact(requestParameters: MessagesApiSendMessageToContactRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<MessagesSendMessageToContactResponse>> {
            const sendMessageToContactRequest: SendMessageToContactRequest = {
                customerId: requestParameters.customerId,
                contactId: requestParameters.contactId,
                templateId: requestParameters.templateId
            };
            const localVarAxiosArgs = await localVarAxiosParamCreator.sendMessageToContact(sendMessageToContactRequest, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
        /**
         * Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn\'t exist.
         * @summary Send a message to a phone number using a template
         * @param {MessagesApiSendMessageToPhoneNumberRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async sendMessageToPhoneNumber(requestParameters: MessagesApiSendMessageToPhoneNumberRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<MessagesSendMessageToPhoneNumberResponse>> {
            const sendMessageToPhoneNumberRequest: SendMessageToPhoneNumberRequest = {
                customerId: requestParameters.customerId,
                phoneNumber: requestParameters.phoneNumber,
                templateId: requestParameters.templateId
            };
            const localVarAxiosArgs = await localVarAxiosParamCreator.sendMessageToPhoneNumber(sendMessageToPhoneNumberRequest, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
    }
};

/**
 * MessagesApi - factory interface
 * @export
 */
export const MessagesApiFactory = function (configuration?: Configuration, basePath?: string, axios?: AxiosInstance) {
    const localVarFp = MessagesApiFp(configuration)
    return {
        /**
         * Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact\'s preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.
         * @summary Send a message to a contact using a template
         * @param {MessagesApiSendMessageToContactRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        sendMessageToContact(requestParameters: MessagesApiSendMessageToContactRequest, options?: AxiosRequestConfig): AxiosPromise<MessagesSendMessageToContactResponse> {
            return localVarFp.sendMessageToContact(requestParameters, options).then((request) => request(axios, basePath));
        },
        /**
         * Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn\'t exist.
         * @summary Send a message to a phone number using a template
         * @param {MessagesApiSendMessageToPhoneNumberRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        sendMessageToPhoneNumber(requestParameters: MessagesApiSendMessageToPhoneNumberRequest, options?: AxiosRequestConfig): AxiosPromise<MessagesSendMessageToPhoneNumberResponse> {
            return localVarFp.sendMessageToPhoneNumber(requestParameters, options).then((request) => request(axios, basePath));
        },
    };
};

/**
 * Request parameters for sendMessageToContact operation in MessagesApi.
 * @export
 * @interface MessagesApiSendMessageToContactRequest
 */
export type MessagesApiSendMessageToContactRequest = {
    
} & SendMessageToContactRequest

/**
 * Request parameters for sendMessageToPhoneNumber operation in MessagesApi.
 * @export
 * @interface MessagesApiSendMessageToPhoneNumberRequest
 */
export type MessagesApiSendMessageToPhoneNumberRequest = {
    
} & SendMessageToPhoneNumberRequest

/**
 * MessagesApiGenerated - object-oriented interface
 * @export
 * @class MessagesApiGenerated
 * @extends {BaseAPI}
 */
export class MessagesApiGenerated extends BaseAPI {
    /**
     * Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact\'s preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.
     * @summary Send a message to a contact using a template
     * @param {MessagesApiSendMessageToContactRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof MessagesApiGenerated
     */
    public sendMessageToContact(requestParameters: MessagesApiSendMessageToContactRequest, options?: AxiosRequestConfig) {
        return MessagesApiFp(this.configuration).sendMessageToContact(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn\'t exist.
     * @summary Send a message to a phone number using a template
     * @param {MessagesApiSendMessageToPhoneNumberRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof MessagesApiGenerated
     */
    public sendMessageToPhoneNumber(requestParameters: MessagesApiSendMessageToPhoneNumberRequest, options?: AxiosRequestConfig) {
        return MessagesApiFp(this.configuration).sendMessageToPhoneNumber(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }
}
