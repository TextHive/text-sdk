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


class RequiredCustomer(TypedDict):
    pass

class OptionalCustomer(TypedDict, total=False):
    # Unique identifier for the customer
    id: str

    # Name of the customer organization
    name: str

    # Primary phone number used for sending messages
    sendingPhoneNumber: str

    # Identifier for the SMS messaging profile
    smsMessagingProfileId: str

    # Bearer token for authenticating SMS requests
    smsBearerToken: str

    # Timestamp when the customer account was created
    createdAt: datetime

    # Timestamp when the customer account was last updated
    updatedAt: datetime

class Customer(RequiredCustomer, OptionalCustomer):
    pass
