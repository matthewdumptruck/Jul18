//
//  View.m
//  Jul18
//
//  Created by matthewdumptruck on 7/18/13.
//  Copyright (c) 2013 matthewdumptruck. All rights reserved.
//

#import "View.h"

@implementation View
@synthesize mySwitch;	
- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor orangeColor];
		
		//Do not specify a size for the switch.
		//Let the switch assume its own natural size.
		mySwitch = [[UISwitch alloc] initWithFrame: CGRectZero];
		if (mySwitch == nil) {
			return nil;
		}
        
		//Call the valueChanged: method of the application delegate
		//when the value of the switch is changed.
		
		[mySwitch addTarget: [UIApplication sharedApplication].delegate
                     action: @selector(valueChanged:)
           forControlEvents: UIControlEventValueChanged
         ];
		
		//Center the switch in the SwitchView.
		CGRect b = self.bounds;
        
		mySwitch.center = CGPointMake(
                                      b.origin.x + b.size.width / 2,
                                      b.origin.y + b.size.height / 2
                                      );
        
		mySwitch.on = NO;	//the default
		[self addSubview: mySwitch];
	}
	return self;
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void) drawRect: (CGRect) rect
 {
 // Drawing code
 }
 */

@end
