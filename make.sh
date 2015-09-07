#!/bin/bash

aspell -d pl dump master | \
    aspell -l pl expand | \
    sed 's/\s\s*/\n/g' | \
    sort | \
    uniq | \
    sort > pl_PL.dic
