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





@protocol SWhatsAppPayloadAllOf
@end

@interface SWhatsAppPayloadAllOf : SObject

/* Unique WhatsApp identifier for the contact [optional]
 */
@property(nonatomic) NSString* whatsappId;
/* ISO country code of the phone number [optional]
 */
@property(nonatomic) NSString* countryCode;
/* Type of phone number (MOBILE, LANDLINE, etc) [optional]
 */
@property(nonatomic) NSString* numberType;
/* URL to the contact's WhatsApp profile picture [optional]
 */
@property(nonatomic) NSString* profilePicture;
/* Indicates if the number belongs to a WhatsApp Business account [optional]
 */
@property(nonatomic) NSNumber* isBusiness;
/* Indicates if the WhatsApp account is invalid or deactivated [optional]
 */
@property(nonatomic) NSNumber* invalidRecord;

@end
