# coding: utf-8

"""
    TextHive Core API

    TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

    The version of the OpenAPI document: 1.1.0
    Contact: developers@texthive.khulnasoft.com
    Created by: https://www.texthive.khulnasoft.com/
"""

from dataclasses import dataclass
import typing_extensions
import urllib3
from pydantic import RootModel
from texthive.request_before_hook import request_before_hook
import json
from urllib3._collections import HTTPHeaderDict

from texthive.api_response import AsyncGeneratorResponse
from texthive import api_client, exceptions
from datetime import date, datetime  # noqa: F401
import decimal  # noqa: F401
import functools  # noqa: F401
import io  # noqa: F401
import re  # noqa: F401
import typing  # noqa: F401
import typing_extensions  # noqa: F401
import uuid  # noqa: F401

import frozendict  # noqa: F401

from texthive import schemas  # noqa: F401

from texthive.model.sms_get_contact_info_response import SmsGetContactInfoResponse as SmsGetContactInfoResponseSchema
from texthive.model.sms_payload import SMSPayload as SMSPayloadSchema

from texthive.type.sms_payload import SMSPayload
from texthive.type.sms_get_contact_info_response import SmsGetContactInfoResponse

from ...api_client import Dictionary
from texthive.pydantic.sms_payload import SMSPayload as SMSPayloadPydantic
from texthive.pydantic.sms_get_contact_info_response import SmsGetContactInfoResponse as SmsGetContactInfoResponsePydantic

# Query params
PhoneNumberSchema = schemas.StrSchema
RetrieveIfDoesNotExistsSchema = schemas.BoolSchema


class SentIdSchema(
    schemas.UUIDBase,
    schemas.StrBase,
    schemas.NoneBase,
    schemas.Schema,
    schemas.NoneStrMixin
):


    class MetaOapg:
        format = 'uuid'


    def __new__(
        cls,
        *args: typing.Union[None, str, uuid.UUID, ],
        _configuration: typing.Optional[schemas.Configuration] = None,
    ) -> 'SentIdSchema':
        return super().__new__(
            cls,
            *args,
            _configuration=_configuration,
        )
RequestRequiredQueryParams = typing_extensions.TypedDict(
    'RequestRequiredQueryParams',
    {
        'phoneNumber': typing.Union[PhoneNumberSchema, str, ],
        'retrieveIfDoesNotExists': typing.Union[RetrieveIfDoesNotExistsSchema, bool, ],
    }
)
RequestOptionalQueryParams = typing_extensions.TypedDict(
    'RequestOptionalQueryParams',
    {
        'sentId': typing.Union[SentIdSchema, None, str, uuid.UUID, ],
    },
    total=False
)


class RequestQueryParams(RequestRequiredQueryParams, RequestOptionalQueryParams):
    pass


request_query_phone_number = api_client.QueryParameter(
    name="phoneNumber",
    style=api_client.ParameterStyle.FORM,
    schema=PhoneNumberSchema,
    required=True,
    explode=True,
)
request_query_retrieve_if_does_not_exists = api_client.QueryParameter(
    name="retrieveIfDoesNotExists",
    style=api_client.ParameterStyle.FORM,
    schema=RetrieveIfDoesNotExistsSchema,
    required=True,
    explode=True,
)
request_query_sent_id = api_client.QueryParameter(
    name="sentId",
    style=api_client.ParameterStyle.FORM,
    schema=SentIdSchema,
    explode=True,
)
SchemaFor200ResponseBodyApplicationJson = SMSPayloadSchema


@dataclass
class ApiResponseFor200(api_client.ApiResponse):
    body: SMSPayload


@dataclass
class ApiResponseFor200Async(api_client.AsyncApiResponse):
    body: SMSPayload


_response_for_200 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor200,
    response_cls_async=ApiResponseFor200Async,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor200ResponseBodyApplicationJson),
    },
)
SchemaFor400ResponseBodyApplicationJson = SmsGetContactInfoResponseSchema


@dataclass
class ApiResponseFor400(api_client.ApiResponse):
    body: SmsGetContactInfoResponse


@dataclass
class ApiResponseFor400Async(api_client.AsyncApiResponse):
    body: SmsGetContactInfoResponse


_response_for_400 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor400,
    response_cls_async=ApiResponseFor400Async,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor400ResponseBodyApplicationJson),
    },
)


@dataclass
class ApiResponseFor401(api_client.ApiResponse):
    body: schemas.Unset = schemas.unset


@dataclass
class ApiResponseFor401Async(api_client.AsyncApiResponse):
    body: schemas.Unset = schemas.unset


_response_for_401 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor401,
    response_cls_async=ApiResponseFor401Async,
)
_all_accept_content_types = (
    'application/json',
)


