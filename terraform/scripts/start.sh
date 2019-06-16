#! /usr/bin/env bash

pkill swift
cd .build/release
./rps-kata-kitura
cd -
