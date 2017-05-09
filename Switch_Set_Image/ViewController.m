//
//  ViewController.m
//  Switch_Set_Image
//
//  Created by Apple on 31/05/16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    self.SwitchOnOff.onImage = [UIImage imageNamed:@"toggle-from.png"];
//    self.SwitchOnOff.offImage = [UIImage imageNamed:@"toggle-to.png"];
    
    
    CGFloat r1 = CGRectGetHeight(self.viewForSwitchFirst.bounds) / 2.0;
    self.viewForSwitchFirst.layer.cornerRadius = r1;
    
    ZJSwitch *switch1 = [[ZJSwitch alloc] initWithFrame:CGRectMake(5, 5, self.viewForSwitchFirst.frame.size.width - 10, self.viewForSwitchFirst.frame.size.height - 10)];
    switch1.on = YES;
    switch1.backgroundColor = [UIColor clearColor];
    switch1.onTintColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:255/255.0 alpha:1];
    switch1.offTintColor = [UIColor colorWithRed:0/255.0 green:255/255.0 blue:0/255.0 alpha:1];
    switch1.textColor = [UIColor blackColor];
    switch1.onText = @"Switch ON";
    switch1.offText = @"Switch OFF";
    //switch2.textFont = @"";
    [switch1 setOnTextFontSize:10];
    [switch1 setOffTextFontSize:10];
    [switch1 addTarget:self action:@selector(handleSwitchEvent:) forControlEvents:UIControlEventValueChanged];
    [self.viewForSwitchFirst addSubview:switch1];

    
    
    CGFloat r2 = CGRectGetHeight(self.viewForSwitchTwo.bounds) / 2.0;
    self.viewForSwitchTwo.layer.cornerRadius = r2;
    
    ZJSwitch *switch2 = [[ZJSwitch alloc] initWithFrame:CGRectMake(5, 5, self.viewForSwitchTwo.frame.size.width - 10, self.viewForSwitchTwo.frame.size.height - 10)];
    switch2.on = YES;
    switch2.backgroundColor = [UIColor clearColor];
    switch2.tintColor = [UIColor orangeColor];
    [switch2 addTarget:self action:@selector(handleSwitchEvent:) forControlEvents:UIControlEventValueChanged];
    [self.viewForSwitchTwo addSubview:switch2];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)switchActionOnOff:(id)sender
{
    NSLog(@"%@",sender);
    
    if ([self.SwitchOnOff isOn])
    {
        NSLog(@"Switch id On");
    }
    else
    {
        NSLog(@"Switch is Off");
    }
}


- (void)handleSwitchEvent:(id)sender
{
    if ([sender isOn])
    {
        NSLog(@"Switch is On");
    }
    else
    {
        NSLog(@"Switch is Off");
    }
}


@end
