#import "ArrayCalculator.h"

@implementation ArrayCalculator
+ (NSInteger)maxProductOf:(NSInteger)numberOfItems itemsFromArray:(NSArray *)array {
    NSMutableArray *myArray = [array mutableCopy];
    unsigned long n = [myArray count];
    int i=0;
    while (i<n){
        if ([myArray[i] isKindOfClass: [NSString class]]) {
            [myArray removeObjectAtIndex:i];
            n=n-1;
            if (i>0) {i=i-1;} else i=0;
        }
        else
            i=i+1;}
    if (!myArray.count) {
        return 0;
    }
    else if ([myArray count] <= numberOfItems) {
        NSInteger x = 1;
        for (int i=0; i<[myArray count]; i++) {
            x = x*[myArray[i] integerValue];
        }
        return x;
        //NSInteger mySum = [[myArray valueForKeyPath: @"@avg.floatValue"] integerValue];
        //NSInteger x = mySum*[myArray count];
        //return x;
    }
    else {
        NSArray *sortedArray = [myArray sortedArrayUsingComparator: ^(id obj1, id obj2) {
            if (labs([obj1 integerValue]) > labs([obj2 integerValue])) {
                return (NSComparisonResult)NSOrderedDescending;
            }
            
            if (labs([obj1 integerValue]) < labs([obj2 integerValue])) {
                return (NSComparisonResult)NSOrderedAscending;
            }
            return (NSComparisonResult)NSOrderedSame;
        }];
        NSInteger x = 1;
        NSInteger z = 0;
        NSInteger y = numberOfItems;
        NSMutableArray *newArray = [NSMutableArray array];
        for (z = [sortedArray count]-1; z>[sortedArray count]-1-y; z--) {
            x = x*[sortedArray[z] integerValue];
            if ([sortedArray[z] integerValue] < 0) {
                [newArray addObject: [NSNumber numberWithInteger: [sortedArray[z] integerValue]]];
            }
        }
        if (x>0) {
            return x;
        }
        else {
            x = x*([sortedArray[[sortedArray count]-1-y] integerValue])/[newArray.lastObject intValue];
            return x;
        }
        
      //  NSArray *sortedArray = [[[myArray sortedArrayUsingSelector:@selector(compare:)] reverseObjectEnumerator] allObjects];
        
        
        }
    
}
@end
