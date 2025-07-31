#!/usr/bin/env bash
# Prepare kube config dir
echo "Checking kube dir"
if [ ! -d $HOME/.kube ];
then
    "echo $HOME.kube doesnt existing, creating"
    mkdir $HOME/.kube
elif [ -d $HOME/.kube ];
then
    echo "found /root/.kube dir"
    echo "cleaning"
    rm -rvf $HOME/.kube/*
    touch $HOME/.kube/config
fi
echo "$HOME.kube prepared"
