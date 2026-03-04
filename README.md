# Example to Check gcov -fcondition-coverage

This uses a fairly minimal example so it is easy to also inspect the 
intermediate assembler code for it.

The focus here is how (newer) gcov measures condition coverage also for
the infamous C conditional `(<condition> ? <expression-1> : <expression-2>)`
that is forbidden for most projects where branch coverage needs to be
measured.



