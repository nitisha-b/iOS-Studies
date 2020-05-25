//
//  LoginClient.h
//  iOSTest
//

#import <Foundation/Foundation.h>

@interface LoginClient : NSObject
- (void)loginWithUsername:(NSString *)username password:(NSString *)password completion:(void (^)(NSData *))completion;
@end

//- (void)loginWithUsername:(NSString *)username password:(NSString *)password completion:(void (^)(NSDictionary *))completion;
