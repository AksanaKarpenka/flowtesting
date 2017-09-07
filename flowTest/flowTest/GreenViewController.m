//
//  GreenViewController.m
//  flowTest
//
//  Created by WorkStation on 9/7/17.
//  Copyright © 2017 WorkStation. All rights reserved.
//

#import "GreenViewController.h"
#import "SWRevealViewController.h"

@interface GreenViewController ()

@end

@implementation GreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    SWRevealViewController *revealViewController = self.revealViewController;
    if (revealViewController) {
        [self.greenMenuButton setTarget:revealViewController];
        [self.greenMenuButton setAction:@selector(revealToggle:)];
        
        [self.navigationController.navigationBar addGestureRecognizer:revealViewController.panGestureRecognizer];
    }
}


@end
