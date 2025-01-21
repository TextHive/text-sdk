#import "SWhatsAppPayload.h"

@implementation SWhatsAppPayload

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"sentId": @"sentId", @"phoneNumber": @"phoneNumber", @"whatsappId": @"whatsappId", @"countryCode": @"countryCode", @"numberType": @"numberType", @"profilePicture": @"profilePicture", @"isBusiness": @"isBusiness", @"invalidRecord": @"invalidRecord" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"sentId", @"phoneNumber", @"whatsappId", @"countryCode", @"numberType", @"profilePicture", @"isBusiness", @"invalidRecord"];
  return [optionalProperties containsObject:propertyName];
}

@end
