//
//  leftDrawerViewController.m
//  MMDrawerController-with-storybord-demo
//
//  Created by harveyliu on 11/3/14.
//  Copyright (c) 2014 com.wenzizone. All rights reserved.
//

#import "leftDrawerViewController.h"
#import "leftDrawerTableViewCell.h"
#import "UIViewController+MMDrawerController.h"
#import "rootViewController.h"

@interface leftDrawerViewController ()

@end

@implementation leftDrawerViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.leftDrawerTableView.dataSource = self;
    self.leftDrawerTableView.delegate = self;
    // Do any additional setup after loading the view.
    leftDrawMenuLists = [NSArray arrayWithObjects:@"Row One",@"Row Tow",@"Row Three",@"Row Four", nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [leftDrawMenuLists count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    leftDrawerTableViewCell *cell = (leftDrawerTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"leftDrawerCell" forIndexPath:indexPath];
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    cell.lbTableRow.text = [leftDrawMenuLists objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self.mm_drawerController closeDrawerAnimated:YES completion:^(BOOL finished) {
        rootViewController *centerViewController = (rootViewController*)[(UINavigationController *)self.mm_drawerController.centerViewController topViewController];
        centerViewController.lbTableRowShow.text = [leftDrawMenuLists objectAtIndex:indexPath.row];
    }];
    
}

@end
