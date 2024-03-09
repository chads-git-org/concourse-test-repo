#!/bin/bash

display_dynamic_progress_bar() {
    local total_steps=$1
    local progress=0
    local terminal_width=$(tput cols)

    let bar_width=terminal_width-10

    while [ $progress -le $total_steps ]; do
        let filled_slots=progress*bar_width/total_steps
        bar=""

        for ((i=0; i<$filled_slots; i++)); do
            bar="${bar}#"
        done

        for ((i=filled_slots; i<bar_width; i++)); do
            bar="${bar}-"
        done

        let percentage=progress*100/total_steps

        echo -ne "\r[${bar}] ${percentage}% "
     
        sleep 0.1

        let progress++
    done

    echo
}

echo "Starting the check..."
display_dynamic_progress_bar 100
echo "Check completed!"