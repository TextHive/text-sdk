import typing_extensions

from texthive.paths import PathValues
from texthive.apis.paths.contact_customer_id_id_id import ContactCustomerIdIdId
from texthive.apis.paths.contact_customer_id_phone_phone_number import ContactCustomerIdPhonePhoneNumber
from texthive.apis.paths.messages import Messages
from texthive.apis.paths.messages_phone_number import MessagesPhoneNumber
from texthive.apis.paths.templates import Templates
from texthive.apis.paths.customers import Customers
from texthive.apis.paths.customers_id import CustomersId
from texthive.apis.paths.sms import Sms
from texthive.apis.paths.whatsapp import Whatsapp

PathToApi = typing_extensions.TypedDict(
    'PathToApi',
    {
        PathValues.CONTACT_CUSTOMER_ID_ID_ID: ContactCustomerIdIdId,
        PathValues.CONTACT_CUSTOMER_ID_PHONE_PHONE_NUMBER: ContactCustomerIdPhonePhoneNumber,
        PathValues.MESSAGES: Messages,
        PathValues.MESSAGES_PHONENUMBER: MessagesPhoneNumber,
        PathValues.TEMPLATES: Templates,
        PathValues.CUSTOMERS: Customers,
        PathValues.CUSTOMERS_ID: CustomersId,
        PathValues.SMS: Sms,
        PathValues.WHATSAPP: Whatsapp,
    }
)

path_to_api = PathToApi(
    {
        PathValues.CONTACT_CUSTOMER_ID_ID_ID: ContactCustomerIdIdId,
        PathValues.CONTACT_CUSTOMER_ID_PHONE_PHONE_NUMBER: ContactCustomerIdPhonePhoneNumber,
        PathValues.MESSAGES: Messages,
        PathValues.MESSAGES_PHONENUMBER: MessagesPhoneNumber,
        PathValues.TEMPLATES: Templates,
        PathValues.CUSTOMERS: Customers,
        PathValues.CUSTOMERS_ID: CustomersId,
        PathValues.SMS: Sms,
        PathValues.WHATSAPP: Whatsapp,
    }
)
