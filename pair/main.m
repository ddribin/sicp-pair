#import "DDPair.h"

int main (int argc, const char * argv[])
{ @autoreleasepool {

    DDPair pair = DDMakePair(@"red", @"green");
    NSLog(@"first: %@", DDPairFirst(pair));
    NSLog(@"second: %@", DDPairSecond(pair));

    return 0;
}}

