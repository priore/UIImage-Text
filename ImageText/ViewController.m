//
//  ViewController.m
//  ImageText
//
//  Created by Danilo Priore on 27/04/13.
//  Copyright (c) 2013 Danilo Priore. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Text.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    text.text = @"THIS IS MY DREAM!";
    image.image = [UIImage imageNamed:@"image.jpg"];
}

- (IBAction)didTextChange:(id)sender
{
    
    [text resignFirstResponder];
    
    UIImage *img = [UIImage imageNamed:@"image.jpg"];
    image.image = [img addText:text.text
                          XPos:80
                          YPos:300
                      fontName:@"Georgia-Bold"
                      fontSize:46.0
                     fontColor:[UIColor whiteColor]];
    
}

- (void)dealloc
{
    [image release];
    [text release];
    [super dealloc];
}

@end
