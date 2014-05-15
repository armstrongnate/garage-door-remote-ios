//
//  GDRViewController.m
//  GarageDoorRemote
//
//  Created by Nate Armstrong on 5/7/14.
//  Copyright (c) 2014 Nate Armstrong. All rights reserved.
//

#import "GDRViewController.h"
#import "AFNetworking.h"
#import "GDRSettingsViewController.h"

NSString * const kRASPERRY_PI_URL_KEY = @"garageDoorPiUrl";

@interface GDRViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *garageButtonImage;
@property (weak, nonatomic) IBOutlet UIButton *garageButton;

@end

@implementation GDRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)garageButtonWasPressed:(UIButton *)sender {
  NSString *url = [[NSUserDefaults standardUserDefaults] objectForKey:kRASPERRY_PI_URL_KEY];
  if (url && url.length > 0) {
    [[AFHTTPSessionManager manager] GET:url parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
      self.garageButtonImage.highlighted = NO;
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
      self.garageButtonImage.highlighted = NO;
    }];
  }
  else {
    self.garageButtonImage.highlighted = NO;
  }
}

- (IBAction)garageButtonWasPressedDown:(UIButton *)sender {
  self.garageButtonImage.highlighted = YES;
}

- (IBAction)unwindFromSettings:(UIStoryboardSegue *)segue {
  GDRSettingsViewController *settingsVC = (GDRSettingsViewController *)segue.sourceViewController;
  [[NSUserDefaults standardUserDefaults] setObject:settingsVC.urlTextField.text forKey:kRASPERRY_PI_URL_KEY];
  [[NSUserDefaults standardUserDefaults] synchronize];
}


@end
