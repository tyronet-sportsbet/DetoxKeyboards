//
//  CustomKeyboard.m
//  DetoxKeyboards
//
//  Created by Tyrone Trevorrow on 22/4/21.
//

#import "CustomKeyboard.h"

@implementation CustomKeyboard

- (void) didMoveToWindow
{
    if (!self.button) {
        self.button = [[UIButton alloc] initWithFrame: CGRectMake(20, 20, 200, 44)];
        [self.button setTitleColor: UIColor.blackColor forState: UIControlStateNormal];
        [self.button setTitle: @"Tap Me!" forState: UIControlStateNormal];
        self.button.accessibilityIdentifier = @"CustomKeyboardButton";
        [self.button addTarget: self.delegate action: @selector(didPressButton:) forControlEvents: UIControlEventTouchUpInside];
        [self addSubview: self.button];
    }
}

@end
