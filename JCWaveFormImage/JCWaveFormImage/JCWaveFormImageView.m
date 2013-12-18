//
//  JCWaveFormImageView.m
//  JCWaveFormImage
//
//  Created by John Clem on 12/12/13.
//  Copyright (c) 2013 Pretty Great. All rights reserved.
//

#import "JCWaveFormImageView.h"
#import "JCWaveFormImage.h"

@implementation JCWaveFormImageView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
	[super drawRect:dirtyRect];
	
    // Drawing code here.
}

- (void)setAudioURL:(NSURL *)audioURL
{
    _audioURL = audioURL;
    self.image = [JCWaveFormImage waveformForAssetAtURL:audioURL
                                                  color:self.waveformColor
                                                   size:self.bounds.size
                                                  scale:2.f
                                                  style:JCWaveformStyleFull];
}

@end
