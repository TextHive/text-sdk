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


class ResponsesTemplateResponse(BaseModel):
    # Unique identifier of the template
    id: typing.Optional[str] = Field(None, alias='id')

    # Customer ID associated with the template
    customer_id: typing.Optional[str] = Field(None, alias='customerId')

    # Template name
    name: typing.Optional[str] = Field(None, alias='name')

    # Category of the template (e.g., transactional, marketing)
    category: typing.Optional[Literal["transactional", "marketing", "alert"]] = Field(None, alias='category')

    # Template content with variable placeholders
    raw_body: typing.Optional[str] = Field(None, alias='rawBody')

    # Associated WhatsApp template name if applicable
    whatsapp_template_name: typing.Optional[str] = Field(None, alias='whatsappTemplateName')

    # Approval status of WhatsApp template
    whatsapp_template_status: typing.Optional[Literal["pending", "approved", "rejected"]] = Field(None, alias='whatsappTemplateStatus')

    # Template creation timestamp
    created_at: typing.Optional[datetime] = Field(None, alias='createdAt')

    # Last template update timestamp
    updated_at: typing.Optional[datetime] = Field(None, alias='updatedAt')

    model_config = ConfigDict(
        protected_namespaces=(),
        arbitrary_types_allowed=True
    )
