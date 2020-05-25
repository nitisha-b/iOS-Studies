//
//  ChatClient.m
//  iOSTest
//

#import "ChatClient.h"

@interface ChatClient ()
@property (nonatomic, strong) NSURLSession *session;
@end

@implementation ChatClient

/**
 * =========================================================================================
 * INSTRUCTIONS
 * =========================================================================================
 * 1) Make a request to fetch chat data used in this app.
 **/

- (void)fetchChatData:(void (^)(NSArray<Message *> *))completion withError:(void (^)(NSString *error))errorBlock
{
    
    NSURL *url = [NSURL URLWithString:@""];
    self.session = [NSURLSession sharedSession];
    [[self.session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        // Check for any errors when receiving data
        if(error) {
            errorBlock(error.localizedDescription);
            return;
        }
        else {
            // Retreiving json data
            NSError *error = nil;
            NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:&error];
            NSArray *arrayOfDictionaries = [jsonDictionary objectForKey:@"data"];
            
            // Adding all dictionaries to "message" objects and adding them to an array
            NSMutableArray *messages = [[NSMutableArray alloc]init];
            for(NSDictionary *dataDictionary in arrayOfDictionaries) {
                Message *message = [[Message alloc]initWithDictionary:dataDictionary];
                [messages addObject:message];
            }
            dispatch_async(dispatch_get_main_queue(), ^{
                completion(messages);
            });
        }
    }]
     resume];
    
}

@end
