//
//  ACNetworkHelper.m
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 29/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import "ACNetworkHelper.h"
#import "ACChatHelper.h"

@implementation ACNetworkHelper
    
+ (instancetype)sharedNetworkHelper {
    static ACNetworkHelper *requestsHandler;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        requestsHandler = [[ACNetworkHelper alloc] init];
    });
    return requestsHandler;
}

    
- (void)getDataWithCompletion:(void (^)(BOOL success, NSError *error))completion {
    SOAPEngine *soap = [[SOAPEngine alloc] init];
    soap.userAgent = @"SOAPEngine";
    soap.actionNamespaceSlash = YES;
    soap.responseHeader = YES;
    
    [soap setIntegerValue:0 forKey:@"LastRecordId"];
    [soap setIntegerValue:20 forKey:@"TotalRecords"];
    
    [soap requestURL:@"http://demo.fana.sa/testservice.asmx" soapAction:@"http://tempuri.org/GetTvChatCards" completeWithDictionary:^(NSInteger statusCode, NSDictionary *dict) {
        
        NSDictionary *body = [dict valueForKey:@"Body"];
        NSDictionary *tvChatCardsResponse = [body valueForKey:@"GetTvChatCardsResponse"];
        NSString *tvChatCardsResult = [tvChatCardsResponse valueForKey:@"GetTvChatCardsResult"];
        
        NSData *decodeData = [[NSData alloc] initWithBase64EncodedString:tvChatCardsResult options:0];
        NSArray *resultsArray = [NSJSONSerialization JSONObjectWithData:decodeData options:NSJSONReadingMutableContainers error:nil];
        [[ACChatHelper sharedChatHelper] persistChatResponse:resultsArray];
        completion(YES, nil);
        
    } failWithError:^(NSError *error) {
        completion(NO, error);
    }];
}

@end
