//
//  leftDrawerViewController.h
//  MMDrawerController-with-storybord-demo
//
//  Created by harveyliu on 11/3/14.
//  Copyright (c) 2014 com.wenzizone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface leftDrawerViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>
{
    @private
    NSArray *leftDrawMenuLists;
}

@property (weak, nonatomic) IBOutlet UITableView *leftDrawerTableView;

@end
