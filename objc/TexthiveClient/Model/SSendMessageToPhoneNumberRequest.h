#import <Foundation/Foundation.h>
#import "SObject.h"

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





@protocol SSendMessageToPhoneNumberRequest
@end

@interface SSendMessageToPhoneNumberRequest : SObject

/* Unique identifier of the customer 
 */
@property(nonatomic) NSString* customerId;
/* Phone number in E.164 format 
 */
@property(nonatomic) NSString* phoneNumber;
/* Unique identifier of the message template 
 */
@property(nonatomic) NSString* templateId;

@end
