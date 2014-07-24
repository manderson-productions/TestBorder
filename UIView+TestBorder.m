//
//  UIView+TestBorder.m
//  Spring
//
//  Created by Mark Anderson on 7/22/14.
//  Copyright (c) 2014 manderson-productions. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

#import "UIView+TestBorder.h"

static CGFloat const kDefaultWidth = 1.0;

@implementation UIView (TestBorder)

- (void)addBordersToSubviewsWithRandomColors {
    const int maxColorVal = 255;
    for (id view in self.subviews) {
        CGFloat red = (CGFloat)(arc4random() % maxColorVal);
        CGFloat green = (CGFloat)(arc4random() % maxColorVal);
        CGFloat blue = (CGFloat)(arc4random() % maxColorVal);
        
        ((UIView *)view).layer.borderColor = [UIColor colorWithRed:red / (CGFloat)maxColorVal green:green / (CGFloat)maxColorVal blue:blue / (CGFloat)maxColorVal alpha:1.0f].CGColor;
        ((UIView *)view).layer.borderWidth = kDefaultWidth;
    }
}

- (void)addBordersToSubviewsWithFadingColor:(UIColor *)fadeColor {
    [self.subviews enumerateObjectsUsingBlock:^(id view, NSUInteger idx, BOOL *stop) {
        if ([view respondsToSelector:@selector(layer)]) {
            ((UIView *)view).layer.borderColor = [fadeColor colorWithAlphaComponent:(CGFloat)idx / self.subviews.count].CGColor;
            ((UIView *)view).layer.borderWidth = kDefaultWidth;
        }
    }];
}

@end
