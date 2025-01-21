# coding: utf-8

"""
    TextHive Core API

    TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

    The version of the OpenAPI document: 1.1.0
    Contact: developers@texthive.khulnasoft.com
    Created by: https://www.texthive.khulnasoft.com/
"""

import unittest
from unittest.mock import patch

import urllib3

import texthive
from texthive.paths.contact_customer_id_id_id import get
from texthive import configuration, schemas, api_client

from .. import ApiTestMixin


class TestContactCustomerIdIdId(ApiTestMixin, unittest.TestCase):
    """
    ContactCustomerIdIdId unit test stubs
        Retrieve a contact by ID
    """

    def setUp(self):
        pass

    def tearDown(self):
        pass

    response_status = 200




if __name__ == '__main__':
    unittest.main()
