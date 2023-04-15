#!/bin/bash

for dir in charts/*/
do
    dir=${dir%*/}
    echo "Building chart ${dir##*/}"
    helm package charts/${dir##*/}/
done

helm repo index .