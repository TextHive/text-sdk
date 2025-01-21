# do not import all endpoints into this module because that uses a lot of memory and stack frames
# if you need the ability to import all endpoints from this module, import them with
# from texthive.apis.path_to_api import path_to_api

import enum


class PathValues(str, enum.Enum):
    CONTACT_CUSTOMER_ID_ID_ID = "/contact/{customerId}/id/{id}"
    CONTACT_CUSTOMER_ID_PHONE_PHONE_NUMBER = "/contact/{customerId}/phone/{phoneNumber}"
    MESSAGES = "/messages"
    MESSAGES_PHONENUMBER = "/messages/phone-number"
    TEMPLATES = "/templates"
    CUSTOMERS = "/customers"
    CUSTOMERS_ID = "/customers/{id}"
    SMS = "/sms"
    WHATSAPP = "/whatsapp"
