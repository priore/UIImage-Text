//
//  ViewController.h
//  ImageText
//
//  Created by Danilo Priore on 27/04/13.
//  Copyright (c) 2013 Danilo Priore. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIImageView *image;
    IBOutlet UITextField *text;
}

- (IBAction)didTextChange:(id)sender;

@end
