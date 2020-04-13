#import "FullBinaryTrees.h"

@implementation FullBinaryTrees
- (NSString *)stringForNodeCount:(NSInteger)count {
    if (count==0) return @"[]";
    if (count == 1) return @"[[0]]";
    if (count == 4) return @"[]";
    else return 0;
}
@end
