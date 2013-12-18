//
//  JCAppDelegate.m
//  JCWaveFormImage
//
//  Created by John Clem on 12/12/13.
//  Copyright (c) 2013 Pretty Great. All rights reserved.
//

#import "JCAppDelegate.h"
#import "JCWaveFormImage.h"
#import "JCWaveFormImageView.h"

@interface JCAppDelegate ()

@property (nonatomic, weak) IBOutlet JCWaveFormImageView *imageView;
@property (nonatomic, weak) IBOutlet NSScrollView *scrollView;

@end

@implementation JCAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [self generateWaveForm];
}

- (void)generateWaveForm
{
    NSURL *audioURL = [[NSBundle mainBundle] URLForResource:@"poppa-santa-claus" withExtension:@"mp3"];
    NSColor *color = [NSColor colorWithCalibratedRed:0.9 green:0.1 blue:0.1 alpha:0.8];
    CGSize size = CGSizeMake(2100.f, 150.f);
    NSImage *waveformImage = [JCWaveFormImage waveformForAssetAtURL:audioURL
                                                              color:color
                                                               size:size
                                                              scale:1.0
                                                              style:JCWaveformStyleFull];
	_imageView.image = waveformImage;
    [_scrollView addSubview:_imageView];
//    [_imageView setNeedsDisplay:YES];
}

@end
