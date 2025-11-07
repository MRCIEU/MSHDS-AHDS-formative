# Applied Health Data Science formative assessment

This repository contains code for the formative assessment, for the Applied Health Data Science unit of the MSc in Medical Statistics and Health Data Science.

Unit Leads: Oliver Davis and Louise Millard.


## Background

As part of the formative assessment we will be building our code repository over the course of this module. There is a different github branch for each week that has the solutions to the tasks for that week, and as you will see, they build on each other over the course of the module.


## To setup

1. Fork this github repository.
2. Clone your fork to your local computer
3. Download the data from Blackboard, this includes two files `accel.zip` and `BMX_D.csv`.
4. Run `bash directory-setup-commands.sh` to setup the data directory etc.

You should have the following folder structure:

```
data/
     original/
              accel/
                    accel-31128.txt
                    accel-31129.txt
                    ...
              BMX_D.csv
```

Setup the conda environment

```
conda env create --file ahds_formative_environment.yml
```

or if the environment already exists

```
conda env update --file ahds_formative_environment.yml --prune
```

## To run

Activate the conda environment

```
conda activate ahds_formative
```

Use snakemake e.g. with just 1 core

```
snakemake -c1
```

To check things with a dry run use:

```
snakemake -n
```