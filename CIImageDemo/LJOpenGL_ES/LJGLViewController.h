//
//  LJGLViewController.h
//  CIImageDemo
//
//  Created by LiJie on 2017/8/19.
//  Copyright © 2017年 LiJie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GLKit/GLKit.h>


@interface LJGLViewController : GLKViewController
{
    GLuint vertexBufferID;
}

@property(nonatomic, strong)GLKBaseEffect* baseEffect;



@end
