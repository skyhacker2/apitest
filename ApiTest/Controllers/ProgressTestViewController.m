//
//  ProgressTestViewController.m
//  ApiTest
//
//  Created by Eleven Chen on 15/4/22.
//  Copyright (c) 2015年 Eleven. All rights reserved.
//

#import "ProgressTestViewController.h"

@interface ProgressTestViewController ()
@property (weak, nonatomic) IBOutlet UILabel *progressLabel;
@property (weak, nonatomic) IBOutlet UIProgressView *progressView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicator;

@property (weak) NSTimer *progressTimer;

@end

@implementation ProgressTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onStartButtonTouchUp:(id)sender {
    [self.progressView setProgress:0.0 animated:NO];
    [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(onTimerFire:) userInfo:nil repeats:YES];
}
- (IBAction)onStartButton2TouchUp:(id)sender {
    [self.indicator startAnimating];
}

- (void)onTimerFire: (NSTimer*) theTimer {
    if (self.progressView.progress == 1.0) {
        [theTimer invalidate];
    }
    float current = self.progressView.progress;
    [self.progressView setProgress:(theTimer.timeInterval + current) animated:YES];
    
    NSLog(@"onTimeFire");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
