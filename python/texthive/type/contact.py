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


class RequiredContact(TypedDict):
    pass

class OptionalContact(TypedDict, total=False):
    # Unique identifier for the contact
    id: str

    # Contact's phone number in E.164 format
    phoneNumber: str

    # Two-letter ISO country code
    countryCode: str

    # Phone number formatted according to national standards
    nationalFormat: str

    # Comma-separated list of available messaging channels (SMS, WHATSAPP)
    availableChannels: str

    # Preferred messaging channel for this contact
    defaultChannel: str

    # Indicates if the contact's phone number has been verified
    verified: bool

    # Timestamp when the contact was created
    createdAt: datetime

    # Timestamp when the contact was last updated
    updatedAt: datetime

class Contact(RequiredContact, OptionalContact):
    pass
