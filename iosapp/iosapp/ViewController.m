//
//  ViewController.m
//  iosapp
//
//  Created by kamil on 10/29/17.
//  Copyright © 2017 kamil. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

-(IBAction)enter {
    
    NSString *yourName = self.inputField.text;
    NSString *myName = @"YourName";
    NSString *message;
    
    if ([yourName length] == 0) {
        yourName = @"World";
    }
    
    if ([yourName isEqualToString:myName]) {
        message = [NSString stringWithFormat:@"Hello %@ We have the same name", yourName];
                   }else {
                       message = [NSString stringWithFormat:@"Hello %@", yourName
                                  ];
                   }
    self.messageLabel.text = message;
    
}


-(void)prepareForSegue:(UIStoryboardSegue*)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"sendSurnameSegue"]){ ViewController2 *controller = (ViewController2 *)segue.destinationViewController;
        controller.surname = self.surnameInputField.text;
        controller.delegate = self;
        [[self navigationController]pushViewController:controller animated:YES];
    } }

- (void)addItemViewController:(ViewController2 *)controller didFinishEnteringItem:(NSString *)item
{
    NSLog(@"This was returned from SecondViewController %@",item);
    self.surnameInputField.text = item;
          }
          

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
