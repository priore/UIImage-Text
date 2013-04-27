//
//  UIImage+Text.m
//  ImageText
//
//  Created by Danilo Priore on 27/04/13.
//  Copyright (c) 2013 Danilo Priore. All rights reserved.
//  http://www.prioregroup.com
//
//  Short MIT License
//
//  Permission is hereby granted, free of charge, to any person obtaining
//  a copy of this software and associated documentation files (the "Software"),
//  to deal in the Software without restriction, including
//  without limitation the rights to use, copy, modify, merge, publish,
//  distribute, sublicense, and/or sell copies of the Software, and to
//  permit persons to whom the Software is furnished to do so, subject to
//  the following conditions:
//
//  The above copyright notice and this permission notice shall be
//  included in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
//  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
//  LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
//  OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
//  WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import "UIImage+Text.h"

@implementation UIImage (Text)

- (UIImage*)addText:(NSString*)text1
               XPos:(int)xpos
               YPos:(int)ypos
           fontName:(NSString*)fontName
           fontSize:(CGFloat)fontSize
          fontColor:(UIColor*)fontColor {
    
    int w = self.size.width;
    int h = self.size.height;
	
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef context = CGBitmapContextCreate(NULL, w, h, 8, 4 * w, colorSpace, kCGImageAlphaPremultipliedFirst);
    
    CGContextDrawImage(context, CGRectMake(0, 0, w, h), self.CGImage);
    CGContextSetRGBFillColor(context, 0.0, 0.0, 1.0, 1);
	
    char *txt = (char*)[text1 cStringUsingEncoding:NSUTF8StringEncoding];
    char *font = (char*)[fontName cStringUsingEncoding:NSUTF8StringEncoding];
    
    CGContextSelectFont(context, font, fontSize, kCGEncodingMacRoman);
    CGContextSetTextDrawingMode(context, kCGTextFill);
    CGContextSetFillColorWithColor(context, fontColor.CGColor);
    CGContextShowTextAtPoint(context, xpos, ypos, txt, strlen(txt));
    
	CGImageRef imageRef = CGBitmapContextCreateImage(context);
	CGContextSetAllowsAntialiasing(context, YES);
	
	UIImage *result = [UIImage imageWithCGImage:imageRef];
	
	CGImageRelease(imageRef);
    CGContextRelease(context);
    CGColorSpaceRelease(colorSpace);
	
    return result;
}

@end
