import typing_extensions

from texthive.apis.tags import TagValues
from texthive.apis.tags.customers_api import CustomersApi
from texthive.apis.tags.contact_api import ContactApi
from texthive.apis.tags.messages_api import MessagesApi
from texthive.apis.tags.templates_api import TemplatesApi
from texthive.apis.tags.sms_api import SMSApi
from texthive.apis.tags.whatsapp_api import WhatsappApi

TagToApi = typing_extensions.TypedDict(
    'TagToApi',
    {
        TagValues.CUSTOMERS: CustomersApi,
        TagValues.CONTACT: ContactApi,
        TagValues.MESSAGES: MessagesApi,
        TagValues.TEMPLATES: TemplatesApi,
        TagValues.SMS: SMSApi,
        TagValues.WHATSAPP: WhatsappApi,
    }
)

tag_to_api = TagToApi(
    {
        TagValues.CUSTOMERS: CustomersApi,
        TagValues.CONTACT: ContactApi,
        TagValues.MESSAGES: MessagesApi,
        TagValues.TEMPLATES: TemplatesApi,
        TagValues.SMS: SMSApi,
        TagValues.WHATSAPP: WhatsappApi,
    }
)
