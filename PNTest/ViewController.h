//
//  ViewController.h
//  PNTest
//
//  Created by Khoa Lê on 13/06/2014.
//  Copyright (c) Năm 2014 ATC International. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *btn1;
@property (weak, nonatomic) IBOutlet UIButton *btn2;
@property (weak, nonatomic) IBOutlet UIButton *btn3;
@property (weak, nonatomic) IBOutlet UIButton *btn4;
@property (weak, nonatomic) IBOutlet UIButton *btn5;
@property (weak, nonatomic) IBOutlet UIButton *btn6;
@property (weak, nonatomic) IBOutlet UIButton *btn7;
@property (weak, nonatomic) IBOutlet UIButton *btn8;
@property (weak, nonatomic) IBOutlet UIButton *btn9;
@property (weak, nonatomic) IBOutlet UIButton *btn0;
@property (weak, nonatomic) IBOutlet UIButton *btnCall;
@property (weak, nonatomic) IBOutlet UIButton *btnPlus;
@property (weak, nonatomic) IBOutlet UIButton *btnDel;


@property (weak, nonatomic) IBOutlet UILabel *nLabel;



- (IBAction)btn1:(id)sender;
- (IBAction)btn2:(id)sender;
- (IBAction)btn3:(id)sender;
- (IBAction)btn4:(id)sender;
- (IBAction)btn5:(id)sender;
- (IBAction)btn6:(id)sender;
- (IBAction)btn7:(id)sender;
- (IBAction)btn8:(id)sender;
- (IBAction)btn9:(id)sender;
- (IBAction)btn0:(id)sender;
- (IBAction)btnCall:(id)sender;
- (IBAction)btnPlus:(id)sender;
- (IBAction)btnDel:(id)sender;

@end
