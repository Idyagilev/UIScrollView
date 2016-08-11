//
//  ViewController.m
//  ScrollView
//
//  Created by new on 11.08.16.
//  Copyright © 2016 F&G. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    int yPosition;
}

@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;

- (void) putLabelScrollView : (int) numberOfLabels;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blueColor];
    
    yPosition = 25;
    
    self.myScrollView.backgroundColor = [UIColor redColor];
    
    [self putLabelScrollView:15];
}

- (void) putLabelScrollView:(int)numberOfLabels {
    
    for (int i = 0 ; i < numberOfLabels; i++) {
        UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(25, yPosition, 180, 70)];
        [label setText:[NSString stringWithFormat:@"Boom %i", i]];
        [self.myScrollView addSubview:label];
        [label setBackgroundColor:[UIColor orangeColor]];
        yPosition += 75;
    }
    
    [self.myScrollView setContentSize:CGSizeMake(self.myScrollView.frame.size.width, yPosition)];
    [self.view addSubview:self.myScrollView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
