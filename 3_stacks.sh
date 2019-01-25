#!/bin/bash

src=$HOME/research/project

# Run sstacks. Match all samples supplied in the population map against the catalog.
#
sstacks --gapped -P $src/stacks/ -M $src/popmaps/popmap -p 8
