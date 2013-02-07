//
//  UILabel+shadowImage.m
//
//  Created by Jeppe Andersen on 2/7/13.
//  Copyright (c) 2013 nocture.dk. All rights reserved.
//

#import "UILabel+shadowImage.h"

@implementation UILabel (shadowImage)
+ (UIImageView *)shadowImageForLabel:(UILabel *)label
                     reuseInputLabel:(BOOL)reuse
                         shadowColor:(UIColor *)color
                       shadowOpacity:(CGFloat)opacity
                        shadowRadius:(CGFloat)radius {
    UILabel *workingLabel;
    
    if (reuse) {
        workingLabel = label;
    } else {
        workingLabel = [label copy];
    }
    
    workingLabel.layer.shadowColor = color.CGColor;
    workingLabel.layer.shadowOpacity = opacity;
    workingLabel.layer.shadowRadius = radius;
    
    UIGraphicsBeginImageContextWithOptions(workingLabel.bounds.size, false, 0);
    [workingLabel.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImageView *shadowedImage = [[UIImageView alloc] initWithImage:UIGraphicsGetImageFromCurrentImageContext()];
    shadowedImage.frame = workingLabel.frame;
    
    return shadowedImage;
}
@end
