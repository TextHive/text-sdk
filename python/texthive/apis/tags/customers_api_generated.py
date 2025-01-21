# coding: utf-8
"""
    TextHive Core API

    TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

    The version of the OpenAPI document: 1.1.0
    Contact: developers@texthive.khulnasoft.com
    Created by: https://www.texthive.khulnasoft.com/
"""

from texthive.paths.customers.post import CreateCustomer
from texthive.paths.customers_id.delete import DeleteCustomer
from texthive.paths.customers.get import GetAllCustomers
from texthive.paths.customers_id.get import GetCustomerById
from texthive.paths.customers_id.put import UpdateCustomer
from texthive.apis.tags.customers_api_raw import CustomersApiRaw


class CustomersApiGenerated(
    CreateCustomer,
    DeleteCustomer,
    GetAllCustomers,
    GetCustomerById,
    UpdateCustomer,
):
    """NOTE:
    This class is auto generated by Konfig (https://konfigthis.com)
    """
    raw: CustomersApiRaw

    def __init__(self, api_client=None):
        super().__init__(api_client)
        self.raw = CustomersApiRaw(api_client)
