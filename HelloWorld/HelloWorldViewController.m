//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Sittipon Simasanti on 8/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HelloWorldViewController.h"

@implementation HelloWorldViewController
@synthesize label;
@synthesize nameField;

- (void)dealloc
{
    [label release];
    [nameField release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - UITextFieldDelegate
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self.nameField resignFirstResponder];
    return YES;
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [self setLabel:nil];
    [self setNameField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)buttonDidClick:(id)sender {
    
    NSString *username = self.nameField.text;
    if([username length] <= 0){
        username = @"Stranger";
    }
    
    NSString *greetingText = [[NSString alloc] initWithFormat:@"Hello, %@!", username];
    self.label.text = greetingText;
    [greetingText release];
    
}
@end
