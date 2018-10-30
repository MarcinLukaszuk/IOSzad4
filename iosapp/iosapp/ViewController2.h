//
//  ViewController.h
//  iosapp
//
//  Created by kamil on 10/29/17.
//  Copyright © 2017 kamil. All rights reserved.
//
#import <UIKit/UIKit.h>
@class ViewControllerB;
@protocol SecondViewControllerDelegate <NSObject>
- (void)addItemViewController:(UIViewController *)controller didFinishEnteringItem:(NSString *)item;
@end
@interface ViewController2 : UIViewController

@property (nonatomic, weak) NSString *surname;
@property (nonatomic, weak) IBOutlet UITextField *modifiedSurnameInputField;
@property (nonatomic, weak) id <SecondViewControllerDelegate> delegate;
@end

