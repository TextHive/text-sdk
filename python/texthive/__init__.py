# coding: utf-8

# flake8: noqa

"""
    TextHive Core API

    TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

    The version of the OpenAPI document: 1.1.0
    Contact: developers@texthive.khulnasoft.com
    Created by: https://www.texthive.khulnasoft.com/
"""

__version__ = "1.0.0"

# import ApiClient
from texthive.api_client import ApiClient

# import Configuration
from texthive.configuration import Configuration

# import exceptions
from texthive.exceptions import OpenApiException
from texthive.exceptions import ApiAttributeError
from texthive.exceptions import ApiTypeError
from texthive.exceptions import ApiValueError
from texthive.exceptions import ApiKeyError
from texthive.exceptions import ApiException

from texthive.client import Texthive
