//
//  NSMutableAttributedString_additions.h
//  LinkedLabel
//
//  Created by Philippe Auriach on 12/03/2015.
//  Copyright (c) 2015 Philippe Auriach. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSMutableAttributedString(additions)

- (NSMutableAttributedString*) appendString: (NSString*)string;

- (NSMutableAttributedString*) appendLink: (NSString*)string forURL:(NSString*)url;

@end
