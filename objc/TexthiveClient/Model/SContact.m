#import "SContact.h"

@implementation SContact

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"phoneNumber": @"phoneNumber", @"countryCode": @"countryCode", @"nationalFormat": @"nationalFormat", @"availableChannels": @"availableChannels", @"defaultChannel": @"defaultChannel", @"verified": @"verified", @"createdAt": @"createdAt", @"updatedAt": @"updatedAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"phoneNumber", @"countryCode", @"nationalFormat", @"availableChannels", @"defaultChannel", @"verified", @"createdAt", @"updatedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
