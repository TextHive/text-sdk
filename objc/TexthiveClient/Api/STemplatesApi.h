#import <Foundation/Foundation.h>
#import "SResponsesTemplateResponse.h"
#import "STemplateCreateRequest.h"
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



@interface STemplatesApi: NSObject <SApi>

extern NSString* kSTemplatesApiErrorDomain;
extern NSInteger kSTemplatesApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Create a new message template
/// Creates a new message template that can be used for sending standardized messages across different channels. Templates ensure consistent messaging and support variable substitution.
///
/// @param templateCreateRequest Template creation details including customer ID and template name
/// 
///  code:200 message:"Template created successfully"
///
/// @return SResponsesTemplateResponse*
-(NSURLSessionTask*) createTemplateWithTemplateCreateRequest: (STemplateCreateRequest*) templateCreateRequest
    completionHandler: (void (^)(SResponsesTemplateResponse* output, NSError* error)) handler;


/// Retrieve all templates for a customer
/// Returns a list of all message templates associated with the specified customer ID. Templates are returned in descending order by creation date.
///
/// @param customerId Unique identifier of the customer
/// 
///  code:200 message:"List of templates retrieved successfully",
///  code:401 message:"Authentication credentials are missing or invalid"
///
/// @return NSArray<SResponsesTemplateResponse>*
-(NSURLSessionTask*) getTemplatesForCustomerWithCustomerId: (NSString*) customerId
    completionHandler: (void (^)(NSArray<SResponsesTemplateResponse>* output, NSError* error)) handler;



@end
