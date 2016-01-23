//
//  MPHoverButton.h
//  Manuscripts
//
//  Created by Matias Piipari on 28/07/2015.
//  Copyright (c) 2015 Manuscripts.app Limited. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class MPHoverButton;

@protocol MPHoverButtonDelegate <NSObject>
- (void)mouseDidEnterHoverButton:(MPHoverButton *)hoverButton withEvent:(NSEvent *)event;
- (void)mouseDidMoveOverHoverButton:(MPHoverButton *)hoverButton withEvent:(NSEvent *)event;
- (void)mouseDidExitHoverButton:(MPHoverButton *)hoverButton withEvent:(NSEvent *)event;
- (void)mouseDidGoDownInsideHoverButton:(MPHoverButton *)hoverButton withEvent:(NSEvent *)event;
- (void)mouseDidGoUpInsideHoverButton:(MPHoverButton *)hoverButton withEvent:(NSEvent *)event;
@end

@interface MPHoverButton : NSButton
@property (readwrite, weak) IBOutlet id<MPHoverButtonDelegate> delegate;
@end
