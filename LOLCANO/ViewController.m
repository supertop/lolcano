//
//  ViewController.m
//  LOLCANO
//
//  Created by Oisin Prendiville on 10/9/14.
//  Copyright (c) 2014 Supertop. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	UIImage *lolcano = [UIImage imageNamed:@"Lolcano"];
	self.imageView = [[UIImageView alloc] initWithImage:lolcano];
	[self.view addSubview:self.imageView];
	
	[self updateLabel];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)didTap:(UITapGestureRecognizer *)sender {
	[UIView animateWithDuration:0.40 delay:0.0 usingSpringWithDamping:0.75 initialSpringVelocity:self.slider.value options:UIViewAnimationOptionBeginFromCurrentState animations:^{
		self.imageView.center = [sender locationInView:self.view];
	} completion:^(BOOL finished) {
		NSLog(@"WHO'S LAUGHING NOW?");
	}];
}

- (IBAction)sliderChanged:(id)sender {
	[self updateLabel];
}

- (void)updateLabel {
	self.label.text = [NSString stringWithFormat:@"%@",@(self.slider.value)];
}

@end
