#import "SquareDecomposer.h"

@implementation SquareDecomposer
- (NSArray <NSNumber*>*)decomposeNumber:(NSNumber*)number {
   
        NSNumber* q = [NSNumber numberWithLongLong:[number longLongValue] * [number longLongValue]];
            return [self decomposeNumber:number w: q];
        }

        -(NSMutableArray*)decomposeNumber:(NSNumber*)number w:(NSNumber*)y {
            NSMutableArray *myArray = [[NSMutableArray alloc] init];
            if ([y longLongValue] == 0) {
                return myArray;
            }
            
            for (long long i = [number intValue] - 1; i > 0; i--) {
                long long z = [y longLongValue] - i * i;
                if (z >= 0) {
                    myArray = [self decomposeNumber: [NSNumber numberWithLongLong: i]
                                         w:[NSNumber numberWithLongLong: z]];
                    if (myArray != nil) {
                        [myArray addObject: [NSNumber numberWithLongLong: i]];
                        return myArray;
                    }
                }
            }
            return nil;
        
        
     //   return @[@0];
   
}
@end
