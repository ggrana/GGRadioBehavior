//
//  GGViewController.m
//  ExampleGGRadioBehavior
//
//  Created by Gustavo Graña on 07/04/13.
//  Copyright (c) 2013 Gustavo Graña. All rights reserved.
//

#import "GGViewController.h"
#import "GGRadioBehavior.h"

@implementation GGViewController {
    
    __weak IBOutlet UIButton *btnOption1;
    __weak IBOutlet UIButton *btnOption2;
    __weak IBOutlet UIButton *btnOption3;
    GGRadioBehavior* radioBehavior;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    radioBehavior = [GGRadioBehavior new];
    [radioBehavior addButton:btnOption1];
    [radioBehavior addButton:btnOption2];
    [radioBehavior addButton:btnOption3];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)action:(id)sender{
    NSLog(@"Action!");
}

@end
