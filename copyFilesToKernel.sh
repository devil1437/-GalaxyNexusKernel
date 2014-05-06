#!/bin/bash

KernelPath="/home/howard/Nexus4/kernelOrigin/omap/"

pm44xx=$KernelPath"arch/arm/mach-omap2/pm44xx.c"
pm44xxFolder=$KernelPath"arch/arm/mach-omap2/"

process=$KernelPath"kernel/power/process.c"
processFolder=$KernelPath"kernel/power/"

if diff $pm44xx pm44xx.c >/dev/null ; then
	echo "pm44xx.c is same"
else
	echo "Copy pm44xx.c..."
	rm -f $pm44xx
	cp pm44xx.c $pm44xxFolder
fi

if diff $process process.c >/dev/null ; then
	echo "process.c is same"
else
	echo "Copy process.c..."
	rm -f $process
	cp process.c $processFolder
fi
