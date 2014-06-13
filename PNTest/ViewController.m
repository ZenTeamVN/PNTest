//
//  ViewController.m
//  PNTest
//
//  Created by Khoa Lê on 13/06/2014.
//  Copyright (c) Năm 2014 ATC International. All rights reserved.
//

#import "ViewController.h"
#import "NBPhoneNumberUtil.h"

#import "NBPhoneMetaDataGenerator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //set the label's text to ""
    _nLabel.text = @"";
    //user can not touch the "Call" button or "Delele" button at this time
    _btnCall.enabled = NO;
    _btnDel.enabled = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//When user clicks any button, we will check la label's text. If nothing, disable "Call" button and "Delete" button,
//else, enable them
- (IBAction)btn1:(id)sender {
    _nLabel.text = [NSString stringWithFormat:@"%@%@", _nLabel.text, @"1"];
    [self checkCallAndDelButton];
}

- (IBAction)btn2:(id)sender {
    _nLabel.text = [NSString stringWithFormat:@"%@%@", _nLabel.text, @"2"];
    [self checkCallAndDelButton];
}

- (IBAction)btn3:(id)sender {
    _nLabel.text = [NSString stringWithFormat:@"%@%@", _nLabel.text, @"3"];
    [self checkCallAndDelButton];
}

- (IBAction)btn4:(id)sender {
    _nLabel.text = [NSString stringWithFormat:@"%@%@", _nLabel.text, @"4"];
    [self checkCallAndDelButton];
}

- (IBAction)btn5:(id)sender {
    _nLabel.text = [NSString stringWithFormat:@"%@%@", _nLabel.text, @"5"];
    [self checkCallAndDelButton];
}

- (IBAction)btn6:(id)sender {
    _nLabel.text = [NSString stringWithFormat:@"%@%@", _nLabel.text, @"6"];
    [self checkCallAndDelButton];
}

- (IBAction)btn7:(id)sender {
    _nLabel.text = [NSString stringWithFormat:@"%@%@", _nLabel.text, @"7"];
    [self checkCallAndDelButton];
}

- (IBAction)btn8:(id)sender {
    _nLabel.text = [NSString stringWithFormat:@"%@%@", _nLabel.text, @"8"];
    [self checkCallAndDelButton];
}

- (IBAction)btn9:(id)sender {
    _nLabel.text = [NSString stringWithFormat:@"%@%@", _nLabel.text, @"9"];
    [self checkCallAndDelButton];
}
- (IBAction)btn0:(id)sender {
    _nLabel.text = [NSString stringWithFormat:@"%@%@", _nLabel.text, @"0"];
    [self checkCallAndDelButton];
}
- (IBAction)btnPlus:(id)sender {
    _nLabel.text = [NSString stringWithFormat:@"%@%@", _nLabel.text, @"+"];
    [self checkCallAndDelButton];
}
- (IBAction)btnDel:(id)sender {
    NSString* nLabelText = _nLabel.text;
    int leng = nLabelText.length;
    
    //In case the label is empty, nothing will happen
    if (!leng) return;
    
    //Cut down the last character of the label
    _nLabel.text = [nLabelText substringToIndex:leng - 1];
    [self checkCallAndDelButton];
}
-(void)checkCallAndDelButton{
    if (_nLabel.text.length == 0) _btnCall.enabled = NO;
    else _btnCall.enabled = YES;
    _btnDel.enabled = _btnCall.enabled;
}
- (IBAction)btnCall:(id)sender {
    NSString* foneNumber = _nLabel.text;    NSAssert(foneNumber, @"The label have nothing");
    
    NBPhoneNumberUtil *phoneUtil = [NBPhoneNumberUtil sharedInstance];
    
    //we use Viet Name as the default Region in case user didn't enter region code
    NBPhoneNumber *phoneNumber = [phoneUtil parse:foneNumber defaultRegion:@"VN" error:nil];
    int test = [phoneUtil isValidNumber:phoneNumber];
    
    if (test) {
        //the phone number is valid
        UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"" message:@"The phone number you input is valid." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertView show];
    } else {
        //the phone number is invalid
        UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"" message:@"The phone number you input is invalid, please try again" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertView show];
    }
}
@end
