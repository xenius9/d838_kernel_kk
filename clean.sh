#!/bin/sh
rm work/kernel/out/*
rm work/final/*
rm work/bumped_kernel/*

make clean && make mrproper

