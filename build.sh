#!/bin/bash

CHART=$1

echo "Building chart $CHART"
helm package charts/$CHART/

helm repo index .
