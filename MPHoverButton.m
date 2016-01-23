//
//  MPHoverButton.m
//  Manuscripts
//
//  Created by Matias Piipari on 28/07/2015.
//  Copyright (c) 2015 Manuscripts.app Limited. All rights reserved.
//

#import "MPHoverButton.h"

@implementation MPHoverButton

- (void)awakeFromNib {
    [super awakeFromNib];
    [self createTrackingArea];
}

- (void)createTrackingArea {
    NSTrackingAreaOptions focusTrackingAreaOptions = NSTrackingActiveInActiveApp;
    focusTrackingAreaOptions |= NSTrackingMouseEnteredAndExited | NSTrackingMouseMoved;
    focusTrackingAreaOptions |= NSTrackingAssumeInside;
    focusTrackingAreaOptions |= NSTrackingInVisibleRect;
    
    NSTrackingArea *focusTrackingArea = [[NSTrackingArea alloc] initWithRect:NSZeroRect
                                                                     options:focusTrackingAreaOptions owner:self userInfo:nil];
    [self addTrackingArea:focusTrackingArea];
}

- (void)mouseEntered:(NSEvent *)theEvent {
    [super mouseExited:theEvent];
    [self.delegate mouseDidEnterHoverButton:self withEvent:theEvent];
}

- (void)mouseExited:(NSEvent *)theEvent {
    [super mouseExited:theEvent];
    [self.delegate mouseDidExitHoverButton:self withEvent:theEvent];
}

- (void)mouseMoved:(NSEvent *)theEvent {
    [super mouseMoved:theEvent];
    [self.delegate mouseDidMoveOverHoverButton:self withEvent:theEvent];
}

- (void)mouseDown:(NSEvent *)theEvent {
    [super mouseDown:theEvent];
    [self.delegate mouseDidGoDownInsideHoverButton:self withEvent:theEvent];
}

- (void)mouseUp:(NSEvent *)theEvent {
    [super mouseUp:theEvent];
    [self.delegate mouseDidGoUpInsideHoverButton:self withEvent:theEvent];
}

@end
