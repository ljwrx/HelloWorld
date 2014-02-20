//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Administrator on 14-2-19.
//  Copyright (c) 2014年 Administrator. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()

@end

@implementation HelloWorldViewController

-(IBAction)buttonPressed {
//    scorelabel.text = @"我被点了!";
    count++;
    
    scorelabel.text = [NSString stringWithFormat:@"得分 \n%i", count];
}

-(void)setupGame
{
    seconds = 30;
    count = 0;
    
    timerlabel.text = [NSString stringWithFormat:@"倒计时：%i", seconds];
    scorelabel.text = [NSString stringWithFormat:@"得分：%i", count];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                             target:self
                                           selector:@selector(subtractTime)
                                           userInfo:nil
                                            repeats:YES];
}

-(void)subtractTime
{
    seconds--;
    timerlabel.text = [NSString stringWithFormat:@"倒计时：%i",seconds];
    
    if(seconds == 0)
    {
        [timer invalidate];
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"时间到！"
                                                         message:[NSString stringWithFormat:@"你的得分 %i",count]
                                                        delegate:self
                                               cancelButtonTitle:@"再玩一次"
                                               otherButtonTitles:nil];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self setupGame];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)showMessage
{
    UIAlertView *HelloWorldAlert = [[UIAlertView alloc]
                                    initWithTitle:@"Hello,My friend"
                                    message:@"I miss you"
                                    delegate:nil cancelButtonTitle:@"I miss you,too."
                                    otherButtonTitles:nil];
    
    [HelloWorldAlert show];
}

@end
