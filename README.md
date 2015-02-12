# Letter Matrix

A **Word Search Game** or **Letter Matrix** solver written in about 20 lines of Haskell.

## Compile & Run

Compile using optimization and (optionally) support for parallelization.

```shell
ghc -O2 -threaded --make Solver.hs
```

Run the solver with the dictionary and input file as command-line arguments.

```shell
./Solver dictionary/eng.dic example/example.txt
```

## Example

The example is taken from the [#wordsearchwednesday](https://medium.com/@Medium/wordsearchwednesday-a519722b5afd) post on Medium.
