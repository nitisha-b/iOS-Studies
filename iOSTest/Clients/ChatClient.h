//
//  ChatClient.h
//  iOSTest
//

#import <Foundation/Foundation.h>
#import "Message.h"

@interface ChatClient : NSObject
- (void)fetchChatData:(void (^)(NSArray<Message *> *))completion withError:(void (^)(NSString *error))errorBlock;
@end
