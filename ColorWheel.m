//
//  ColorWheel.m
//  Grovestin
//
//  Created by Grover Light on 2/16/16.
//  Copyright © 2016 Grover Light. All rights reserved.
//

#import "ColorWheel.h"

@implementation ColorWheel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _colors = [[NSArray alloc] initWithObjects:

                   [UIColor colorWithHue:(256 / 360.0) saturation:0.68 brightness:0.25 alpha:1],
                   [UIColor colorWithHue:(238 / 360.0) saturation:0.46 brightness:0.49 alpha:1],
                   [UIColor colorWithHue:(186 / 360.0) saturation:0.74 brightness:0.51 alpha:1],
                   [UIColor colorWithHue:(179 / 360.0) saturation:0.50 brightness:0.73 alpha:1],


                   [UIColor colorWithHue:(186 / 360.0) saturation:0.74 brightness:0.51 alpha:1],
                   [UIColor colorWithHue:(179 / 360.0) saturation:0.50 brightness:0.73 alpha:1],
                   [UIColor colorWithHue:( 94 / 360.0) saturation:0.96 brightness:0.53 alpha:1],
                   [UIColor colorWithHue:( 86 / 360.0) saturation:0.92 brightness:0.83 alpha:1],
                   [UIColor colorWithHue:( 94 / 360.0) saturation:0.96 brightness:0.53 alpha:1],
                   [UIColor colorWithHue:( 86 / 360.0) saturation:0.92 brightness:0.83 alpha:1],
                   [UIColor colorWithHue:( 16 / 360.0) saturation:0.87 brightness:0.96 alpha:1],
                   [UIColor colorWithHue:( 35 / 360.0) saturation:0.87 brightness:0.96 alpha:1],

                   [UIColor colorWithHue:( 16 / 360.0) saturation:0.87 brightness:0.96 alpha:1],
                   [UIColor colorWithHue:( 35 / 360.0) saturation:0.87 brightness:0.96 alpha:1],
                   [UIColor colorWithHue:(341 / 360.0) saturation:0.82 brightness:0.68 alpha:1],
                   [UIColor colorWithHue:(336 / 360.0) saturation:0.70 brightness:0.97 alpha:1],


                   [UIColor colorWithHue:(341 / 360.0) saturation:0.82 brightness:0.68 alpha:1],
                   [UIColor colorWithHue:(336 / 360.0) saturation:0.70 brightness:0.97 alpha:1],
                   [UIColor colorWithHue:(256 / 360.0) saturation:0.68 brightness:0.25 alpha:1],
                   [UIColor colorWithHue:(238 / 360.0) saturation:0.46 brightness:0.49 alpha:1],

                   nil];




    }
    return self;
}


- (UIColor *) randomColor {

    int random = arc4random_uniform((int) self.colors.count);
    return [self.colors objectAtIndex:random];


}


@end
