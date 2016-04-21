//
//  ReasonList.h
//  Grovestin
//
//  Created by Grover Light on 2/13/16.
//  Copyright © 2016 Grover Light. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ReasonList : NSObject

@property (strong, nonatomic) NSArray *reasons;

- (NSString *) randomReason;


@end
