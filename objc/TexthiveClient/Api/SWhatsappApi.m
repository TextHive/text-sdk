#import "SWhatsappApi.h"
#import "SQueryParamCollection.h"
#import "SApiClient.h"
#import "SWhatsAppPayload.h"
#import "SWhatsappGetWhatsappContactResponse.h"


@interface SWhatsappApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWhatsappApi

NSString* kSWhatsappApiErrorDomain = @"SWhatsappApiErrorDomain";
NSInteger kSWhatsappApiMissingParamErrorCode = 234513;

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
/// Retrieve WhatsApp contact information
/// Fetches or creates WhatsApp contact information for a given phone number. This endpoint validates WhatsApp availability and returns detailed contact metadata including business account status and profile information.
///  @param phoneNumber Phone number in international format (E.164) 
///
///  @param retrieveIfDoesNotExists Whether to create a new contact if one doesn't exist 
///
///  @param sentId Optional Sent platform identifier for tracking (optional)
///
///  @returns SWhatsAppPayload*
///
-(NSURLSessionTask*) getWhatsappContactWithPhoneNumber: (NSString*) phoneNumber
    retrieveIfDoesNotExists: (NSNumber*) retrieveIfDoesNotExists
    sentId: (NSString*) sentId
    completionHandler: (void (^)(SWhatsAppPayload* output, NSError* error)) handler {
    // verify the required parameter 'phoneNumber' is set
    if (phoneNumber == nil) {
        NSParameterAssert(phoneNumber);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"phoneNumber"] };
            NSError* error = [NSError errorWithDomain:kSWhatsappApiErrorDomain code:kSWhatsappApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'retrieveIfDoesNotExists' is set
    if (retrieveIfDoesNotExists == nil) {
        NSParameterAssert(retrieveIfDoesNotExists);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"retrieveIfDoesNotExists"] };
            NSError* error = [NSError errorWithDomain:kSWhatsappApiErrorDomain code:kSWhatsappApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/whatsapp"];

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
                              responseType: @"SWhatsAppPayload*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWhatsAppPayload*)data, error);
                                }
                            }];
}



@end
