//
//  UnselectableTextView.m
//  LinkedLabel
//
//  Created by Philippe Auriach on 13/03/2015.
//  Copyright (c) 2015 Philippe Auriach. All rights reserved.
//

#import "UnselectableTextView.h"

@implementation UnselectableTextView

- (BOOL)canBecomeFirstResponder {
    return NO;
}

@end
