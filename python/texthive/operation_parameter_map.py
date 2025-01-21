operation_parameter_map = {
    '/contact/{customerId}/id/{id}-GET': {
        'parameters': [
            {
                'name': 'customerId'
            },
            {
                'name': 'id'
            },
        ]
    },
    '/contact/{customerId}/phone/{phoneNumber}-GET': {
        'parameters': [
            {
                'name': 'customerId'
            },
            {
                'name': 'phoneNumber'
            },
        ]
    },
    '/customers-POST': {
        'parameters': [
        ]
    },
    '/customers/{id}-DELETE': {
        'parameters': [
            {
                'name': 'id'
            },
        ]
    },
    '/customers-GET': {
        'parameters': [
            {
                'name': 'page'
            },
            {
                'name': 'pageSize'
            },
        ]
    },
    '/customers/{id}-GET': {
        'parameters': [
            {
                'name': 'id'
            },
        ]
    },
    '/customers/{id}-PUT': {
        'parameters': [
            {
                'name': 'id'
            },
            {
                'name': 'name'
            },
            {
                'name': 'sendingPhoneNumber'
            },
            {
                'name': 'smsMessagingProfileId'
            },
            {
                'name': 'smsBearerToken'
            },
        ]
    },
    '/messages-POST': {
        'parameters': [
            {
                'name': 'customerId'
            },
            {
                'name': 'contactId'
            },
            {
                'name': 'templateId'
            },
        ]
    },
    '/messages/phone-number-POST': {
        'parameters': [
            {
                'name': 'customerId'
            },
            {
                'name': 'phoneNumber'
            },
            {
                'name': 'templateId'
            },
        ]
    },
    '/sms-GET': {
        'parameters': [
            {
                'name': 'phoneNumber'
            },
            {
                'name': 'retrieveIfDoesNotExists'
            },
            {
                'name': 'sentId'
            },
        ]
    },
    '/templates-POST': {
        'parameters': [
            {
                'name': 'customerId'
            },
            {
                'name': 'name'
            },
        ]
    },
    '/templates-GET': {
        'parameters': [
            {
                'name': 'customerId'
            },
        ]
    },
    '/whatsapp-GET': {
        'parameters': [
            {
                'name': 'phoneNumber'
            },
            {
                'name': 'retrieveIfDoesNotExists'
            },
            {
                'name': 'sentId'
            },
        ]
    },
};