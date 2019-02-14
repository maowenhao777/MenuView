//
//  MenuView.h
//  MenuView
//
//  Created by 毛文豪 on 2019/2/14.
//  Copyright © 2019 毛文豪. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class MMMenuView;
@protocol MenuViewDelegate <NSObject>

- (void)menuView:(MMMenuView *)menuView buttonDidClick:(UIButton *)button;

@end

@interface MMMenuView : UIView

- (instancetype)initWithFrame:(CGRect)frame titleArray:(NSArray *)titleArray left:(BOOL)left;

@property (nonatomic, assign) id <MenuViewDelegate> delegate;

@property (nonatomic,assign) CGFloat menuViewX;

@end


NS_ASSUME_NONNULL_END
