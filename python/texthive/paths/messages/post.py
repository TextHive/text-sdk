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

from texthive.model.send_message_to_contact_request import SendMessageToContactRequest as SendMessageToContactRequestSchema
from texthive.model.messages_send_message_to_contact400_response import MessagesSendMessageToContact400Response as MessagesSendMessageToContact400ResponseSchema
from texthive.model.messages_send_message_to_contact_response import MessagesSendMessageToContactResponse as MessagesSendMessageToContactResponseSchema

from texthive.type.messages_send_message_to_contact400_response import MessagesSendMessageToContact400Response
from texthive.type.messages_send_message_to_contact_response import MessagesSendMessageToContactResponse
from texthive.type.send_message_to_contact_request import SendMessageToContactRequest

from ...api_client import Dictionary
from texthive.pydantic.send_message_to_contact_request import SendMessageToContactRequest as SendMessageToContactRequestPydantic
from texthive.pydantic.messages_send_message_to_contact_response import MessagesSendMessageToContactResponse as MessagesSendMessageToContactResponsePydantic
from texthive.pydantic.messages_send_message_to_contact400_response import MessagesSendMessageToContact400Response as MessagesSendMessageToContact400ResponsePydantic

from . import path

# body param
SchemaForRequestBodyApplicationJson = SendMessageToContactRequestSchema


request_body_send_message_to_contact_request = api_client.RequestBody(
    content={
        'application/json': api_client.MediaType(
            schema=SchemaForRequestBodyApplicationJson),
    },
    required=True,
)
_auth = [
    'ApiKey',
    'BearerAuth',
]
SchemaFor200ResponseBodyApplicationJson = MessagesSendMessageToContactResponseSchema


@dataclass
class ApiResponseFor200(api_client.ApiResponse):
    body: MessagesSendMessageToContactResponse


@dataclass
class ApiResponseFor200Async(api_client.AsyncApiResponse):
    body: MessagesSendMessageToContactResponse


_response_for_200 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor200,
    response_cls_async=ApiResponseFor200Async,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor200ResponseBodyApplicationJson),
    },
)
SchemaFor400ResponseBodyApplicationJson = MessagesSendMessageToContact400ResponseSchema


@dataclass
class ApiResponseFor400(api_client.ApiResponse):
    body: MessagesSendMessageToContact400Response


@dataclass
class ApiResponseFor400Async(api_client.AsyncApiResponse):
    body: MessagesSendMessageToContact400Response


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


@dataclass
class ApiResponseFor404(api_client.ApiResponse):
    body: schemas.Unset = schemas.unset


@dataclass
class ApiResponseFor404Async(api_client.AsyncApiResponse):
    body: schemas.Unset = schemas.unset


_response_for_404 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor404,
    response_cls_async=ApiResponseFor404Async,
)
_status_code_to_response = {
    '200': _response_for_200,
    '400': _response_for_400,
    '401': _response_for_401,
    '404': _response_for_404,
}
_all_accept_content_types = (
    'application/json',
)


