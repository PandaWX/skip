//
//  ViewController.m
//  B
//
//  Created by wangxiao on 16/5/3.
//  Copyright © 2016年 wangxiao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)tipToA:(id)sender {
    
    NSLog(@"to A");
    //
    NSString *paramStr = [NSString stringWithFormat:@"myAppTest://username=%@&age=%@&address=%@", @"test123", @"100", @"上海市"];
    NSURL *url = [NSURL URLWithString:[paramStr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    [[UIApplication sharedApplication] openURL:url];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
