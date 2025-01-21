# coding: utf-8

"""
    TextHive Core API

    TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

    The version of the OpenAPI document: 1.1.0
    Contact: developers@texthive.khulnasoft.com
    Created by: https://www.texthive.khulnasoft.com/
"""

import unittest

import os
from pprint import pprint
from texthive import Texthive

class TestSimple(unittest.TestCase):
    def setUp(self):
        pass

    def test_client(self):
        texthive = Texthive(
        
                        api_key = 'YOUR_API_KEY',
        
            access_token = 'YOUR_BEARER_TOKEN'
        )
        self.assertIsNotNone(texthive)

    def tearDown(self):
        pass


if __name__ == "__main__":
    unittest.main()
