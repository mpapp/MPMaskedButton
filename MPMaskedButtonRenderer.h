//
//  MPMaskedButtonRenderer.h
//  MPMaskedButton
//
//  Created by Matias Piipari on 21/12/2014.
//  Copyright (c) 2014-2015 Manuscripts.app Limited. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>


@interface MPMaskedButtonRenderer : NSObject

// Drawing Methods
+ (void)drawMaskWithFillColor: (NSColor*)fillColor overlayFillColor: (NSColor*)overlayFillColor diameter: (CGFloat)diameter;
+ (void)drawPlusSymbolWithFillColor: (NSColor*)fillColor diameter: (CGFloat)diameter padding: (CGFloat)padding strokeWidth: (CGFloat)strokeWidth rounding: (CGFloat)rounding;
+ (void)drawOpenSymbolWithFillColor: (NSColor*)fillColor diameter: (CGFloat)diameter padding: (CGFloat)padding strokeWidth: (CGFloat)strokeWidth rounding: (CGFloat)rounding openness: (CGFloat)openness diameterFraction: (CGFloat)diameterFraction;

+ (void)drawFeedbackButtonWithFillColor:(NSColor *)fillColor;

@end