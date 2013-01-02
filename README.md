NSArray-filter-using-block
==========================

A category over NSArray in order to filter an array using a block predicate.

---

NSArray doesn't provide a native method to obtain an array by filtering an existing one using a block.
This category defines the following method
```
- (NSArray *)filteredArrayUsingBlock:(BOOL (^)(id, NSUInteger, BOOL *))predicate;
```

The predicate block takes three arguments:
    **obj**
        The element in the array.

    **idx**
        The index of the element in the array.

    **stop**
        A reference to a Boolean value. The block can set the value to `YES` to stop further processing of the array. The stop argument is an out-only argument. You should only ever set this Boolean to `YES` within the Block.

The documentation is taken from the Apple documentation of `indexesOfObjectsPassingTest`, since the block has the same signature.

Example of usage
```
NSString * array = @[@"foo", @"foobar", @"bar"]
NSString * filterString = @"bar";
NSArray * filteredArray = [array filteredArrayUsingBlock:^BOOL(id obj, NSUInteger idx, BOOL *stop) {
    NSString * item = obj;
    return [value rangeOfString:filterString].location != NSNotFound;
}];
```