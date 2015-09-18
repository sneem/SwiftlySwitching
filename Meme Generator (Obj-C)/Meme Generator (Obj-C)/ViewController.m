//
//  ViewController.m
//  Meme Generator (Obj-C)
//
//  Created by Maegan on 9/13/15.
//  Copyright (c) 2015 Sabre Labs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)touchButton:(id)sender {
    int number = (self.textField.text.length==0) ? 0 : [self.textField.text intValue];
    
    [self.view endEditing:YES];
    
    if(number>0 && number<6) {
        [self changeImage:number];
    } else {
        [self showAlert];
    }
}

- (void)changeImage:(int)num {
    NSString *imageName = [NSString stringWithFormat:@"meme%d", num];
    self.imageView.image = [UIImage imageNamed:imageName];
}

- (void)showAlert {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Oops!"
                                                    message:@"Your number must be between 1-5."
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}



@end
