//
//  ViewController.h
//  iosapp
//
//  Created by kamil on 10/29/17.
//  Copyright © 2017 kamil. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ViewController2.h"
@interface ViewController : UIViewController
<SecondViewControllerDelegate>

@property (nonatomic, weak) IBOutlet UILabel *messageLabel;
@property (nonatomic, weak) IBOutlet UITextField *inputField;
@property (nonatomic, weak) IBOutlet UITextField *surnameInputField;
	@end

