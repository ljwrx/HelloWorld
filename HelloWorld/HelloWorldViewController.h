//
//  HelloWorldViewController.h
//  HelloWorld
//
//  Created by Administrator on 14-2-19.
//  Copyright (c) 2014年 Administrator. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController


{
    IBOutlet UILabel *scorelabel;
    IBOutlet UILabel *timerlabel;
    
    NSInteger count;
    NSInteger seconds;
    NSTimer *timer;
}

-(IBAction)showMessage;

-(IBAction)buttonPressed;

@end
