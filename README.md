NSArray-filter-using-block
==========================

A category over NSArray in order to filter an array using a block predicate.

---

NSArray doesn't provide a native method to obtain an array by filtering an existing one using a block.

    - (NSArray *)filteredArrayUsingBlock:(BOOL (^)(id, NSUInteger, BOOL *))predicate;
