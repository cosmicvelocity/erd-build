# erd-build
It is a binary with static link build of erd.

## Build

1. start vagrant.

        vagrant up
        vagrant ssh
    
2. make

        cd /vagrant
        make

3. binary is generated in the dist directory.

        ./dist/erd -h
        Usage: erd [flags]
          -i FILE  --input=FILE   When set, input will be read from the given file.
                                  Otherwise, stdin will be used.
          -o FILE  --output=FILE  When set, output will be written to the given file.
                                  Otherwise, stdout will be used.
                                  If given and if --fmt is omitted, then the format will be
                                  guessed from the file extension.
          -h       --help         Show this usage message.
          -f FMT   --fmt=FMT      Force the output format to one of:
                                  bmp, dot, eps, gif, jpg, pdf, plain, png, ps, ps2, svg, tiff
