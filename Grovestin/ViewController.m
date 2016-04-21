//
//  ViewController.m
//  Grovestin
//
//  Created by Grover Light on 2/13/16.
//  Copyright © 2016 Grover Light. All rights reserved.
//

#import "ViewController.h"
#import "ReasonList.h"
#import <AudioToolbox/AudioToolbox.h>
//#import "ColorWheel.h"
#import <pop/POP.h>
#import <UIColor+randomColor.h>




@interface ViewController ()

@end

@implementation ViewController

SystemSoundID soundEffect;


- (void)viewDidLoad {
    [super viewDidLoad];


//    POPSpringAnimation *positionAnimation2 = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
//    positionAnimation2.velocity = @400;
//    positionAnimation2.springBounciness = 20;
//
//    [self.lableOne.layer pop_addAnimation:positionAnimation2 forKey:@"positionAnimation2"];
//
//
//    POPSpringAnimation *positionAnimation3 = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
//    positionAnimation3.velocity = @300;
//    positionAnimation3.springBounciness = 25;
//
//    [self.labelTwo.layer pop_addAnimation:positionAnimation3 forKey:@"positionAnimation3"];
//
//
//    POPSpringAnimation *positionAnimation4 = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
//    positionAnimation4.velocity = @400;
//    positionAnimation4.springBounciness = 30;
//
//    [self.labelThree.layer pop_addAnimation:positionAnimation4 forKey:@"positionAnimation4"];


    self.lableOne.text = @"Dear Kristin,";
    self.lableOne.font = [UIFont fontWithName:@"RionaSans-ExtraBlackIt" size:38];
    self.lableOne.adjustsFontSizeToFitWidth = YES;
    self.lableOne.textColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
    

    self.labelTwo.text = @"I love you";
    self.labelTwo.font = [UIFont fontWithName:@"RionaSans-Thin" size:55];
    self.labelTwo.adjustsFontSizeToFitWidth = YES;
    self.labelTwo.textColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];

    self.labelThree.text = @"because you";
    self.labelThree.font = [UIFont fontWithName:@"RionaSans-Medium" size:40];
    self.labelThree.adjustsFontSizeToFitWidth = YES;
    self.labelThree.textColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];


    POPBasicAnimation *fadeIn = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerOpacity];

    fadeIn.fromValue = @(0);
    fadeIn.toValue = @(1);
    fadeIn.duration = 3;

    [self.lableOne.layer pop_addAnimation:fadeIn forKey:@"labelOneFadein"];


    POPBasicAnimation *fadeIn2 = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerOpacity];

    fadeIn2.fromValue = @(0);
    fadeIn2.toValue = @(1);
    fadeIn2.duration = 4;

    [self.labelTwo.layer pop_addAnimation:fadeIn2 forKey:@"labelTwoFadein2"];


    POPBasicAnimation *fadeIn3 = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerOpacity];

    fadeIn3.fromValue = @(0);
    fadeIn3.toValue = @(1);
    fadeIn3.duration = 5;

    [self.labelThree.layer pop_addAnimation:fadeIn3 forKey:@"labelThreeFadein3"];



    self.reasonList = [[ReasonList alloc] init];

    //    self.colorWheel = [[ColorWheel alloc] init];
    //    UIColor *randomColor = [self.colorWheel randomColor];
    //    self.view.backgroundColor = randomColor;
    //    self.button.tintColor = randomColor;

    [self.button setTitle:@"It's True" forState:UIControlStateNormal];



    //background random color array


    UIColor *pink = [UIColor randomColorWithHue:YGColorHueRandom luminosity:YGColorLuminosityBright];
    self.view.backgroundColor = pink;


    //reason style start

    self.reasonLabel.text = @"❔🤔❗️";
    self.reasonLabel.textColor = [UIColor whiteColor];
    self.reasonLabel.font = [UIFont fontWithName:@"RionaSans-Black" size:38];

    //label pop

    POPSpringAnimation *placeholderScale = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerScaleXY];

    placeholderScale.springBounciness = 18;
    placeholderScale.toValue = [NSValue valueWithCGSize:CGSizeMake(1.0f, 1.0f)];
    placeholderScale.fromValue = [NSValue valueWithCGSize:CGSizeMake(1.25f, 1.25f)];
    [self.reasonLabel.layer pop_addAnimation:placeholderScale forKey:@"labelScaleAnimation2"];



    //button style

    self.button.layer.borderWidth = 2;
    self.button.layer.cornerRadius = 8;
    self.button.layer.borderColor = [UIColor colorWithRed:0.98 green:0.79 blue:0.40 alpha:0.0].CGColor;



}


- (IBAction)showReason {
    NSLog(@"you touched me");

    self.reasonLabel.alpha = 1;

    NSString *soundPath = [[NSBundle mainBundle] pathForResource:@"kiss3 copy" ofType:@"wav"];
    NSURL *soundURL = [NSURL fileURLWithPath:soundPath];
    AudioServicesCreateSystemSoundID(CFBridgingRetain(soundURL), &soundEffect);
 
    AudioServicesPlaySystemSound(soundEffect);



    self.thinkLabel.hidden = YES;

 //background color change

    UIColor *pink = [UIColor randomColorWithHue:YGColorHueRandom luminosity:YGColorLuminosityBright];

    POPBasicAnimation *anim = [POPBasicAnimation animationWithPropertyNamed:kPOPViewBackgroundColor];
    anim.toValue = pink;
    anim.duration = 4;
    [self.background pop_addAnimation:anim forKey:@"backgroundColorChange"];

    NSLog (@"hello?");


//emojii rotation

   POPBasicAnimation *rotate = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerRotation];

   rotate.fromValue = @(0);
   rotate.toValue = @(20 * M_1_PI);
   rotate.duration = 0.5;

   [self.infinite.layer pop_addAnimation:rotate forKey:@"labelScaleAnimation"];


//reason label moves up

   POPSpringAnimation *positionAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
   positionAnimation.velocity = @200;
   positionAnimation.springBounciness = 20;

   [self.reasonLabel.layer pop_addAnimation:positionAnimation forKey:@"positionAnimation"];


//reason fades in

    POPBasicAnimation *fadeAnimation = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerOpacity];
    fadeAnimation.duration = 1.0;
    fadeAnimation.toValue = @1;
    fadeAnimation.fromValue = @0;
    [self.reasonLabel.layer pop_addAnimation:fadeAnimation forKey:@"fadeAnimation"];


//button springs

   POPSpringAnimation *layerScaleAnimation2 = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerScaleXY];

   layerScaleAnimation2.springBounciness = 18;
   layerScaleAnimation2.toValue = [NSValue valueWithCGSize:CGSizeMake(1.0f, 1.0f)];
   layerScaleAnimation2.fromValue = [NSValue valueWithCGSize:CGSizeMake(1.25f, 1.25f)];
   [self.button.layer pop_addAnimation:layerScaleAnimation2 forKey:@"labelScaleAnimation2"];


//reason style change

    self.reasonLabel.textColor = [UIColor whiteColor];

    self.reasonLabel.font = [UIFont fontWithName:@"RionaSans-Bold" size:28];

    self.reasonLabel.text = [self.reasonList randomReason];

}





@end