class BaseApi(api_client.Api):

    def _send_message_to_contact_mapped_args(
        self,
        customer_id: str,
        contact_id: str,
        template_id: str,
    ) -> api_client.MappedArgs:
        args: api_client.MappedArgs = api_client.MappedArgs()
        _body = {}
        if customer_id is not None:
            _body["customerId"] = customer_id
        if contact_id is not None:
            _body["contactId"] = contact_id
        if template_id is not None:
            _body["templateId"] = template_id
        args.body = _body
        return args

    async def _asend_message_to_contact_oapg(
        self,
        body: typing.Any = None,
        skip_deserialization: bool = True,
        timeout: typing.Optional[typing.Union[float, typing.Tuple]] = None,
        accept_content_types: typing.Tuple[str] = _all_accept_content_types,
        content_type: str = 'application/json',
        stream: bool = False,
        **kwargs,
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        """
        Send a message to a contact using a template
        :param skip_deserialization: If true then api_response.response will be set but
            api_response.body and api_response.headers will not be deserialized into schema
            class instances
        """
        used_path = path.value
    
        _headers = HTTPHeaderDict()
        # TODO add cookie handling
        if accept_content_types:
            for accept_content_type in accept_content_types:
                _headers.add('Accept', accept_content_type)
        method = 'post'.upper()
        _headers.add('Content-Type', content_type)
    
        if body is schemas.unset:
            raise exceptions.ApiValueError(
                'The required body parameter has an invalid value of: unset. Set a valid value instead')
        _fields = None
        _body = None
        request_before_hook(
            resource_path=used_path,
            method=method,
            configuration=self.api_client.configuration,
            path_template='/messages',
            body=body,
            auth_settings=_auth,
            headers=_headers,
        )
        serialized_data = request_body_send_message_to_contact_request.serialize(body, content_type)
        if 'fields' in serialized_data:
            _fields = serialized_data['fields']
        elif 'body' in serialized_data:
            _body = serialized_data['body']
    
        response = await self.api_client.async_call_api(
            resource_path=used_path,
            method=method,
            headers=_headers,
            fields=_fields,
            serialized_body=_body,
            body=body,
            auth_settings=_auth,
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


    def _send_message_to_contact_oapg(
        self,
        body: typing.Any = None,
        skip_deserialization: bool = True,
        timeout: typing.Optional[typing.Union[float, typing.Tuple]] = None,
        accept_content_types: typing.Tuple[str] = _all_accept_content_types,
        content_type: str = 'application/json',
        stream: bool = False,
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        """
        Send a message to a contact using a template
        :param skip_deserialization: If true then api_response.response will be set but
            api_response.body and api_response.headers will not be deserialized into schema
            class instances
        """
        used_path = path.value
    
        _headers = HTTPHeaderDict()
        # TODO add cookie handling
        if accept_content_types:
            for accept_content_type in accept_content_types:
                _headers.add('Accept', accept_content_type)
        method = 'post'.upper()
        _headers.add('Content-Type', content_type)
    
        if body is schemas.unset:
            raise exceptions.ApiValueError(
                'The required body parameter has an invalid value of: unset. Set a valid value instead')
        _fields = None
        _body = None
        request_before_hook(
            resource_path=used_path,
            method=method,
            configuration=self.api_client.configuration,
            path_template='/messages',
            body=body,
            auth_settings=_auth,
            headers=_headers,
        )
        serialized_data = request_body_send_message_to_contact_request.serialize(body, content_type)
        if 'fields' in serialized_data:
            _fields = serialized_data['fields']
        elif 'body' in serialized_data:
            _body = serialized_data['body']
    
        response = self.api_client.call_api(
            resource_path=used_path,
            method=method,
            headers=_headers,
            fields=_fields,
            serialized_body=_body,
            body=body,
            auth_settings=_auth,
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


class SendMessageToContactRaw(BaseApi):
    # this class is used by api classes that refer to endpoints with operationId fn names

    async def asend_message_to_contact(
        self,
        customer_id: str,
        contact_id: str,
        template_id: str,
        **kwargs,
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._send_message_to_contact_mapped_args(
            customer_id=customer_id,
            contact_id=contact_id,
            template_id=template_id,
        )
        return await self._asend_message_to_contact_oapg(
            body=args.body,
            **kwargs,
        )
    
    def send_message_to_contact(
        self,
        customer_id: str,
        contact_id: str,
        template_id: str,
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        """ Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact's preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels. """
        args = self._send_message_to_contact_mapped_args(
            customer_id=customer_id,
            contact_id=contact_id,
            template_id=template_id,
        )
        return self._send_message_to_contact_oapg(
            body=args.body,
        )

class SendMessageToContact(BaseApi):

    async def asend_message_to_contact(
        self,
        customer_id: str,
        contact_id: str,
        template_id: str,
        validate: bool = False,
        **kwargs,
    ) -> MessagesSendMessageToContactResponsePydantic:
        raw_response = await self.raw.asend_message_to_contact(
            customer_id=customer_id,
            contact_id=contact_id,
            template_id=template_id,
            **kwargs,
        )
        if validate:
            return MessagesSendMessageToContactResponsePydantic(**raw_response.body)
        return api_client.construct_model_instance(MessagesSendMessageToContactResponsePydantic, raw_response.body)
    
    
    def send_message_to_contact(
        self,
        customer_id: str,
        contact_id: str,
        template_id: str,
        validate: bool = False,
    ) -> MessagesSendMessageToContactResponsePydantic:
        raw_response = self.raw.send_message_to_contact(
            customer_id=customer_id,
            contact_id=contact_id,
            template_id=template_id,
        )
        if validate:
            return MessagesSendMessageToContactResponsePydantic(**raw_response.body)
        return api_client.construct_model_instance(MessagesSendMessageToContactResponsePydantic, raw_response.body)


class ApiForpost(BaseApi):
    # this class is used by api classes that refer to endpoints by path and http method names

    async def apost(
        self,
        customer_id: str,
        contact_id: str,
        template_id: str,
        **kwargs,
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._send_message_to_contact_mapped_args(
            customer_id=customer_id,
            contact_id=contact_id,
            template_id=template_id,
        )
        return await self._asend_message_to_contact_oapg(
            body=args.body,
            **kwargs,
        )
    
    def post(
        self,
        customer_id: str,
        contact_id: str,
        template_id: str,
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        """ Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact's preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels. """
        args = self._send_message_to_contact_mapped_args(
            customer_id=customer_id,
            contact_id=contact_id,
            template_id=template_id,
        )
        return self._send_message_to_contact_oapg(
            body=args.body,
        )

