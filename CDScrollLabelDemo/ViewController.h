//
//  ViewController.h
//  CDScrollLabel
//
//  Created by William Remaerd on 1/5/13.
//  Copyright (c) 2013 Coder Dreamer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CDScrollLabel.h"
@class CDScrollLabel;
@interface ViewController : UIViewController <CDScrollLabelDelegate>
@property(strong, nonatomic)CDScrollLabel *label0;
@property(strong, nonatomic)IBOutlet CDScrollLabel *label1;
@property(strong, nonatomic)IBOutlet CDScrollLabel *label2;

@property(strong, nonatomic)IBOutlet CDScrollLabel *label3;
@property(strong, nonatomic)IBOutlet CDScrollLabel *label4;
@property(strong, nonatomic)IBOutlet CDScrollLabel *label5;

@end
