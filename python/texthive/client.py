# coding: utf-8
"""
    TextHive Core API

    TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

    The version of the OpenAPI document: 1.1.0
    Contact: developers@texthive.khulnasoft.com
    Created by: https://www.texthive.khulnasoft.com/
"""

import typing
import inspect
from datetime import date, datetime
from texthive.client_custom import ClientCustom
from texthive.configuration import Configuration
from texthive.api_client import ApiClient
from texthive.type_util import copy_signature
from texthive.apis.tags.contact_api import ContactApi
from texthive.apis.tags.customers_api import CustomersApi
from texthive.apis.tags.messages_api import MessagesApi
from texthive.apis.tags.sms_api import SMSApi
from texthive.apis.tags.templates_api import TemplatesApi
from texthive.apis.tags.whatsapp_api import WhatsappApi



class Texthive(ClientCustom):

    def __init__(self, configuration: typing.Union[Configuration, None] = None, **kwargs):
        super().__init__(configuration, **kwargs)
        if (len(kwargs) > 0):
            configuration = Configuration(**kwargs)
        if (configuration is None):
            raise Exception("configuration is required")
        api_client = ApiClient(configuration)
        self.contact: ContactApi = ContactApi(api_client)
        self.customers: CustomersApi = CustomersApi(api_client)
        self.messages: MessagesApi = MessagesApi(api_client)
        self.sms: SMSApi = SMSApi(api_client)
        self.templates: TemplatesApi = TemplatesApi(api_client)
        self.whatsapp: WhatsappApi = WhatsappApi(api_client)
