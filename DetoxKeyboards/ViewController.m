//
//  ViewController.m
//  DetoxKeyboards
//
//  Created by Tyrone Trevorrow on 22/4/21.
//

#import "ViewController.h"
#import "CustomKeyboard.h"

@interface ViewController () <CustomKeyboardDelegate>
@property (nonatomic, strong) CustomKeyboard *keyboard;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.keyboard = [[CustomKeyboard alloc] initWithFrame: CGRectMake(0, 0, self.view.frame.size.width, 280)];
    self.keyboard.delegate = self;
    self.textField.inputView = self.keyboard;
    // Do any additional setup after loading the view.
}

- (void)didPressButton:(id)sender
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle: @"Boop!" message: @"Button was booped!" preferredStyle: UIAlertControllerStyleAlert];
    [alert addAction: [UIAlertAction actionWithTitle: @"Cool" style: UIAlertActionStyleCancel handler: nil]];
    [self presentViewController: alert animated: YES completion: nil];
}

@end
