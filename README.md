# QuanTest2 using Q score and TC score

modified by wym6912 (wym6912@outlook.com)

Using this repository by testing protein sequences provided by `QuanTest2`.

## How to clone

Please clone this repository use the following command:

```bash
git clone https://github.com/malabz/QuanTest2 --recurse-submodules
```

## How to test

Before testing, please check the varibles in script: `program_name`, `cmd`, `prog_alias`.

Then run the following command:
```bash
bash run.[program].sh # change the [program] to your program name
```

Result file is `[program].txt`.

## `Test_hasunknown` folder

We checked all input sequences, found one sequence has unknown character `U`. We put this file into `Test_hasunknown` folder.

If you want to test the file into standard test, please run the following command:

```bash
cp Test_hasunknown/AhpC-TSA.vie Test/
```

## References

QuanTest2: Sievers, F. & Higgins, D. G. Fabian Sievers, Desmond G Higgins, **QuanTest2**: benchmarking multiple sequence alignments using secondary structure prediction, *Bioinformatics*, Volume 36, Issue 1, January 2020, Pages 90–95, https://doi.org/10.1093/bioinformatics/btz552

PREFAB Q score: Robert C. Edgar, **MUSCLE**: multiple sequence alignment with high accuracy and high throughput, *Nucleic Acids Research*, Volume 32, Issue 5, 1 March 2004, Pages 1792–1797, https://doi.org/10.1093/nar/gkh340

SP and TC scores: J D Thompson and others, **BAliBASE**: a benchmark alignment database for the evaluation of multiple alignment programs., *Bioinformatics*, Volume 15, Issue 1, January 1999, Pages 87–88, https://doi.org/10.1093/bioinformatics/15.1.87
