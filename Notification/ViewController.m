//
//  ViewController.m
//  Notification
//
//  Created by 钱超 on 17/1/11.
//  Copyright © 2017年 钱超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//     [self methodOnePerformSelector];
    [self chargeNotify];
}

- (void) chargeNotify{
    if ([[UIApplication sharedApplication] currentUserNotificationSettings].types  == UIRemoteNotificationTypeNone) {
        UIAlertView *altView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"为了更好的替您服务，请开启通知" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"开启", nil];
        
        [altView show];
    }
}
    

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(buttonIndex == 1){
        [self jumpSet];
    }
}

//跳转到系统设置
- (void) jumpSet{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"prefs:root=NOTIFICATIONS_ID"]];
}

- (void)methodOnePerformSelector{
    [self performSelector:@selector(delayMethod) withObject:nil/*可传任意类型参数*/ afterDelay:2.0];
}

- (void)delayMethod{
    NSLog(@"delayMethodEnd");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
