//
//  PinkViewController.m
//  
//
//  Created by WorkStation on 9/7/17.
//
//

#import "PinkViewController.h"
#import "SWRevealViewController.h"

@implementation PinkViewController

- (void)viewDidLoad {
    SWRevealViewController *revealViewController = self.revealViewController;
    if (revealViewController) {
        [self.pinkMenuButton setTarget:revealViewController];
        [self.pinkMenuButton setAction:@selector(revealToggle:)];
        
        [self.navigationController.navigationBar addGestureRecognizer:revealViewController.panGestureRecognizer];
    }
}

@end
