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


class RequiredCustomersUpdateCustomerRequest(TypedDict):
    pass

class OptionalCustomersUpdateCustomerRequest(TypedDict, total=False):
    # Updated name of the customer organization
    name: str

    # Updated primary phone number for sending messages
    sendingPhoneNumber: str

    # Updated SMS messaging profile identifier
    smsMessagingProfileId: str

    # Updated bearer token for SMS authentication
    smsBearerToken: str

class CustomersUpdateCustomerRequest(RequiredCustomersUpdateCustomerRequest, OptionalCustomersUpdateCustomerRequest):
    pass
