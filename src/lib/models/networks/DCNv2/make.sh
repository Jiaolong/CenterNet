#!/usr/bin/env bash
# python3 setup.py build develop
python3 setup.py build_ext --inplace
rm -rf build
