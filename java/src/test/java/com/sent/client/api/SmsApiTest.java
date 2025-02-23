/*
 * TextHive Core API
 * TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.
 *
 * The version of the OpenAPI document: 1.1.0
 * Contact: developers@texthive.khulnasoft.com
 *
 * NOTE: This class is auto generated by Konfig (https://konfigthis.com).
 * Do not edit the class manually.
 */


package com.texthive.client.api;

import com.texthive.client.ApiException;
import com.texthive.client.ApiClient;
import com.texthive.client.ApiException;
import com.texthive.client.Configuration;
import com.texthive.client.model.SMSPayload;
import java.util.UUID;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.BeforeAll;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for SmsApi
 */
@Disabled
public class SmsApiTest {

    private static SmsApi api;

    
    @BeforeAll
    public static void beforeClass() {
        ApiClient apiClient = Configuration.getDefaultApiClient();
        api = new SmsApi(apiClient);
    }

    /**
     * Retrieve SMS contact information and capabilities
     *
     * Fetches or creates SMS contact information for a given phone number. This endpoint validates the phone number, determines SMS capabilities, and returns detailed formatting information needed for message delivery. Use this before sending messages to ensure proper SMS channel availability.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getContactInfoTest() throws ApiException {
        String phoneNumber = null;
        Boolean retrieveIfDoesNotExists = null;
        UUID sentId = null;
        SMSPayload response = api.getContactInfo(phoneNumber, retrieveIfDoesNotExists)
                .sentId(sentId)
                .execute();
        // TODO: test validations
    }

}
