JCWaveformImage
===============

JCWaveformImage and JCWaveformImageView offer a simple drop-in solution to generate
and render waveform images from audio files in Mac OSX. 

JCWaveFormImage is a fork of the excellent DSWaveFormImage, which unfortunately requires UIKit and is therefore iOS only.

Installation
------------

* use cocoapods `pod 'JCWaveformImage', '~> 1.0.0'`
* or add the JCWaveformImage folder directly into your project (remember to add AVFoundation to your frameworks).

Usage
-----

To create an NSImage:

```objc
NSURL *audioURL = [[NSBundle mainBundle] URLForResource:@"example_sound" withExtension:@"m4a"];
NSImage *waveformImage = [JCWaveformImage waveformForAssetAtURL:audioURL
                                                          color:[UIColor redColor]
                                                           size:CGSizeMake(500, 300)
                                                          scale:2.0 // retina
                                                          style:DSWaveformStyleFull];
```

To create an NSImageView:

```objc
NSURL *audioURL = [[NSBundle mainBundle] URLForResource:@"example_sound" withExtension:@"m4a"];
self.waveformImageView = [[JCWaveformImageView alloc] initWithFrame:CGRectMake(0, 0, 500, 300)];
[self.waveformImageView setAudioURL:audioURL];
```

What it looks like
------------------

![Screenshot](https://raw.github.com/johnnyclem/JCWaveformImage/master/screenshot.png)
