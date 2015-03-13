//
//  NSMutableAttributedString_additions.m
//  LinkedLabel
//
//  Created by Philippe Auriach on 12/03/2015.
//  Copyright (c) 2015 Philippe Auriach. All rights reserved.
//

#import "NSMutableAttributedString+additions.h"

@implementation NSMutableAttributedString(additions)

- (NSMutableAttributedString *)appendString:(NSString *)string {
    
    NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:string];

    [self appendAttributedString:attrStr];
    
    return self;
}

- (NSMutableAttributedString *)appendLink:(NSString *)string forURL:(NSString*)url {
    
    NSMutableAttributedString *underlinedText = [[NSMutableAttributedString alloc] initWithString:string];
    
    [underlinedText addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInt:NSUnderlineStyleSingle] range:NSMakeRange(0, [string length])];
    
    [underlinedText addAttribute:NSLinkAttributeName value:url range:NSMakeRange(0, [string length])];
    
    [self appendAttributedString:underlinedText];
    
    return self;
}

@end
