//
//  SignupViewController.m
//  RoboHeart
//
//  Created by Sai on 19/01/15.
//  Copyright (c) 2015 Sai Sankeerth Reddy Obulam. All rights reserved.
//

#import "SignupViewController.h"
#import "RegisterViewController.h"
#import "VerifyAccountViewController.h"

@interface SignupViewController ()

@end

@implementation SignupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)tapsOnVerifyAccBtn:(id)sender {
    VerifyAccountViewController *_verify = [[VerifyAccountViewController alloc]initWithNibName:@"VerifyAccountViewController" bundle:nil];
    [self presentViewController:_verify animated:YES completion:nil];
}

- (IBAction)tapsOnSignupBtn:(id)sender {
    RegisterViewController *_register = [[RegisterViewController alloc]initWithNibName:@"RegisterViewController" bundle:nil];
    [self presentViewController:_register animated:YES completion:nil];
}

- (IBAction)tapsOnForgotBtn:(id)sender {
    alertForgot=[[UIAlertView alloc]initWithTitle:@"Oops!" message:@"Forgot your password? Simply Enter your mobile number to receive new passcode" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];
    alertForgot.alertViewStyle=UIAlertViewStylePlainTextInput;
    txtForgot=[alertForgot textFieldAtIndex:0];
    txtForgot.placeholder=@"Mobile number";
    [alertForgot show];

}
@end
