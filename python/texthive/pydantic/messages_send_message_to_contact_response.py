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


class MessagesSendMessageToContactResponse(BaseModel):
    # Unique identifier for tracking the message
    message_id: typing.Optional[str] = Field(None, alias='messageId')

    # Current status of the message
    status: typing.Optional[Literal["queued", "sending", "delivered"]] = Field(None, alias='status')

    # Selected delivery channel
    channel: typing.Optional[Literal["sms", "whatsapp"]] = Field(None, alias='channel')

    model_config = ConfigDict(
        protected_namespaces=(),
        arbitrary_types_allowed=True
    )
