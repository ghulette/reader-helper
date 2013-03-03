//
//  GoogleReader.m
//  Reader Helper
//
//  Created by Geoff Hulette on 7/28/08.
//  Copyright 2008 Collidescope. All rights reserved.
//

#import "GoogleReader.h"


@implementation GoogleReader

+(void)subscribeToFeed:(NSString *)feedURL
{
	NSString *apiStr = @"https://www.google.com/reader/view/feed/";
	CFStringRef feedStr = CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)feedURL, NULL, (CFStringRef)@";/?:@&=+$,", kCFStringEncodingUTF8);
	NSString *urlStr = [apiStr stringByAppendingString:[NSString stringWithFormat:@"%@", feedStr]];
	// NSLog(@"Loading Google Reader URL: %@", urlStr);
	[[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:urlStr]];
}

@end
