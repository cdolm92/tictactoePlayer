//
//  main.m
//  Random
//
//  Created by Christella on 6/27/15.
//  Copyright (c) 2015 Christella. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        char playerSelection;
        
        printf("Type:\n\nh.Heads\n\nt.Tails\n");
        
        scanf("%c:", &playerSelection);
        
        printf("You selected %c\n", playerSelection);
        
        if ((playerSelection != 'h') && (playerSelection != 't')) {
            printf("Your selection is invalid. Please try again.\n");
        }
        
        NSString *headsOrTails = @"ht";
        
        NSString *toss = [headsOrTails substringWithRange:NSMakeRange(arc4random_uniform([headsOrTails length]), 1)];
        
        
        if(toss != playerSelection) {

            printf("You are the Player 1\n");
           }  else {
            printf("You are Player 2\n");
           }
        
        NSLog(@"%@",toss);
        
        
        
        
    }
    return 0;
}
