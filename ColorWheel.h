//
//  ColorWheel.h
//  Grovestin
//
//  Created by Grover Light on 2/16/16.
//  Copyright © 2016 Grover Light. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ColorWheel : NSObject

@property (strong, nonatomic) NSArray * colors;

- (UIColor *) randomColor;

@end
