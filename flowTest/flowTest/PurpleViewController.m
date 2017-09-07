//
//  PurpleViewController.m
//  flowTest
//
//  Created by WorkStation on 9/7/17.
//  Copyright © 2017 WorkStation. All rights reserved.
//

#import "PurpleViewController.h"
#import "SWRevealViewController.h"

@interface PurpleViewController ()

@end

@implementation PurpleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    SWRevealViewController *revealViewController = self.revealViewController;
    if (revealViewController) {
        [self.purpleMenuButton setTarget:revealViewController];
        [self.purpleMenuButton setAction:@selector(revealToggle:)];
        
        [self.navigationController.navigationBar addGestureRecognizer:revealViewController.panGestureRecognizer];
    }
}


@end
