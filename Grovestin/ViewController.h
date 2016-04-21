//
//  ViewController.h
//  Grovestin
//
//  Created by Grover Light on 2/13/16.
//  Copyright © 2016 Grover Light. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ReasonList;
@class ColorWheel;
@class imageList;


@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *reasonLabel;

@property (strong, nonatomic) ReasonList *reasonList;

@property (strong, nonatomic) IBOutlet UIButton *button;

@property (strong, nonatomic) ColorWheel *colorWheel;

@property (weak, nonatomic) IBOutlet UIImageView *infinite;

@property (strong, nonatomic) IBOutlet UIView *background;

@property (strong, nonatomic) IBOutlet UILabel *lableOne;
@property (strong, nonatomic) IBOutlet UILabel *labelTwo;
@property (strong, nonatomic) IBOutlet UILabel *labelThree;
@property (strong, nonatomic) IBOutlet UILabel *thinkLabel;

@property (strong, nonatomic) IBOutlet UIImageView *imageView;



@end

