//
//  StringUtil.m
//  StringCheck
//
//  Created by takagi-yuzuho on 2017/06/26.
//  Copyright © 2017年 ITC. All rights reserved.
//

#import "StringUtil.h"

@implementation StringUtil

+ (NSString*)isStringCheckWithParam:(NSString*)param {
    NSString* resultString;
    
    //d
    param = [param stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    param = [param stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    //a
    if(param.length == 0) {
        NSLog(@"何も入力されていません。");
        resultString = @"何も入力されていません。";
        
        //b
    } else if(param.length >= 140) {
        NSLog(@"投稿文が長すぎます。");
        resultString = @"投稿文が長すぎます。";
        
        //d
    } else if([param isEqualToString:@" "]) {
        NSLog(@"スペースのみです。");
        resultString = @"スペースのみです。";
        
    } else {
        resultString = param;
    }
    return resultString;
}

@end
