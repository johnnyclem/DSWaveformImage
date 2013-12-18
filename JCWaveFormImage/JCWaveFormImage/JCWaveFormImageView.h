//
//  JCWaveFormImageView.h
//  JCWaveFormImage
//
//  Created by John Clem on 12/12/13.
//  Copyright (c) 2013 Pretty Great. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface JCWaveFormImageView : NSImageView

@property (nonatomic, strong) NSURL *audioURL;
@property (nonatomic, strong) NSColor *waveformColor;

@end
