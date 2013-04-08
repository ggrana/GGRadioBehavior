//
//  GGRadioBehavior.m
//
//  Created by Gustavo Graña on 07/04/13.
//  Copyright (c) 2013 Gustavo Graña. All rights reserved.
//

#import "GGRadioBehavior.h"
#import "GGRadioButton.h"

@implementation GGRadioBehavior {
    NSMutableArray* btns;
}

- (id)init {
    self = [super init];
    if (self) {
        btns = [NSMutableArray new];
    }
    return self;
}

- (void) addButton:(UIButton*) btn{
    GGRadioButton* radioButton = [[GGRadioButton alloc] initWithButton:btn];
    [btns addObject:radioButton];
    [btn addTarget:self action:@selector(action:) forControlEvents:UIControlEventTouchUpInside];
}

- (void) removeButton:(UIButton*) btn{
    int index = [btns indexOfObjectPassingTest:^BOOL(id obj, NSUInteger idx, BOOL *stop){
        return [obj isEqual:btn];
    }];
    [btns removeObjectAtIndex:index];
}

- (IBAction)action:(id)sender {
    @synchronized(self) {
        GGRadioButton* radioButton;
        for (GGRadioButton* rb in btns) {
            if ([rb isEqual:sender]) {
                [rb setSelected:YES];
                radioButton = rb;
            } else {
                [rb setSelected:NO];
            }
        }
        [radioButton action];
    }
}

@end
