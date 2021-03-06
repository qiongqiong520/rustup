#!/bin/sh
# rustup shell setup
# affix colons on either side of $PATH to simplify matching
case ":${PATH}:" in
    *:"{cargo_bin}":*)
        ;;
    *)
        # Prepending path in case a system-installed rustc must be overwritten
        export PATH="{cargo_bin}:$PATH"
        ;;
esac
