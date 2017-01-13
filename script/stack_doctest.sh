#!/bin/sh

if [ $# -eq 0 ]; then
    echo "stack_doctest.sh All | List | Functor | Applicative | Monad | FileIO | State | StateT | Extend | Comonad | Compose | Traversable | ListZipper | Parser | MoreParser | JsonParser | Interactive | Anagrams | FastAnagrams | Cheque"
    exit 1
fi

current_dir=$(cd `dirname $0`; pwd)

if [[ $1 = "All" ]] || [[ $1 = "all" ]]; then
    stack exec doctest -- -isrc -Wall -fno-warn-type-defaults "$current_dir/../src"
else 
    stack exec doctest -- -isrc -Wall -fno-warn-type-defaults "$current_dir/../src/Course/$@.hs"
fi
