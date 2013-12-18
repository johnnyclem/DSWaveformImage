//
//  JCWaveFormImage.h
//  JCWaveFormImage
//
//  Created by John Clem on 12/12/13.
//  Copyright (c) 2013 Pretty Great. All rights reserved.
//

#import <Cocoa/Cocoa.h>

typedef enum {
    JCWaveformStyleStripes = 0,
    JCWaveformStyleFull = 1
} JCWaveformStyle;

@interface JCWaveFormImage : NSImage
{
    NSInteger _sampleCount;
    Float32 _normalizeMax;
    float _imageHeight;
    float _imageWidth;
    
    Float32 *_samples;
    CGSize _graphSize;
}

@property (nonatomic) NSColor *graphColor;
@property (nonatomic) JCWaveformStyle style;

+ (NSImage *)waveformForAssetAtURL:(NSURL *)url
                             color:(NSColor *)color
                              size:(CGSize)size
                             scale:(CGFloat)scale
                             style:(JCWaveformStyle)style;

@end
