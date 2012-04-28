//
//  AppDelegate.h
//  helpViewer
//
//  Created by 真有 津坂 on 12/04/29.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    //アプリを終了するときに「1」という数を保存、"1" is saved when ending an application. 
    NSInteger saveint;

}

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic,assign) NSInteger saveint;

@end
