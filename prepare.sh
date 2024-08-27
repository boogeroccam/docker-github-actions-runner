#!/bin/bash

echo "Checking kube dir"
if [ ! -d $HOME/.kube ];
then
    "echo /root/.kube doesnt existing, creating"
    mkdir $HOME/.kube
elif [ -d $HOME/.kube ];
then
    echo "found /root/.kube dir"
    echo "cleaning"
    rm -rf $HOME/.kube/*
    touch $HOME/.kube/config
fi
echo "/root/.kube prepared"
