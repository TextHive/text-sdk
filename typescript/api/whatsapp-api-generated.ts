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
import { WhatsAppPayload } from '../models';
// @ts-ignore
import { WhatsappGetWhatsappContactResponse } from '../models';
import { paginate } from "../pagination/paginate";
import type * as buffer from "buffer"
import { requestBeforeHook } from '../requestBeforeHook';
/**
 * WhatsappApi - axios parameter creator
 * @export
 */
export const WhatsappApiAxiosParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * Fetches or creates WhatsApp contact information for a given phone number. This endpoint validates WhatsApp availability and returns detailed contact metadata including business account status and profile information.
         * @summary Retrieve WhatsApp contact information
         * @param {string} phoneNumber Phone number in international format (E.164)
         * @param {boolean} retrieveIfDoesNotExists Whether to create a new contact if one doesn\&#39;t exist
         * @param {string} [sentId] Optional Sent platform identifier for tracking
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getWhatsappContact: async (phoneNumber: string, retrieveIfDoesNotExists: boolean, sentId?: string, options: AxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'phoneNumber' is not null or undefined
            assertParamExists('getWhatsappContact', 'phoneNumber', phoneNumber)
            // verify required parameter 'retrieveIfDoesNotExists' is not null or undefined
            assertParamExists('getWhatsappContact', 'retrieveIfDoesNotExists', retrieveIfDoesNotExists)
            const localVarPath = `/whatsapp`;
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
            if (phoneNumber !== undefined) {
                localVarQueryParameter['phoneNumber'] = phoneNumber;
            }

            if (retrieveIfDoesNotExists !== undefined) {
                localVarQueryParameter['retrieveIfDoesNotExists'] = retrieveIfDoesNotExists;
            }

            if (sentId !== undefined) {
                localVarQueryParameter['sentId'] = sentId;
            }


    
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            requestBeforeHook({
                queryParameters: localVarQueryParameter,
                requestConfig: localVarRequestOptions,
                path: localVarPath,
                configuration,
                pathTemplate: '/whatsapp',
                httpMethod: 'GET'
            });

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
    }
};

/**
 * WhatsappApi - functional programming interface
 * @export
 */
export const WhatsappApiFp = function(configuration?: Configuration) {
    const localVarAxiosParamCreator = WhatsappApiAxiosParamCreator(configuration)
    return {
        /**
         * Fetches or creates WhatsApp contact information for a given phone number. This endpoint validates WhatsApp availability and returns detailed contact metadata including business account status and profile information.
         * @summary Retrieve WhatsApp contact information
         * @param {WhatsappApiGetWhatsappContactRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async getWhatsappContact(requestParameters: WhatsappApiGetWhatsappContactRequest, options?: AxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<WhatsAppPayload>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.getWhatsappContact(requestParameters.phoneNumber, requestParameters.retrieveIfDoesNotExists, requestParameters.sentId, options);
            return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
        },
    }
};

/**
 * WhatsappApi - factory interface
 * @export
 */
export const WhatsappApiFactory = function (configuration?: Configuration, basePath?: string, axios?: AxiosInstance) {
    const localVarFp = WhatsappApiFp(configuration)
    return {
        /**
         * Fetches or creates WhatsApp contact information for a given phone number. This endpoint validates WhatsApp availability and returns detailed contact metadata including business account status and profile information.
         * @summary Retrieve WhatsApp contact information
         * @param {WhatsappApiGetWhatsappContactRequest} requestParameters Request parameters.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getWhatsappContact(requestParameters: WhatsappApiGetWhatsappContactRequest, options?: AxiosRequestConfig): AxiosPromise<WhatsAppPayload> {
            return localVarFp.getWhatsappContact(requestParameters, options).then((request) => request(axios, basePath));
        },
    };
};

/**
 * Request parameters for getWhatsappContact operation in WhatsappApi.
 * @export
 * @interface WhatsappApiGetWhatsappContactRequest
 */
export type WhatsappApiGetWhatsappContactRequest = {
    
    /**
    * Phone number in international format (E.164)
    * @type {string}
    * @memberof WhatsappApiGetWhatsappContact
    */
    readonly phoneNumber: string
    
    /**
    * Whether to create a new contact if one doesn\'t exist
    * @type {boolean}
    * @memberof WhatsappApiGetWhatsappContact
    */
    readonly retrieveIfDoesNotExists: boolean
    
    /**
    * Optional Sent platform identifier for tracking
    * @type {string}
    * @memberof WhatsappApiGetWhatsappContact
    */
    readonly sentId?: string
    
}

/**
 * WhatsappApiGenerated - object-oriented interface
 * @export
 * @class WhatsappApiGenerated
 * @extends {BaseAPI}
 */
export class WhatsappApiGenerated extends BaseAPI {
    /**
     * Fetches or creates WhatsApp contact information for a given phone number. This endpoint validates WhatsApp availability and returns detailed contact metadata including business account status and profile information.
     * @summary Retrieve WhatsApp contact information
     * @param {WhatsappApiGetWhatsappContactRequest} requestParameters Request parameters.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof WhatsappApiGenerated
     */
    public getWhatsappContact(requestParameters: WhatsappApiGetWhatsappContactRequest, options?: AxiosRequestConfig) {
        return WhatsappApiFp(this.configuration).getWhatsappContact(requestParameters, options).then((request) => request(this.axios, this.basePath));
    }
}
