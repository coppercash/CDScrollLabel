//
//  ViewController.m
//  CDScrollLabel
//
//  Created by William Remaerd on 1/5/13.
//  Copyright (c) 2013 Coder Dreamer. All rights reserved.
//

#import "ViewController.h"
#import "CDMemAssist.h"
#import "CDScrollLabel.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _label0 = [[CDScrollLabel alloc] initWithFrame:CGRectMake(20.0f, 20.0f, 280.0f, 20.0f) text:@"1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ"];
    [self.view addSubview:_label0];
    _label0.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    
    _label0.text = @"Test";
    
    _label1.text = @"Short";
    
    _label2.text = @"1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    
    _label3.text = @"1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    _label4.text = @"CTFontCreateCopyWithSymbolicTraits(font, 0.0, NULL, kCTFontBoldTrait, kCTFontBoldTrait)";
    _label5.text = @" You would use: + (UIFont *)boldSystemFontOfSize:(CGFloat)fontSize";
}

- (IBAction)changeString:(id)sender{
    static NSUInteger flag = 0;
    switch (flag) {
        case 0:{
            flag = 1;
            _label2.text = @"1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        }break;
        case 1:{
            flag = 2;
            _label2.text = @"Short";
        }break;
        case 2:{
            flag = 3;
            _label2.text = @"";
        }break;
        case 3:{
            flag = 0;
            _label2.text = nil;
        }break;
        default:
            break;
    }
}

- (IBAction)determine:(id)sender{
    [_label2 determineMode];
}

- (IBAction)start:(id)sender{
    [_label2 start];
}

- (IBAction)cancel:(id)sender{
    [_label2 cancelAnimation];
}

- (IBAction)delay:(id)sender{
    [_label2 animateAfterDelay:3];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc{
    SafeMemberRelease(_label0);
    SafeSuperDealloc();
}

- (NSTimeInterval)scrollLabelShouldStartAnimating:(CDScrollLabel *)scrollLabel{
    return 3.0f;
}

- (NSTimeInterval)scrollLabelShouldContinueAnimating:(CDScrollLabel *)scrollLabel{
    NSLog(@"%d\t%d\t%d", _label3.isAnimating, _label4.isAnimating, _label5.isAnimating);
    if (!_label3.isAnimating && !_label4.isAnimating && !_label5.isAnimating) {
        [_label3 animateAfterDelay:3.0f];
        [_label4 animateAfterDelay:3.0f];
        [_label5 animateAfterDelay:3.0f];
    }
    if (scrollLabel == _label2) {
        return 3.0f;
    }
    return -1.0f;
}

@end
