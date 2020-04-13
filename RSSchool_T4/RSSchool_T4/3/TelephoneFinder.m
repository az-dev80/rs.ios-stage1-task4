#import "TelephoneFinder.h"

@implementation TelephoneFinder
- (NSArray <NSString*>*)findAllNumbersFromGivenNumber:(NSString*)number {
    
    NSMutableArray *myArray = [NSMutableArray array];
    
    if ([number intValue]>=0) {
        int x = (int)[number length];
        for (int i = 0; i < x; i++) {
            
            if ([[NSString stringWithFormat:@"%c", [number characterAtIndex:i]] isEqualToString: @"1"]) {
                [myArray addObject:[number stringByReplacingOccurrencesOfString:@"1" withString:@"2"]];
                [myArray addObject:[number stringByReplacingOccurrencesOfString:@"1" withString:@"4"]];
            }
            if ([[NSString stringWithFormat:@"%c", [number characterAtIndex:i]] isEqualToString: @"2"]) {
                [myArray addObject:[number stringByReplacingOccurrencesOfString:@"2" withString:@"1"]];
                [myArray addObject:[number stringByReplacingOccurrencesOfString:@"2" withString:@"3"]];
                [myArray addObject:[number stringByReplacingOccurrencesOfString:@"2" withString:@"5"]];
            }
            if ([[NSString stringWithFormat:@"%c", [number characterAtIndex:i]] isEqualToString: @"3"]) {
                [myArray addObject:[number stringByReplacingOccurrencesOfString:@"3" withString:@"2"]];
                [myArray addObject:[number stringByReplacingOccurrencesOfString:@"3" withString:@"6"]];
            }
            if ([[NSString stringWithFormat:@"%c", [number characterAtIndex:i]] isEqualToString: @"4"]) {
                [myArray addObject:[number stringByReplacingOccurrencesOfString:@"4" withString:@"1"]];
                [myArray addObject:[number stringByReplacingOccurrencesOfString:@"4" withString:@"5"]];
                [myArray addObject:[number stringByReplacingOccurrencesOfString:@"4" withString:@"7"]];
            }
            if ([[NSString stringWithFormat:@"%c", [number characterAtIndex:i]] isEqualToString: @"5"]) {
                [myArray addObject:[number stringByReplacingOccurrencesOfString:@"5" withString:@"2"]];
                [myArray addObject:[number stringByReplacingOccurrencesOfString:@"5" withString:@"4"]];
                [myArray addObject:[number stringByReplacingOccurrencesOfString:@"5" withString:@"6"]];
                [myArray addObject:[number stringByReplacingOccurrencesOfString:@"5" withString:@"8"]];
            }
            if ([[NSString stringWithFormat:@"%c", [number characterAtIndex:i]] isEqualToString: @"6"]) {
                [myArray addObject:[number stringByReplacingOccurrencesOfString:@"6" withString:@"3"]];
                [myArray addObject:[number stringByReplacingOccurrencesOfString:@"6" withString:@"5"]];
                [myArray addObject:[number stringByReplacingOccurrencesOfString:@"6" withString:@"9"]];
            }
            if ([[NSString stringWithFormat:@"%c", [number characterAtIndex:i]] isEqualToString: @"7"]) {
                [myArray addObject:[number stringByReplacingOccurrencesOfString:@"7" withString:@"4"]];
                [myArray addObject:[number stringByReplacingOccurrencesOfString:@"7" withString:@"8"]];
            }
            if ([[NSString stringWithFormat:@"%c", [number characterAtIndex:i]] isEqualToString: @"8"]) {
                [myArray addObject:[number stringByReplacingOccurrencesOfString:@"8" withString:@"5"]];
                [myArray addObject:[number stringByReplacingOccurrencesOfString:@"8" withString:@"7"]];
                [myArray addObject:[number stringByReplacingOccurrencesOfString:@"8" withString:@"9"]];
                [myArray addObject:[number stringByReplacingOccurrencesOfString:@"8" withString:@"0"]];
            }
            if ([[NSString stringWithFormat:@"%c", [number characterAtIndex:i]] isEqualToString: @"9"]) {
                [myArray addObject:[number stringByReplacingOccurrencesOfString:@"9" withString:@"6"]];
                [myArray addObject:[number stringByReplacingOccurrencesOfString:@"9" withString:@"8"]];
            }
            if ([[NSString stringWithFormat:@"%c", [number characterAtIndex:i]] isEqualToString: @"0"]) {
                [myArray addObject:[number stringByReplacingOccurrencesOfString:@"0" withString:@"8"]];
            }
        }
        return myArray;
    }
    else return nil;
}
@end
