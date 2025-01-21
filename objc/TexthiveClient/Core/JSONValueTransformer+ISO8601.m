#import <ISO8601/NSDate+ISO8601.h>
#import "JSONValueTransformer+ISO8601.h"
#import "SSanitizer.h"

@implementation JSONValueTransformer (ISO8601)

- (NSDate *) NSDateFromNSString:(NSString *)string
{
    return [NSDate dateWithISO8601String:string];
}

- (NSString *)JSONObjectFromNSDate:(NSDate *)date
{
    return [SSanitizer dateToString:date];
}

@end
