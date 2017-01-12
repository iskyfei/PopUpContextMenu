//
//  SKPopContextMenuView.h
//  UAIDemo
//
//  Created by sky on 2016/11/17.
//  Copyright © 2016年 sky. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SKPopContextMenuView : UIView

-(id)initWithPoint:(CGPoint)point width:(CGFloat) width data:(NSArray *)items;
-(void)show;
-(void)dismiss;
-(void)dismiss:(BOOL)animated;

@property (nonatomic, copy) UIColor *borderColor;
@property (nonatomic, copy) void (^selectRowAtIndex)(NSString * selectedItem);

@end