class BaseApi(api_client.Api):

    def _get_contact_info_mapped_args(
        self,
        phone_number: str,
        retrieve_if_does_not_exists: bool,
        sent_id: typing.Optional[typing.Optional[str]] = None,
    ) -> api_client.MappedArgs:
        args: api_client.MappedArgs = api_client.MappedArgs()
        _query_params = {}
        if phone_number is not None:
            _query_params["phoneNumber"] = phone_number
        if retrieve_if_does_not_exists is not None:
            _query_params["retrieveIfDoesNotExists"] = retrieve_if_does_not_exists
        if sent_id is not None:
            _query_params["sentId"] = sent_id
        args.query = _query_params
        return args

    async def _aget_contact_info_oapg(
        self,
            query_params: typing.Optional[dict] = {},
        skip_deserialization: bool = True,
        timeout: typing.Optional[typing.Union[float, typing.Tuple]] = None,
        accept_content_types: typing.Tuple[str] = _all_accept_content_types,
        stream: bool = False,
        **kwargs,
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        """
        Retrieve SMS contact information and capabilities
        :param skip_deserialization: If true then api_response.response will be set but
            api_response.body and api_response.headers will not be deserialized into schema
            class instances
        """
        self._verify_typed_dict_inputs_oapg(RequestQueryParams, query_params)
        used_path = path.value
    
        prefix_separator_iterator = None
        for parameter in (
            request_query_phone_number,
            request_query_retrieve_if_does_not_exists,
            request_query_sent_id,
        ):
            parameter_data = query_params.get(parameter.name, schemas.unset)
            if parameter_data is schemas.unset:
                continue
            if prefix_separator_iterator is None:
                prefix_separator_iterator = parameter.get_prefix_separator_iterator()
            serialized_data = parameter.serialize(parameter_data, prefix_separator_iterator)
            for serialized_value in serialized_data.values():
                used_path += serialized_value
    
        _headers = HTTPHeaderDict()
        # TODO add cookie handling
        if accept_content_types:
            for accept_content_type in accept_content_types:
                _headers.add('Accept', accept_content_type)
        method = 'get'.upper()
        request_before_hook(
            resource_path=used_path,
            method=method,
            configuration=self.api_client.configuration,
            path_template='/sms',
            auth_settings=_auth,
            headers=_headers,
        )
    
        response = await self.api_client.async_call_api(
            resource_path=used_path,
            method=method,
            headers=_headers,
            auth_settings=_auth,
            prefix_separator_iterator=prefix_separator_iterator,
            timeout=timeout,
            **kwargs
        )
    
        if stream:
            if not 200 <= response.http_response.status <= 299:
                body = (await response.http_response.content.read()).decode("utf-8")
                raise exceptions.ApiStreamingException(
                    status=response.http_response.status,
                    reason=response.http_response.reason,
                    body=body,
                )
    
            async def stream_iterator():
                """
                iterates over response.http_response.content and closes connection once iteration has finished
                """
                async for line in response.http_response.content:
                    if line == b'\r\n':
                        continue
                    yield line
                response.http_response.close()
                await response.session.close()
            return AsyncGeneratorResponse(
                content=stream_iterator(),
                headers=response.http_response.headers,
                status=response.http_response.status,
                response=response.http_response
            )
    
        response_for_status = _status_code_to_response.get(str(response.http_response.status))
        if response_for_status:
            api_response = await response_for_status.deserialize_async(
                                                    response,
                                                    self.api_client.configuration,
                                                    skip_deserialization=skip_deserialization
                                                )
        else:
            # If response data is JSON then deserialize for SDK consumer convenience
            is_json = api_client.JSONDetector._content_type_is_json(response.http_response.headers.get('Content-Type', ''))
            api_response = api_client.ApiResponseWithoutDeserializationAsync(
                body=await response.http_response.json() if is_json else await response.http_response.text(),
                response=response.http_response,
                round_trip_time=response.round_trip_time,
                status=response.http_response.status,
                headers=response.http_response.headers,
            )
    
        if not 200 <= api_response.status <= 299:
            raise exceptions.ApiException(api_response=api_response)
    
        # cleanup session / response
        response.http_response.close()
        await response.session.close()
    
        return api_response


    def _get_contact_info_oapg(
        self,
            query_params: typing.Optional[dict] = {},
        skip_deserialization: bool = True,
        timeout: typing.Optional[typing.Union[float, typing.Tuple]] = None,
        accept_content_types: typing.Tuple[str] = _all_accept_content_types,
        stream: bool = False,
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        """
        Retrieve SMS contact information and capabilities
        :param skip_deserialization: If true then api_response.response will be set but
            api_response.body and api_response.headers will not be deserialized into schema
            class instances
        """
        self._verify_typed_dict_inputs_oapg(RequestQueryParams, query_params)
        used_path = path.value
    
        prefix_separator_iterator = None
        for parameter in (
            request_query_phone_number,
            request_query_retrieve_if_does_not_exists,
            request_query_sent_id,
        ):
            parameter_data = query_params.get(parameter.name, schemas.unset)
            if parameter_data is schemas.unset:
                continue
            if prefix_separator_iterator is None:
                prefix_separator_iterator = parameter.get_prefix_separator_iterator()
            serialized_data = parameter.serialize(parameter_data, prefix_separator_iterator)
            for serialized_value in serialized_data.values():
                used_path += serialized_value
    
        _headers = HTTPHeaderDict()
        # TODO add cookie handling
        if accept_content_types:
            for accept_content_type in accept_content_types:
                _headers.add('Accept', accept_content_type)
        method = 'get'.upper()
        request_before_hook(
            resource_path=used_path,
            method=method,
            configuration=self.api_client.configuration,
            path_template='/sms',
            auth_settings=_auth,
            headers=_headers,
        )
    
        response = self.api_client.call_api(
            resource_path=used_path,
            method=method,
            headers=_headers,
            auth_settings=_auth,
            prefix_separator_iterator=prefix_separator_iterator,
            timeout=timeout,
        )
    
        response_for_status = _status_code_to_response.get(str(response.http_response.status))
        if response_for_status:
            api_response = response_for_status.deserialize(
                                                    response,
                                                    self.api_client.configuration,
                                                    skip_deserialization=skip_deserialization
                                                )
        else:
            # If response data is JSON then deserialize for SDK consumer convenience
            is_json = api_client.JSONDetector._content_type_is_json(response.http_response.headers.get('Content-Type', ''))
            api_response = api_client.ApiResponseWithoutDeserialization(
                body=json.loads(response.http_response.data) if is_json else response.http_response.data,
                response=response.http_response,
                round_trip_time=response.round_trip_time,
                status=response.http_response.status,
                headers=response.http_response.headers,
            )
    
        if not 200 <= api_response.status <= 299:
            raise exceptions.ApiException(api_response=api_response)
    
        return api_response


class GetContactInfoRaw(BaseApi):
    # this class is used by api classes that refer to endpoints with operationId fn names

    async def aget_contact_info(
        self,
        phone_number: str,
        retrieve_if_does_not_exists: bool,
        sent_id: typing.Optional[typing.Optional[str]] = None,
        **kwargs,
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._get_contact_info_mapped_args(
            phone_number=phone_number,
            retrieve_if_does_not_exists=retrieve_if_does_not_exists,
            sent_id=sent_id,
        )
        return await self._aget_contact_info_oapg(
            query_params=args.query,
            **kwargs,
        )
    
    def get_contact_info(
        self,
        phone_number: str,
        retrieve_if_does_not_exists: bool,
        sent_id: typing.Optional[typing.Optional[str]] = None,
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        """ Fetches or creates SMS contact information for a given phone number. This endpoint validates the phone number, determines SMS capabilities, and returns detailed formatting information needed for message delivery. Use this before sending messages to ensure proper SMS channel availability. """
        args = self._get_contact_info_mapped_args(
            phone_number=phone_number,
            retrieve_if_does_not_exists=retrieve_if_does_not_exists,
            sent_id=sent_id,
        )
        return self._get_contact_info_oapg(
            query_params=args.query,
        )

class GetContactInfo(BaseApi):

    async def aget_contact_info(
        self,
        phone_number: str,
        retrieve_if_does_not_exists: bool,
        sent_id: typing.Optional[typing.Optional[str]] = None,
        validate: bool = False,
        **kwargs,
    ) -> SMSPayloadPydantic:
        raw_response = await self.raw.aget_contact_info(
            phone_number=phone_number,
            retrieve_if_does_not_exists=retrieve_if_does_not_exists,
            sent_id=sent_id,
            **kwargs,
        )
        if validate:
            return RootModel[SMSPayloadPydantic](raw_response.body).root
        return api_client.construct_model_instance(SMSPayloadPydantic, raw_response.body)
    
    
    def get_contact_info(
        self,
        phone_number: str,
        retrieve_if_does_not_exists: bool,
        sent_id: typing.Optional[typing.Optional[str]] = None,
        validate: bool = False,
    ) -> SMSPayloadPydantic:
        raw_response = self.raw.get_contact_info(
            phone_number=phone_number,
            retrieve_if_does_not_exists=retrieve_if_does_not_exists,
            sent_id=sent_id,
        )
        if validate:
            return RootModel[SMSPayloadPydantic](raw_response.body).root
        return api_client.construct_model_instance(SMSPayloadPydantic, raw_response.body)


class ApiForget(BaseApi):
    # this class is used by api classes that refer to endpoints by path and http method names

    async def aget(
        self,
        phone_number: str,
        retrieve_if_does_not_exists: bool,
        sent_id: typing.Optional[typing.Optional[str]] = None,
        **kwargs,
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._get_contact_info_mapped_args(
            phone_number=phone_number,
            retrieve_if_does_not_exists=retrieve_if_does_not_exists,
            sent_id=sent_id,
        )
        return await self._aget_contact_info_oapg(
            query_params=args.query,
            **kwargs,
        )
    
    def get(
        self,
        phone_number: str,
        retrieve_if_does_not_exists: bool,
        sent_id: typing.Optional[typing.Optional[str]] = None,
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        """ Fetches or creates SMS contact information for a given phone number. This endpoint validates the phone number, determines SMS capabilities, and returns detailed formatting information needed for message delivery. Use this before sending messages to ensure proper SMS channel availability. """
        args = self._get_contact_info_mapped_args(
            phone_number=phone_number,
            retrieve_if_does_not_exists=retrieve_if_does_not_exists,
            sent_id=sent_id,
        )
        return self._get_contact_info_oapg(
            query_params=args.query,
        )

