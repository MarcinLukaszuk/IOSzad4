//
//  ViewController.m
//  iosapp
//
//  Created by kamil on 10/29/17.
//  Copyright © 2017 kamil. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2



-(IBAction)passDataBack{
    NSString *itemToPassBack = self.modifiedSurnameInputField.text;
    [self.delegate addItemViewController:self didFinishEnteringItem:itemToPassBack];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.modifiedSurnameInputField.text=self.surname;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
