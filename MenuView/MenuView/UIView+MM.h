//
//  UIView+MM.h
//  MenuView
//
//  Created by 毛文豪 on 2019/2/14.
//  Copyright © 2019 毛文豪. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (MM)

@property (assign, nonatomic) CGFloat x;
@property (assign, nonatomic) CGFloat y;
@property (assign, nonatomic) CGFloat width;
@property (assign, nonatomic) CGFloat height;
@property (assign, nonatomic) CGFloat centerX;
@property (assign, nonatomic) CGFloat centerY;
@property (assign, nonatomic) CGSize size;
@property (assign, nonatomic) CGPoint origin;
/**
 Returns the view's view controller (may be nil).
 */
@property (nullable, nonatomic, readonly) UIViewController *viewController;

@end

NS_ASSUME_NONNULL_END
