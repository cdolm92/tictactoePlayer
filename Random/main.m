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
      
/*User Input Section: 
 
 1. While loop asks user for input 'h' or 't'. If input is 'h' or 't' the 
 input is then, stored in char type, headsTails. If not while loop keeps 
 asking user until their input is 'h' or 't'. 
 
 2. If statement within the loop prints the user input to the user.
 If user input does not match 'h' or 't' the user becomes informed of 
 this b/c  of the if statement.
 
 3.headsTails is then converted from a char type and stored in playerSelection
 as an NSString.

 */
       
        NSArray *toss = @[@"h",@"t"];
        
        char headsTails;
        while (headsTails != 'h' && headsTails != 't') {
            printf("\nChoose heads(h) or tails(t): ");
            scanf("%c", &headsTails);
            fpurge(stdin);
            if(headsTails == 'h') {
            printf("\nYou chose Heads\n");
            } else if (headsTails == 't'){
            printf("You chose Tails\n");
            } else if (headsTails != 'h' && headsTails != 't') {
            printf("Invalid. Select 'h' for heads or 't' for tails!\n");
            }

        NSString *playerSelection = [NSString stringWithFormat:@"%c", headsTails];
        
        
/*
Coin Toss Section:
*/
        
        NSUInteger randomNumber = arc4random_uniform((int)[toss count]);
        
        NSString *headsOrTails = [toss objectAtIndex:randomNumber];
        
        if ([headsOrTails isEqualToString:[toss firstObject]]) {
            printf("\nCoin is on Heads\n\n");
        } else if ([headsOrTails isEqualToString:[toss lastObject]]) {
            printf("\nCoin is on Tails\n\n");
        }



/*      

Player Results:

If coin toss result matches user's input, the user is Player 1. 
Otherwise, user will be player 2.

*/
        
        
        if([headsOrTails isEqualToString: playerSelection]) {
            printf("Nice! you are Player 1. You get to go first. :D\n\n");
        } else {
            printf("Bummer, Looks like you are Player 2\n\n");
        }
        
      
/* 

RESULTS:
 
code prints user input and coin toss result. Purely for
check and debugging.
 
*/
      
        NSLog(@"PLAYER INPUT: %@", playerSelection);

        NSLog(@"RANDOM TOSS: %@", headsOrTails);
        
        
        
    }
    }
    return 0;
}
