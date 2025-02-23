#import <Foundation/Foundation.h>
#import "SMessagesSendMessageToContact400Response.h"
#import "SMessagesSendMessageToContactResponse.h"
#import "SMessagesSendMessageToPhoneNumberResponse.h"
#import "SSendMessageToContactRequest.h"
#import "SSendMessageToPhoneNumberRequest.h"
#import "SApi.h"

/**
* TextHive Core API
* TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.
*
* The version of the OpenAPI document: 1.1.0
* Contact: developers@texthive.khulnasoft.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface SMessagesApi: NSObject <SApi>

extern NSString* kSMessagesApiErrorDomain;
extern NSInteger kSMessagesApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Send a message to a contact using a template
/// Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact's preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.
///
/// @param sendMessageToContactRequest Message details including customer ID, contact ID, and template ID
/// 
///  code:200 message:"Message successfully queued for delivery",
///  code:400 message:"Invalid request parameters",
///  code:401 message:"Unauthorized - Invalid or missing API key",
///  code:404 message:"Contact, template, or customer not found"
///
/// @return SMessagesSendMessageToContactResponse*
-(NSURLSessionTask*) sendMessageToContactWithSendMessageToContactRequest: (SSendMessageToContactRequest*) sendMessageToContactRequest
    completionHandler: (void (^)(SMessagesSendMessageToContactResponse* output, NSError* error)) handler;


/// Send a message to a phone number using a template
/// Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn't exist.
///
/// @param sendMessageToPhoneNumberRequest Message details including customer ID, phone number, and template ID
/// 
///  code:200 message:"Message successfully queued for delivery",
///  code:400 message:"Invalid phone number or request parameters",
///  code:401 message:"Unauthorized - Invalid or missing API key",
///  code:404 message:"Template or customer not found"
///
/// @return SMessagesSendMessageToPhoneNumberResponse*
-(NSURLSessionTask*) sendMessageToPhoneNumberWithSendMessageToPhoneNumberRequest: (SSendMessageToPhoneNumberRequest*) sendMessageToPhoneNumberRequest
    completionHandler: (void (^)(SMessagesSendMessageToPhoneNumberResponse* output, NSError* error)) handler;



@end
