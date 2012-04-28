//
//  FirstViewController.m
//  helpViewer
//
//  Created by 真有 津坂 on 12/04/29.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"
//追加、Add
#import "AppDelegate.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize countV;
@synthesize hukidashi1;

//追加、Add
- (void)viewWillAppear:(BOOL)animated
{
    [self FukiHantei];
    [super viewWillAppear:animated];
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //追加、Add
    //タップすると吹き出しを消す指令を出す、The command "a help will disappear if a tap is carried out" is issued.
    hukidashi1.userInteractionEnabled = YES;
    [hukidashi1 addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideFukidashi)]];
}

- (void)viewDidUnload
{
    [self setCountV:nil];
    [self setHukidashi1:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

//追加、Add
//アプリの初回起動時のみ吹き出し(ヘルプ画面)を表示、A help will be displayed if an application is started for the first time. 
- (void)FukiHantei {
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    countV.text = [NSString stringWithFormat:@"%d",appDelegate.saveint];
    if (appDelegate.saveint == 0) {
        hukidashi1.image = [UIImage imageNamed:@"Fukidashi1.png"];
        
    } else {
        hukidashi1.image = nil;
    }
    
}

//追加、Add
//吹き出しを消す、A help is erased.
- (void)hideFukidashi {
    hukidashi1.image = nil;
}

@end
