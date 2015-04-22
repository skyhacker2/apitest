//
//  ButtonTestViewController.m
//  ApiTest
//
//  Created by Eleven Chen on 15/4/22.
//  Copyright (c) 2015年 Eleven. All rights reserved.
//

#import "ButtonTestViewController.h"

@interface ButtonTestViewController ()
@property (weak, nonatomic) IBOutlet UIButton *titleStateButton;
@property (weak, nonatomic) IBOutlet UIButton *imageButton;
@property (weak, nonatomic) IBOutlet UIProgressView *progressView;

@end

@implementation ButtonTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.titleStateButton setTitle:@"Normal" forState:UIControlStateNormal];
    [self.titleStateButton setTitle:@"Selected" forState:UIControlStateSelected];
    [self.titleStateButton setTitle:@"Highlighted" forState:UIControlStateHighlighted];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onImageButtonTouchUp:(id)sender {
    [self.imageButton setSelected:!self.imageButton.isSelected];
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
