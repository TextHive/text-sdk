# coding: utf-8

"""
    TextHive Core API

    TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

    The version of the OpenAPI document: 1.1.0
    Contact: developers@texthive.khulnasoft.com
    Created by: https://www.texthive.khulnasoft.com/
"""

from datetime import datetime, date
import typing
from enum import Enum
from typing_extensions import TypedDict, Literal, TYPE_CHECKING
from pydantic import BaseModel, Field, RootModel, ConfigDict


class Customer(BaseModel):
    # Unique identifier for the customer
    id: typing.Optional[str] = Field(None, alias='id')

    # Name of the customer organization
    name: typing.Optional[str] = Field(None, alias='name')

    # Primary phone number used for sending messages
    sending_phone_number: typing.Optional[str] = Field(None, alias='sendingPhoneNumber')

    # Identifier for the SMS messaging profile
    sms_messaging_profile_id: typing.Optional[str] = Field(None, alias='smsMessagingProfileId')

    # Bearer token for authenticating SMS requests
    sms_bearer_token: typing.Optional[str] = Field(None, alias='smsBearerToken')

    # Timestamp when the customer account was created
    created_at: typing.Optional[datetime] = Field(None, alias='createdAt')

    # Timestamp when the customer account was last updated
    updated_at: typing.Optional[datetime] = Field(None, alias='updatedAt')

    model_config = ConfigDict(
        protected_namespaces=(),
        arbitrary_types_allowed=True
    )
