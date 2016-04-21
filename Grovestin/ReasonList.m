//
//  ReasonList.m
//  Grovestin
//
//  Created by Grover Light on 2/13/16.
//  Copyright © 2016 Grover Light. All rights reserved.
//

#import "ReasonList.h"

@implementation ReasonList


- (instancetype)init
{
    self = [super init];
    if (self) {
        _reasons = [[NSArray alloc] initWithObjects:
                    @"wrote about me in \n a little red book 📕",
                    @"load the dishwasher \n better than anyone 🍴",
                    @"wear the high \n pony for me 🐴",
                    @"listen to me \n rap Yeezus 👦🏿",
                    @"nickname me 🐻",
                    @"smell like \n honey buns 🍯",
                    @"taught me how to \n make boiled eggs 🐣",
                    @"know several \n magicians 🔮",
                    @"have a perfect \n radio voice 📻",
                    @"get singled out \n at orange theory 🍊",
                    @"watch bad tv like \n  the bachelor 💏",
                    @"speak your mind \n and stand up 🙋🏼",
                    @"have smiling eyes 😊",
                    @"play keep or \n return with me 👗",
                    @"laugh at my \n snapchats 👻",
                    @"love live-music 🎸",
                    @"are a lunch \n meat snob 🍗",
                    @"moonlight as an \n event planner 🌚",
                    @"started from \n the bottom ⬇️",
                    @"have a high \n IQ and EQ 📊",
                    @"have a face to make \n a model jealous 👸🏼",
                    @"have some very \n creative ideas 💡",
                    @"also love smelling \n Diptyque candles 🕯",
                    @"can sleep anytime, \n anywhere 😴",
                    @"would never \n boo anyone 😡",
                    @"make me laugh \n everyday 😂",
                    @"prefer hotels \n to airbnb 🏨",
                    @"wear glitzy \n headbands 💎",
                    @"have tiny ears 👂🏻",
                    @"ask me questions \n in your sleep 💅🏻",
                    @"give after \n work hugs 💛",
                    @"are really honest \n and trustworthy 💯",
                    @"have strong morals \n and good values 👼🏼",
                    @"bring me fresh \n Mandarin swag 🎒",
                    @"think it's cute \n when I gets lost 🚙",
                    @"give me many \n eskimo kisses 👃🏻",
                    @"can vulnerable \n in front of me 😭",
                    @"are really good at \n drawing pigs 🐷",
                    @"get asked out \n for ice cream 🍦",
                    @"are not afraid of \n adventurous things 🗻",
                    @"ask ALOT \n of questions ❓",
                    @"are the BEST \n travel buddy ✈️",
                    @"are a great \n public speaker 📢",
                    @"have an eye \n for design 👁",
                    @"like dogs \n over cats 🐶",
                    @"hike better \n than Bigad 👳🏾",
                    @"shower regularly 🚿",
                    @"are a goofball 🐒",
                    @"are a ridiculously \n talented chef 🍕",
                    @"are an accomplished \n saleswoman 💸",
                    @"do make me a \n better person 📈", nil];


    }
    return self;
}



- (NSString *) randomReason {

    int random = arc4random_uniform((int) self.reasons.count);
    return [self.reasons objectAtIndex:random];
}



@end
