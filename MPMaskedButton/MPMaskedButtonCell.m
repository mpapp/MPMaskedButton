//
//  MPMaskedButtonCell.m
//  MPMaskedButton
//
//  Created by Matias Piipari on 20/12/2014.
//  Copyright (c) 2014 Matias Piipari. All rights reserved.
//

#import "MPMaskedButtonCell.h"

#import "MPMaskedButtonRenderer.h"

@implementation MPMaskedButtonCell

- (void)drawBezelWithFrame:(NSRect)frame inView:(NSView *)controlView {
    [MPMaskedButtonRenderer drawMaskWithFillColor:self.maskFillColor
                                 overlayFillColor:self.isHighlighted ? [self.overlayFillColor colorWithAlphaComponent:0.5] : self.overlayFillColor
                                         diameter:frame.size.width];
}

@end


@implementation MPMaskedPlusButtonCell

- (void)drawBezelWithFrame:(NSRect)frame inView:(NSView *)controlView {
    [super drawBezelWithFrame:frame inView:controlView];
    [MPMaskedButtonRenderer drawPlusSymbolWithFillColor:self.maskFillColor
                                               diameter:frame.size.width
                                                padding:self.padding
                                            strokeWidth:self.isHighlighted ? self.strokeWidth + 1.5f : self.strokeWidth
                                               rounding:self.rounding];
}

@end


@implementation MPMaskedOpenButtonCell

- (void)highlight:(BOOL)flag withFrame:(NSRect)cellFrame inView:(NSView*)controlView {
    
}

- (void)drawBezelWithFrame:(NSRect)frame inView:(NSView *)controlView {
    [super drawBezelWithFrame:frame inView:controlView];
    [MPMaskedButtonRenderer drawOpenSymbolWithFillColor:self.maskFillColor
                                               diameter:frame.size.width
                                                padding:self.padding
                                            strokeWidth:self.isHighlighted ? self.strokeWidth + 1.0f : self.strokeWidth
                                               rounding:self.rounding * 0.2
                                               openness:40
                                       diameterFraction:0.85]; // WARNING: this may not work for non-flipped views and / or the diameterFraction param may need inverting for non-flipped rendering?
}

@end


@implementation MPMaskedFeedbackButtonCell


- (void)drawBezelWithFrame:(NSRect)frame inView:(NSView *)controlView {
    [super drawBezelWithFrame:frame inView:controlView];
    [MPMaskedButtonRenderer drawFeedbackButtonWithFillColor:self.maskFillColor];
}

@end