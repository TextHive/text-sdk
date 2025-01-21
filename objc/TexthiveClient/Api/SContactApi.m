#import "SContactApi.h"
#import "SQueryParamCollection.h"
#import "SApiClient.h"
#import "SContact.h"


@interface SContactApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SContactApi

NSString* kSContactApiErrorDomain = @"SContactApiErrorDomain";
NSInteger kSContactApiMissingParamErrorCode = 234513;

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
/// Retrieve a contact by ID
/// Fetches detailed contact information including available messaging channels and verification status. Use this endpoint when you need to look up a specific contact using their unique identifier.
///  @param customerId Unique identifier of the customer account 
///
///  @param _id Unique identifier of the contact 
///
///  @returns SContact*
///
-(NSURLSessionTask*) getContactByIdWithCustomerId: (NSString*) customerId
    _id: (NSString*) _id
    completionHandler: (void (^)(SContact* output, NSError* error)) handler {
    // verify the required parameter 'customerId' is set
    if (customerId == nil) {
        NSParameterAssert(customerId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"customerId"] };
            NSError* error = [NSError errorWithDomain:kSContactApiErrorDomain code:kSContactApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kSContactApiErrorDomain code:kSContactApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/contact/{customerId}/id/{id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (customerId != nil) {
        pathParams[@"customerId"] = customerId;
    }
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"SContact*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SContact*)data, error);
                                }
                            }];
}

///
/// Retrieve a contact by phone number
/// Looks up contact information using a phone number. This endpoint is useful when you need to find a contact's details but only have their phone number. It returns the same detailed information as the ID-based lookup.
///  @param customerId Unique identifier of the customer account 
///
///  @param phoneNumber Phone number in E.164 format (e.g., +1234567890) 
///
///  @returns SContact*
///
-(NSURLSessionTask*) getContactByPhoneWithCustomerId: (NSString*) customerId
    phoneNumber: (NSString*) phoneNumber
    completionHandler: (void (^)(SContact* output, NSError* error)) handler {
    // verify the required parameter 'customerId' is set
    if (customerId == nil) {
        NSParameterAssert(customerId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"customerId"] };
            NSError* error = [NSError errorWithDomain:kSContactApiErrorDomain code:kSContactApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'phoneNumber' is set
    if (phoneNumber == nil) {
        NSParameterAssert(phoneNumber);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"phoneNumber"] };
            NSError* error = [NSError errorWithDomain:kSContactApiErrorDomain code:kSContactApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/contact/{customerId}/phone/{phoneNumber}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (customerId != nil) {
        pathParams[@"customerId"] = customerId;
    }
    if (phoneNumber != nil) {
        pathParams[@"phoneNumber"] = phoneNumber;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"SContact*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SContact*)data, error);
                                }
                            }];
}



@end
