//
//  ThirthViewController.m
//  SquaresFlipNavigationExample
//
//  Created by Andrés Brun on 7/25/13.
//  Copyright (c) 2013 Andrés Brun. All rights reserved.
//

#import "ThirthViewController.h"
#import "ViewController.h"

@interface ThirthViewController ()

@end

@implementation ThirthViewController

- (id)initViewController {
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        self = [[ThirthViewController alloc] initWithNibName:@"ThirthViewController_iPhone" bundle:nil];
    } else {
        self = [[ThirthViewController alloc] initWithNibName:@"ThirthViewController_iPad" bundle:nil];
    }
    
    return self;
}

- (BOOL)shouldAutorotate {
    return YES;
}

-(void) dealloc {
    printf("DEALLOC3\n");
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
}

- (IBAction)popViewController:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)popToFirstViewController:(id)sender {
//    self.navigationController.viewControllers =  [self.navigationController.viewControllers subarrayWithRange:NSMakeRange(1, self.navigationController.viewControllers.count - 1)];
    UIViewController *firstVc = [[ViewController alloc] initViewController];

    NSMutableArray *arr = [self.navigationController.viewControllers mutableCopy];
    [arr insertObject:firstVc atIndex:0];
    self.navigationController.viewControllers = arr;
    [self.navigationController popViewControllerAnimated: true];
//    [self.navigationController popToViewController:firstVC animated:YES];
}

- (IBAction)popToRootViewController:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
