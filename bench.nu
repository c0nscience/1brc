#!/usr/bin/env nu
use std log
def main [] = {
    let count = 10

    mut times = [];
    
    for i in (1..$count) {
        let start = (date now);
        let _ = (obrc-rs measurements.txt | ignore);
        let end = (date now);

        let elapsed = ($end - $start);
        $times = ($times | append $elapsed);
    }
    
    print "Times: " $times

    let min_time = ($times | math min);
    let max_time = ($times | math max);
    let avg_time = ($times | math avg);

    print $"Average time: ($avg_time) seconds"
    print $"Min time: ($min_time) seconds"
    print $"Max time: ($max_time) seconds"
}
