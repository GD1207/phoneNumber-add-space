//
//  GYBankCardFormatTextField.h
//  GYBankCardFormat
//
//  Created by Gary on 14-5-29.
//  Copyright (c) 2014年 蒲晓涛. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^GetPhoneNumberBlock)(NSString *number);

@interface GYBankCardFormatTextField : UITextField

@property (nonatomic, copy) GetPhoneNumberBlock getnumber;

- (void)getNumber:(GetPhoneNumberBlock)block;

@end
