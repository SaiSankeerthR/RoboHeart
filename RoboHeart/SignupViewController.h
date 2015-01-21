//
//  SignupViewController.h
//  RoboHeart
//
//  Created by Sai on 19/01/15.
//  Copyright (c) 2015 Sai Sankeerth Reddy Obulam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignupViewController : UIViewController<UITextFieldDelegate>
{
    UIAlertView                     *   alertForgot;
    UITextField                     *   txtForgot;


}
- (IBAction)tapsOnVerifyAccBtn:(id)sender;

- (IBAction)tapsOnSignupBtn:(id)sender;
- (IBAction)tapsOnForgotBtn:(id)sender;
@end
