# Fortran pass-by-result example

Build and run with GNU Fortran:

```bash
gfortran main.f90 -o assignment3
./assignment3
```

The subroutine's `INTENT(OUT)` parameters are output-only. The main program
prints its variables before and after the call, while the subroutine prints
the results it assigns.
