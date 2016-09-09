//
//  U8SDK.m
//  U8SDK
//
//  Created by dayong on 15-1-21.
//  Copyright (c) 2015年 u8sdk. All rights reserved.
//                                                       

#import "U8SDK+Validate.h"

#import <CommonCrypto/CommonDigest.h>

@implementation U8SDK (Validate)


- (NSString *) stringMd5:(NSString*)src
{
    if(self == nil || [src length] == 0)
        return nil;
    
    const char *value = [src UTF8String];
    
    unsigned char outputBuffer[CC_MD5_DIGEST_LENGTH];
    CC_MD5(value, (CC_LONG)strlen(value), outputBuffer);
    
    NSMutableString *outputString = [[NSMutableString alloc] initWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for(NSInteger count = 0; count < CC_MD5_DIGEST_LENGTH; count++){
        [outputString appendFormat:@"%02x",outputBuffer[count]];
    }
    
    return outputString;
}

// U8官方提供的账号验证方法
-(void) AccountValidate:(NSDictionary*)params responseHandler:(void (^)(NSURLResponse* response, id data, NSError* connectionError)) handler
{
    UIActivityIndicatorView* progressInd = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    progressInd.center = [self GetView].center;
    [[self GetView] addSubview:progressInd];
    [progressInd startAnimating];

    NSURL *yhtURL = [NSURL URLWithString:[self.sdkParams objectForKey:@"U8Url"]];
    
    NSAssert([self.sdkParams valueForKey:@"AppId"], @"can't get AppId");
    NSAssert([self.sdkParams valueForKey:@"Channel"], @"can't get Channel");
    NSAssert([self.sdkParams valueForKey:@"AppKey"], @"can't get AppKey");
    
    NSMutableDictionary* httpParams = [NSMutableDictionary dictionaryWithDictionary:@{
                                                                                      @"appID": [self.sdkParams valueForKey:@"AppId"],
                                                                                      @"channelID": [self.sdkParams valueForKey:@"Channel"],
                                                                                      @"sdkVersionCode": @"1"
                                                                                      }];
    
    id extension = [params valueForKey:@"orderID"];
    
    if (!extension)
    {
        extension = @"";
    }
    else if (![extension isKindOfClass:[NSString class]])
    {
        NSError* err = nil;
        NSData* jsonData = [NSJSONSerialization dataWithJSONObject:extension options:kNilOptions error:&err];
        extension = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
    
    [httpParams setValuesForKeysWithDictionary:params];
    
    NSString* sign = [NSString stringWithFormat:@"appID=%@channelID=%@extension=%@%@",
                      [self.sdkParams valueForKey:@"AppId"],
                      [self.sdkParams valueForKey:@"Channel"],
                      extension,
                      [self.sdkParams valueForKey:@"AppKey"]];
    
    sign = [[self stringMd5:sign] lowercaseString];
    
    [httpParams setValue:sign forKey:@"sign"];
    
    NSMutableURLRequest* request = [[NSMutableURLRequest alloc] initWithURL:yhtURL];
    
    NSString* strParams = [U8SDK encodeHttpParams:httpParams encode:NSUTF8StringEncoding];
    
    [request setHTTPMethod:@"POST"];
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"content-type"];
    [request setHTTPBody:[strParams dataUsingEncoding:NSUTF8StringEncoding]];
    
    [NSURLConnection sendAsynchronousRequest:request
                                       queue:[NSOperationQueue mainQueue]
                           completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError)
     {
         [progressInd removeFromSuperview];
         
         if (connectionError != nil || !data || [data length] == 0)
         {
             handler(response, nil, connectionError);
         }
         else
         {
             NSLog(@"%@", [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]);
             NSError* error;
             NSDictionary* json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
             
             handler(response, json, error);
         }
     }];
}

@end
