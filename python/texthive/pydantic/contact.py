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


class Contact(BaseModel):
    # Unique identifier for the contact
    id: typing.Optional[str] = Field(None, alias='id')

    # Contact's phone number in E.164 format
    phone_number: typing.Optional[str] = Field(None, alias='phoneNumber')

    # Two-letter ISO country code
    country_code: typing.Optional[str] = Field(None, alias='countryCode')

    # Phone number formatted according to national standards
    national_format: typing.Optional[str] = Field(None, alias='nationalFormat')

    # Comma-separated list of available messaging channels (SMS, WHATSAPP)
    available_channels: typing.Optional[str] = Field(None, alias='availableChannels')

    # Preferred messaging channel for this contact
    default_channel: typing.Optional[str] = Field(None, alias='defaultChannel')

    # Indicates if the contact's phone number has been verified
    verified: typing.Optional[bool] = Field(None, alias='verified')

    # Timestamp when the contact was created
    created_at: typing.Optional[datetime] = Field(None, alias='createdAt')

    # Timestamp when the contact was last updated
    updated_at: typing.Optional[datetime] = Field(None, alias='updatedAt')

    model_config = ConfigDict(
        protected_namespaces=(),
        arbitrary_types_allowed=True
    )
