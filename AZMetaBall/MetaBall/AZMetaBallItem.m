//
//  AZMetaBallItem.m
//  AZMetaBall
//
//  Created by 阿曌 on 16/1/2.
//  Copyright © 2016年 阿曌. All rights reserved.
//

#import "AZMetaBallItem.h"
#import "PointUtils.h"

@implementation AZMetaBallItem

- (instancetype)initWithView:(UIView *)view {
    self = [super init];
    if(self) {
        self.view = [self duplicate:view];
    
        float w = view.frame.size.width;
        float h = view.frame.size.height;
        
        CGPoint point = [PointUtils getGlobalCenterPositionOf:view];
        
        self.centerCircle = [Circle initWithcenterPoint:point radius:MIN(w, h)/2 color:[UIColor colorWithRed:247/255.0 green:76/255.0 blue:49/255.0 alpha:1]];
        self.touchCircle = [Circle initWithcenterPoint:point radius:MIN(w, h)/2 color:[UIColor colorWithRed:247/255.0 green:76/255.0 blue:49/255 alpha:1]];
    }
    return self;
}

// Duplicate UIView
- (UIView*)duplicate:(UIView*)view
{
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:view];
    return [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];
}

@end
