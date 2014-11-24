/**
 * Licensed under Apache Public License. 
 * Author: Jeff Haynie
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import "OrgAppceleratorInputviewModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"
#import "TiViewProxy.h"

@implementation OrgAppceleratorInputviewModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"91d02279-e05d-4ab9-bc70-1e9c2c48b65a";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"org.appcelerator.inputview";
}

-(void)attach:(id)args
{
	ENSURE_UI_THREAD_1_ARG(args);
	ENSURE_SINGLE_ARG(args,NSDictionary);
	
	TiViewProxy *proxy = [args objectForKey:@"inputview"];
	TiViewProxy *textfield = [args objectForKey:@"textview"];
	
	UITextView *textview = [[textfield view] textWidgetView];
	UIView *inputview = [proxy view];
	
	[textview setInputView:inputview];
}

@end
