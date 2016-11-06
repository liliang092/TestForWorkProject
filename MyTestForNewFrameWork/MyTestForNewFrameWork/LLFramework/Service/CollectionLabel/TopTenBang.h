//
//  TopTenBang.h
//  MeMoo
//
//  Created by 幻维科技Mac001 on 16/11/3.
//  Copyright © 2016年 HWSJ. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JCTagListView;
@protocol TopTenBangDelegate <NSObject>
@required;
-(void)selectTopten:(NSInteger)index;
@end
@interface TopTenBang : UIView

-(id)initWithFrame:(CGRect)frame delegate:(id<TopTenBangDelegate>)delegate;

-(void)setWithArray:(NSArray*)array;
@property(strong,nonatomic)JCTagListView * topView;
@property(assign,nonatomic)id<TopTenBangDelegate> delegate;

@end
