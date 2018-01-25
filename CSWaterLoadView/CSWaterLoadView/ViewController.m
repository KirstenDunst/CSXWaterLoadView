//
//  ViewController.m
//  CSWaterLoadView
//
//  Created by CSX on 2018/1/25.
//  Copyright © 2018年 宗盛商业. All rights reserved.
//

#import "ViewController.h"
#import "CSXWaterLoadView.h"

@interface ViewController ()
{
    CSXWaterLoadView *loadingView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    loadingView = [[CSXWaterLoadView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 500)
                                                      title:@"宗"
                                                       font:[UIFont boldSystemFontOfSize:40 ]
                                               showLoadNote:YES];
    [self.view addSubview:loadingView];
    
    UIButton *myCreateButton1 = [UIButton buttonWithType:UIButtonTypeCustom];
    myCreateButton1.frame = CGRectMake(0, 0, 100, 100);
    [myCreateButton1 setBackgroundColor:[UIColor grayColor]];
    [myCreateButton1 setTitle:@"开始" forState:UIControlStateNormal];
    [myCreateButton1 addTarget:self action:@selector(buttonChoose1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:myCreateButton1];
    
    UIButton *myCreateButton = [UIButton buttonWithType:UIButtonTypeCustom];
    myCreateButton.frame = CGRectMake(0, 120, 100, 100);
    [myCreateButton setBackgroundColor:[UIColor grayColor]];
    [myCreateButton setTitle:@"结束" forState:UIControlStateNormal];
    [myCreateButton addTarget:self action:@selector(buttonChoose:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:myCreateButton];
}
- (void)buttonChoose1:(UIButton *)sender{
    static float a = 0.0;
    a += 0.1;
    [loadingView wave];
    loadingView.hidden  = NO;
    if (a >= 1.1) {
        a = 0.1;
    }
    loadingView._h = a;
}
- (void)buttonChoose:(UIButton *)sender{
    [loadingView stopWave];
    loadingView.hidden = YES;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
