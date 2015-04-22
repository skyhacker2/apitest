//
//  MainViewController.m
//  ApiTest
//
//  Created by Eleven Chen on 15/4/21.
//  Copyright (c) 2015年 Eleven. All rights reserved.
//

#import "MainViewController.h"
#import "UITestTableViewController.h"

@interface MainViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property NSMutableArray* titles;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 初始化变量
    self.titles = [NSMutableArray new];
    
    [self loadTableData];
    [self.tableView setDataSource:self];
    [self.tableView setDelegate:self];
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadTableData {
    [self.titles addObject:@"UITest"];
}

#pragma mark - tableview data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString* identify = @"MainListCell";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identify forIndexPath:indexPath];
    cell.textLabel.text = [self.titles objectAtIndex:indexPath.row];
    return cell;
}


#pragma mark - tableview select
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController* controll = [self.navigationController.storyboard instantiateViewControllerWithIdentifier:@"UITest"];
    [self.navigationController pushViewController:controll animated:YES];
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
