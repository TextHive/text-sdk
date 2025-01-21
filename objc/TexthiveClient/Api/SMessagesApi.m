#import "SMessagesApi.h"
#import "SQueryParamCollection.h"
#import "SApiClient.h"
#import "SMessagesSendMessageToContact400Response.h"
#import "SMessagesSendMessageToContactResponse.h"
#import "SMessagesSendMessageToPhoneNumberResponse.h"
#import "SSendMessageToContactRequest.h"
#import "SSendMessageToPhoneNumberRequest.h"


@interface SMessagesApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SMessagesApi

NSString* kSMessagesApiErrorDomain = @"SMessagesApiErrorDomain";
NSInteger kSMessagesApiMissingParamErrorCode = 234513;

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
/// Send a message to a contact using a template
/// Sends a templated message to a specific contact. The platform automatically determines the optimal channel (SMS or WhatsApp) based on the contact's preferences and availability. Messages are sent using pre-defined templates to ensure consistent formatting and compliance across channels.
///  @param sendMessageToContactRequest Message details including customer ID, contact ID, and template ID 
///
///  @returns SMessagesSendMessageToContactResponse*
///
-(NSURLSessionTask*) sendMessageToContactWithSendMessageToContactRequest: (SSendMessageToContactRequest*) sendMessageToContactRequest
    completionHandler: (void (^)(SMessagesSendMessageToContactResponse* output, NSError* error)) handler {
    // verify the required parameter 'sendMessageToContactRequest' is set
    if (sendMessageToContactRequest == nil) {
        NSParameterAssert(sendMessageToContactRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sendMessageToContactRequest"] };
            NSError* error = [NSError errorWithDomain:kSMessagesApiErrorDomain code:kSMessagesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/messages"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKey", @"BearerAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = sendMessageToContactRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SMessagesSendMessageToContactResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SMessagesSendMessageToContactResponse*)data, error);
                                }
                            }];
}

///
/// Send a message to a phone number using a template
/// Sends a templated message directly to a phone number without requiring a pre-existing contact. The system will attempt to determine the best channel for delivery and create a contact record if one doesn't exist.
///  @param sendMessageToPhoneNumberRequest Message details including customer ID, phone number, and template ID 
///
///  @returns SMessagesSendMessageToPhoneNumberResponse*
///
-(NSURLSessionTask*) sendMessageToPhoneNumberWithSendMessageToPhoneNumberRequest: (SSendMessageToPhoneNumberRequest*) sendMessageToPhoneNumberRequest
    completionHandler: (void (^)(SMessagesSendMessageToPhoneNumberResponse* output, NSError* error)) handler {
    // verify the required parameter 'sendMessageToPhoneNumberRequest' is set
    if (sendMessageToPhoneNumberRequest == nil) {
        NSParameterAssert(sendMessageToPhoneNumberRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sendMessageToPhoneNumberRequest"] };
            NSError* error = [NSError errorWithDomain:kSMessagesApiErrorDomain code:kSMessagesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/messages/phone-number"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKey", @"BearerAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = sendMessageToPhoneNumberRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SMessagesSendMessageToPhoneNumberResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SMessagesSendMessageToPhoneNumberResponse*)data, error);
                                }
                            }];
}



@end
