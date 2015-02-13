# Letter Matrix

A **Word Search Game** or **Letter Matrix** solver written in about 20 lines of Haskell.

## Compile & Run

Compile with all optimizations.

```shell
ghc -O2 --make Solver.hs
```

Run the solver with the dictionary and input file as command-line arguments.

```shell
./Solver dictionary/eng.dic example/example.txt +RTS -s
euphemism
icon
conn
juxtaposition
posit
position
climax
lima
sarcasm
cont
text
ambiguity
pate
temp
temple
cacophony
phony
akin
king
conn
notation
rios
catharsis
thar
narrative
attn
palm
person
personification
fica
cation
notation
soliloquy
lilo
expo
exposition
posit
position
anecdote
dote
synopsis
thesis

      54,873,456 bytes allocated in the heap
      15,049,032 bytes copied during GC
       4,290,352 bytes maximum residency (5 sample(s))
         113,456 bytes maximum slop
               9 MB total memory in use (0 MB lost due to fragmentation)

                                    Tot time (elapsed)  Avg pause  Max pause
  Gen  0       100 colls,     0 par    0.01s    0.01s     0.0001s    0.0003s
  Gen  1         5 colls,     0 par    0.01s    0.01s     0.0020s    0.0054s

  TASKS: 4 (1 bound, 3 peak workers (3 total), using -N1)

  SPARKS: 0 (0 converted, 0 overflowed, 0 dud, 0 GC'd, 0 fizzled)

  INIT    time    0.00s  (  0.00s elapsed)
  MUT     time    0.05s  (  0.05s elapsed)
  GC      time    0.02s  (  0.02s elapsed)
  EXIT    time    0.00s  (  0.00s elapsed)
  Total   time    0.07s  (  0.07s elapsed)

  Alloc rate    1,107,056,226 bytes per MUT second

  Productivity  74.2% of total user, 70.1% of total elapsed

gc_alloc_block_sync: 0
whitehole_spin: 0
gen[0].sync: 0
gen[1].sync: 0
```

## Example

The example is taken from the [#wordsearchwednesday](https://medium.com/@Medium/wordsearchwednesday-a519722b5afd) post on Medium.
