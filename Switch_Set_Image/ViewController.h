//
//  ViewController.h
//  Switch_Set_Image
//
//  Created by Apple on 31/05/16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZJSwitch.h"

@interface ViewController : UIViewController



@property (weak, nonatomic) IBOutlet UIView *viewForSwitchFirst;
@property (weak, nonatomic) IBOutlet UIView *viewForSwitchTwo;


@property (weak, nonatomic) IBOutlet UISwitch *SwitchOnOff;
- (IBAction)switchActionOnOff:(id)sender;

@end

