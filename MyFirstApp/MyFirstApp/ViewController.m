//
//  ViewController.m
//  MyFirstApp
//
//  Created by Rajkumar S on 8/17/17.
//  Copyright © 2017 Eezy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ChangeTextButtonClicked:(id)sender {
    self.titleLabel.text = @"Hello Sri Krishna";
    [UIView animateWithDuration:2.0 animations:^{
        CGFloat redLevel    = rand() / (float) RAND_MAX;
        CGFloat greenLevel  = rand() / (float) RAND_MAX;
        CGFloat blueLevel   = rand() / (float) RAND_MAX;
        self.titleLabel.layer.backgroundColor = [UIColor colorWithRed: redLevel green: greenLevel blue: blueLevel alpha: 1.0].CGColor;
    } completion:NULL];

}

@end
