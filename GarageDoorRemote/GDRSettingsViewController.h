//
//  GDRSettingsViewController.h
//  GarageDoorRemote
//
//  Created by Nate Armstrong on 5/14/14.
//  Copyright (c) 2014 Nate Armstrong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GDRSettingsViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UITextField *urlTextField;
@property (weak, nonatomic) IBOutlet UITextField *uuidTextField;
@property (weak, nonatomic) IBOutlet UISwitch *beaconSwitch;

@end
