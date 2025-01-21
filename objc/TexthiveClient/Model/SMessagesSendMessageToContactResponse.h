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





@protocol SMessagesSendMessageToContactResponse
@end

@interface SMessagesSendMessageToContactResponse : SObject

/* Unique identifier for tracking the message [optional]
 */
@property(nonatomic) NSString* messageId;
/* Current status of the message [optional]
 */
@property(nonatomic) NSString* status;
/* Selected delivery channel [optional]
 */
@property(nonatomic) NSString* channel;

@end
