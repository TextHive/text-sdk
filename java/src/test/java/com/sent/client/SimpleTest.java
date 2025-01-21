package com.texthive.client;

import static org.junit.Assert.assertNotNull;

import org.junit.jupiter.api.Test;

public class SimpleTest {
    final String MOCK_SERVER_URL = "http://localhost:4010";

    @Test
    public void initClientTest() {
        Configuration configuration = new Configuration();
        configuration.host = "http://localhost";
        
        configuration.apiKey  = "YOUR API KEY";
        
        // Configure HTTP bearer authorization: BearerAuth
        configuration.token = "BEARER TOKEN";
        Texthive client = new Texthive(configuration);
        assertNotNull(client);
    }
}
