//
//  SecondViewController.h
//  helpViewer
//
//  Created by 真有 津坂 on 12/04/29.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
//保存している数値を表示する、The saved numerical value is displayed. 
@property (weak, nonatomic) IBOutlet UILabel *countV2;
//吹き出し(ヘルプ表示)の画像、The picture of a help.
@property (weak, nonatomic) IBOutlet UIImageView *hukidashi2;

//追加、Add
//アプリが初回の起動かどうか判定、It is judged whether the application made it start for the first time. 
- (void)FukiHantei;

//追加、Add
//タップして吹き出しを消す、If a tap is carried out, a help will disappear.
- (void)hideFukidashi;

@end
