//
//  GGRadioButton.m
//
//  Created by Gustavo Graña on 07/04/13.
//  Copyright (c) 2013 Gustavo Graña. All rights reserved.
//

#import "GGRadioButton.h"

@implementation GGRadioButton {
    UIButton* btn;
    id target;
    SEL selector;
    NSInvocation* invocation;
}

- (id)initWithButton:(UIButton*) button {
    self = [super init];
    if (self) {
        btn = button;
        target = [[button allTargets] anyObject];
        selector = NSSelectorFromString([[button actionsForTarget:target forControlEvent:UIControlEventTouchUpInside] lastObject]);
        NSMethodSignature* signature = [target methodSignatureForSelector:selector];
        invocation = [NSInvocation invocationWithMethodSignature:signature];
        [invocation setTarget:target];
        [invocation setSelector:selector];
        [invocation setArgument:&btn atIndex:2];
        [btn removeTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (NSUInteger)hash {
    return [btn hash];
}

- (BOOL)isEqual:(id)object {
    return [object isEqual:btn];
}

- (UIButton*) button {
    return btn;
}

- (void) action {
    [invocation invoke];
}

- (void) setSelected:(BOOL)isSelected {
    [btn setSelected:isSelected];
}

- (BOOL) isSelected {
    return [btn isSelected];
}

@end
