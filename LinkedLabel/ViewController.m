//
//  ViewController.m
//  LinkedLabel
//
//  Created by Philippe Auriach on 12/03/2015.
//  Copyright (c) 2015 Philippe Auriach. All rights reserved.
//

#import "ViewController.h"
#import "NSMutableAttributedString+additions.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:@"This is an example of a link inside a classic UILabel: "];
    
    NSString *firstLink = @"A link to whatever you want";
    [str appendLink:firstLink forURL:@"URL_ID_1"];
    
    [str appendString:@". This part is not a link. "];
    
    NSString *secondLink = @"But this part is another link!";
    [str appendLink:secondLink forURL:@"URL_ID_2"];
    
    self.exampleTV.attributedText = str;
    
    
    self.exampleTV.delegate = self;
}

-(BOOL)textView:(UITextView *)textView shouldInteractWithTextAttachment:(NSTextAttachment *)textAttachment inRange:(NSRange)characterRange {
    return NO;
}

-(BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange {
    
    //DO whatever you want with the link
    NSLog(@"%@", [URL absoluteString]);
    if([[URL absoluteString] isEqualToString:@"URL_ID_1"]){
        
    } else if([[URL absoluteString] isEqualToString:@"URL_ID_2"]){
        
    }
    
    return NO;
}

@end
