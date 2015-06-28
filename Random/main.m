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
      
        char headsTails;
        
        NSLog(@"\nType:\n\nh.Heads\n\nt.Tails\n");
        
        scanf("%s:", &headsTails);

        NSString *playerSelection = [NSString stringWithFormat:@"%s", &headsTails];
        
        if([playerSelection isEqualToString: @"h"]) {
            NSLog(@"\nYou selected heads");
        } else if ([playerSelection isEqualToString: @"t"]){
            NSLog(@"\nYou selected tails");
        }
        
        while ([playerSelection isNotEqualTo: @"h"]) {
            NSLog(@"Invalid. Select 'h' or 't'");
        }
        
        
        
        
        
        
       
        
        
        //Random Toss H OR T
        
        NSArray *toss = @[@"h",@"t"];
        
        NSUInteger randomNumber = arc4random_uniform((int)[toss count]);
        
        NSString *headsOrTails = [toss objectAtIndex:randomNumber];
        
        if ([headsOrTails isEqualToString:[toss firstObject]]) {
            printf("\nYou got heads\n\n");
        } else {
            printf("\nYou got tails\n\n");
        }

        
        
        
        
        //Player check
        
        if([headsOrTails isEqualToString: playerSelection]) {
            printf("Nice! you are Player 1\n\n");
        } else {
            printf("Bummer, you are Player 2\n\n");
        }
        
        
        
        //RESULTS
        
        NSLog(@"PLAYER INPUT: %@", playerSelection);

        NSLog(@"RANDOM TOSS: %@", headsOrTails);
        
        
        
    }
    return 0;
}
