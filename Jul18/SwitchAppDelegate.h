//
//  AppDelegate.h
//  Jul18
//
//  Created by matthewdumptruck on 7/18/13.
//  Copyright (c) 2013 matthewdumptruck. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h>
@class View;

@interface SwitchAppDelegate: UIResponder <UIApplicationDelegate, AVAudioPlayerDelegate> {
	AVAudioPlayer *player;
	View *view;
	UIWindow *_window;
}

- (void) valueChanged: (id) sender;

@property (strong, nonatomic) UIWindow *window;
@end
