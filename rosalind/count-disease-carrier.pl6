#!/usr/bin/env perl6

=begin comment

Given: An array A for which A[k] represents the proportion of homozygous recessive individuals for the k-th Mendelian factor in a diploid population. Assume that the population is in genetic equilibrium for all factors.

Return: An array B having the same length as A in which B[k] represents the probability that a randomly selected individual carries at least one copy of the recessive allele for the k-th factor.

input: 0.1 0.25 0.5
output: 0.532 0.75 0.914

=end comment



sub MAIN (@input=[0.1, 0.25, 0.5]) {
    
    say ~@input.map({round(sqrt($_)*2 - $_, 0.001)});

}
