! dumbest program ever, repeats every token on the command line.
USING: io sequences command-line ;

IN: repeater

: repeat-back ( -- ) (command-line) [ print ] each ;

MAIN: repeat-back