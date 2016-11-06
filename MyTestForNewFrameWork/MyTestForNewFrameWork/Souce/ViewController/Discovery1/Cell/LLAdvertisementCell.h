//
//  LLAdvertisementCell.h
//  MyTestForNewFrameWork
//
//  Created by Liliang on 16/10/26.
//  Copyright © 2016年 leiyukeyi. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^AdClickAction)(id model);
@interface LLAdvertisementCell : UICollectionViewCell
AS_BLOCK(AdClickAction, myAdClick);
-(void)upDataModel:(id)model;
@end
