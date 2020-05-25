//
//  LoginClient.m
//  iOSTest
//

#import "LoginClient.h"

@interface LoginClient ()
@property (nonatomic, strong) NSURLSession *session;
@end

@implementation LoginClient

/**
 * =========================================================================================
 * INSTRUCTIONS
 * =========================================================================================
 * 1) Make a request here to login.
 *
 * 2) Using the following endpoint, make a request to login
 *
 * 3) Don't forget, the endpoint takes two parameters 'username' and 'password'
 *
 **/

- (void)loginWithUsername:(NSString *)username password:(NSString *)password completion:(void (^)(NSData *))completion
{
    NSString *post = [NSString stringWithFormat:@"username=%@&password=%@",username,password];
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setURL:[NSURL URLWithString:@""]];
    [request setHTTPMethod:@"POST"];
    [request setHTTPBody:postData];
    
    self.session = [NSURLSession sharedSession];
    [[self.session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        // Check for error when receiving data
        if(error) {
            NSLog(@"%@",error.localizedDescription);
            return;
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            completion(data);
        });
        
    }]
     resume];
}

@end
