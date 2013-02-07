//
//  UILabel+shadowImage.h
//
//  Created by Jeppe Andersen on 2/7/13.
//  Copyright (c) 2013 nocture.dk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <CoreGraphics/CoreGraphics.h>

@interface UILabel (shadowImage)
- (UIImageView *)shadowImage;
+ (UIImageView *)shadowImageForLabel:(UILabel *)label
                     reuseInputLabel:(BOOL)reuse
                         shadowColor:(UIColor *)color
                       shadowOpacity:(CGFloat)opacity
                         shadowRadius:(CGFloat)radius;
@end
