//
//  ViewController.m
//  GYBankCardFormat
//
//  Created by Gary on 14-5-29.
//  Copyright (c) 2014年 蒲晓涛. All rights reserved.
//

#import "ViewController.h"

#import "GYBankCardFormatTextField.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    GYBankCardFormatTextField *bankCardNumber = [[GYBankCardFormatTextField alloc]initWithFrame:CGRectMake(60, 122, 230, 50)];
    bankCardNumber.borderStyle = UITextBorderStyleLine;
    bankCardNumber.placeholder = @"请输入你的银行卡号";
    [self.view addSubview:bankCardNumber];
    
    [bankCardNumber getNumber:^(NSString *number) {
        NSLog(@"number - %@",number);
    }];
    [bankCardNumber addTarget:self action:@selector(hell0:) forControlEvents:UIControlEventEditingChanged];
    
}
- (void)hell0:(UITextField*)tf {

    NSLog(@"tf-%@",tf.text);
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
