//
//  MPMaskedButtonCell.h
//  MPMaskedButton
//
//  Created by Matias Piipari on 20/12/2014.
//  Copyright (c) 2014 Matias Piipari. All rights reserved.
//

#import <Cocoa/Cocoa.h>

IB_DESIGNABLE
@interface MPMaskedButtonCell : NSButtonCell
@property (readwrite) IBInspectable NSColor *maskFillColor;
@property (readwrite) IBInspectable NSColor *overlayFillColor;
@property (readwrite) IBInspectable CGFloat padding;
@property (readwrite) IBInspectable CGFloat strokeWidth;
@property (readwrite) IBInspectable CGFloat rounding;
@end

@interface MPMaskedPlusButtonCell : MPMaskedButtonCell
@end

@interface MPMaskedOpenButtonCell : MPMaskedButtonCell
@end

@interface MPMaskedFeedbackButtonCell : MPMaskedButtonCell
@end