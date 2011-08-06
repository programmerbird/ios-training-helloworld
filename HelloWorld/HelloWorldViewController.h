//
//  HelloWorldViewController.h
//  HelloWorld
//
//  Created by Sittipon Simasanti on 8/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController<UITextFieldDelegate> {
    UILabel *label;
    UITextField *nameField;
}

@property (nonatomic, retain) IBOutlet UILabel *label;
@property (nonatomic, retain) IBOutlet UITextField *nameField;

- (IBAction)buttonDidClick:(id)sender;

@end
