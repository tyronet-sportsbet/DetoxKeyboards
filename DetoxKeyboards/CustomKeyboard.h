//
//  CustomKeyboard.h
//  DetoxKeyboards
//
//  Created by Tyrone Trevorrow on 22/4/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol CustomKeyboardDelegate
- (void) didPressButton: (id) sender;
@end

@interface CustomKeyboard : UIView
@property (nonatomic, strong) UIButton *button;
@property (nonatomic, weak) id<CustomKeyboardDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
