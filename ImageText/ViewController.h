//
//  ViewController.h
//  ImageText
//
//  Created by Priore on 27/04/13.
//  Copyright (c) 2013 Priore. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIImageView *image;
    IBOutlet UITextField *text;
}

- (IBAction)didTextChange:(id)sender;

@end
