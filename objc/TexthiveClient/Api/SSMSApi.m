#import "SSMSApi.h"
#import "SQueryParamCollection.h"
#import "SApiClient.h"
#import "SSMSPayload.h"
#import "SSmsGetContactInfoResponse.h"


@interface SSMSApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SSMSApi

NSString* kSSMSApiErrorDomain = @"SSMSApiErrorDomain";
NSInteger kSSMSApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[SApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(SApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Retrieve SMS contact information and capabilities
/// Fetches or creates SMS contact information for a given phone number. This endpoint validates the phone number, determines SMS capabilities, and returns detailed formatting information needed for message delivery. Use this before sending messages to ensure proper SMS channel availability.
///  @param phoneNumber Target phone number in E.164 format (e.g., +1234567890) 
///
///  @param retrieveIfDoesNotExists When true, creates a new SMS contact if one doesn't exist 
///
///  @param sentId Optional Sent platform identifier for existing contacts (optional)
///
///  @returns SSMSPayload*
///
-(NSURLSessionTask*) getContactInfoWithPhoneNumber: (NSString*) phoneNumber
    retrieveIfDoesNotExists: (NSNumber*) retrieveIfDoesNotExists
    sentId: (NSString*) sentId
    completionHandler: (void (^)(SSMSPayload* output, NSError* error)) handler {
    // verify the required parameter 'phoneNumber' is set
    if (phoneNumber == nil) {
        NSParameterAssert(phoneNumber);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"phoneNumber"] };
            NSError* error = [NSError errorWithDomain:kSSMSApiErrorDomain code:kSSMSApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'retrieveIfDoesNotExists' is set
    if (retrieveIfDoesNotExists == nil) {
        NSParameterAssert(retrieveIfDoesNotExists);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"retrieveIfDoesNotExists"] };
            NSError* error = [NSError errorWithDomain:kSSMSApiErrorDomain code:kSSMSApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/sms"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (phoneNumber != nil) {
        queryParams[@"phoneNumber"] = phoneNumber;
    }
    if (retrieveIfDoesNotExists != nil) {
        queryParams[@"retrieveIfDoesNotExists"] = [retrieveIfDoesNotExists isEqual:@(YES)] ? @"true" : @"false";
    }
    if (sentId != nil) {
        queryParams[@"sentId"] = sentId;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKey", @"BearerAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SSMSPayload*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SSMSPayload*)data, error);
                                }
                            }];
}



@end
