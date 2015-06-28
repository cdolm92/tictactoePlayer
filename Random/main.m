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
      
        
        
        NSArray *toss = @[@"h",@"t"];
        
//        NSLog(@"\nType:\n\nh.Heads\n\nt.Tails\n");
//        
//        scanf("%s:", &headsTails);
//
//        NSString *playerSelection = [NSString stringWithFormat:@"%s", &headsTails];
        
        char headsTails;
        while (headsTails != 'h' && headsTails != 't') {
            printf("\nChoose heads(h) or tails(t): ");
            scanf("%c", &headsTails);
            fpurge(stdin);
            if(headsTails == 'h') {
            printf("You chose Heads");
            } else if (headsTails == 't'){
            printf("You chose Tails");
            } else if (headsTails != 'h' && headsTails != 't') {
            printf("Invalid. Select 'h' for heads or 't' for tails!\n");
            }

//            NSString *playerSelection = [NSString stringWithFormat:@"%s", &headsTails];
//            if ([playerSelection isEqualTo: [toss firstObject]]) {
//                NSLog(@"\nYou selected heads");
//                break;
//            }
//            else if ([playerSelection isEqualTo: [toss lastObject]]) {
//                NSLog(@"\nYou selected tails");
//                break;
//            }
//            NSLog(@"Invalid. Select 'h' for heads or 't' for tails!\n");
        }
        
//        if([playerSelection isEqualToString: @"h"]) {
//            NSLog(@"\nYou selected heads");
//        } else if ([playerSelection isEqualToString: @"t"]){
//            NSLog(@"\nYou selected tails");
//        }

        
        NSString *playerSelection = [NSString stringWithFormat:@"%c", headsTails];
        
        
        
        //Random Toss H OR T
        
        
        
        NSUInteger randomNumber = arc4random_uniform((int)[toss count]);
        
        NSString *headsOrTails = [toss objectAtIndex:randomNumber];
        
        if ([headsOrTails isEqualToString:[toss firstObject]]) {
            printf("\nCoin is on Heads\n\n");
        } else if ([headsOrTails isEqualToString:[toss lastObject]]) {
            printf("\nCoin is on Tails\n\n");
        }

        
        
        
        
//        Player check
        
        if([headsOrTails isEqualToString: playerSelection]) {
            printf("Nice! you are Player 1\n\n");
        } else {
            printf("Bummer, you are Player 2\n\n");
        }
        
//
//        
//        //RESULTS
//        
        NSLog(@"PLAYER INPUT: %@", playerSelection);

        NSLog(@"RANDOM TOSS: %@", headsOrTails);
        
        
        
    }
    return 0;
}
