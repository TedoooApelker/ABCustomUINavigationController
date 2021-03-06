//
//  SecondViewController.m
//  SquaresFlipNavigationExample
//
//  Created by Andrés Brun on 7/14/13.
//  Copyright (c) 2013 Andrés Brun. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirthViewController.h"
#import "FlipSquaresNavigationController.h"

@interface SecondViewController ()
- (IBAction)popViewController:(id)sender;
@end

@implementation SecondViewController

- (id)initViewController {
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        self = [[SecondViewController alloc] initWithNibName:@"SecondViewController_iPhone" bundle:nil];
    } else {
        self = [[SecondViewController alloc] initWithNibName:@"SecondViewController_iPad" bundle:nil];
    }
    
    return self;
}

- (BOOL)shouldAutorotate {
    return YES;
}

-(void) dealloc {
    printf("DEALLOC2\n");
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
}


- (IBAction)popViewController:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)pushViewController:(id)sender {
    ThirthViewController *thirthVC = [[ThirthViewController alloc] initViewController];
    [self.navigationController pushViewController:thirthVC animated:YES];
}

@end
