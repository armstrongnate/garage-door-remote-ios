//
//  GDRViewController.m
//  GarageDoorRemote
//
//  Created by Nate Armstrong on 5/7/14.
//  Copyright (c) 2014 Nate Armstrong. All rights reserved.
//

#import "GDRViewController.h"

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
  self.garageButtonImage.highlighted = NO;
}

- (IBAction)garageButtonWasPressedDown:(UIButton *)sender {
  self.garageButtonImage.highlighted = YES;
}

- (IBAction)unwindFromSettings:(UIStoryboardSegue *)segue {
  NSLog(@"Came from settings");
}


@end
