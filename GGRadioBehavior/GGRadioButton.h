//
//  GGRadioButton.h
//
//  Created by Gustavo Graña on 07/04/13.
//  Copyright (c) 2013 Gustavo Graña. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GGRadioButton : NSObject

- (id)initWithButton:(UIButton*) button;
- (UIButton*) button;
- (void) action;
- (void) setSelected:(BOOL)isSelected;
- (BOOL) isSelected;

@end
