# My gripes with golang 1.23 from Google

## Easy to fix (top priority -> least priority)

- [x] Increase inlining budget.

## Hard to fix (top priority -> least priority)

- [ ] Add preprocessor support, this will translate go code to go code, and will allow us to do the next things.
- [ ] Add enum support, this is a must have feature when we will be nuking `iota` syntax.
- [ ] Completely nuke `iota` syntax, it's not clear what is inside the enum unless we look at someone else's code. Java fixed this issue by allowing walking through the code VIA an IDE without needing to look at the code.
- [ ] Reduce CGO overhead, it's too slow.
- [ ] Allow inline assembly in a safe way,
- Or, allow easy interop with plain assembly, lets modify the linker to allow this.
