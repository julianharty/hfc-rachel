README for the Spike to incorporate the PHET HTML5 Simulations into RACHEL

We are currently using the HEAD of the various exercises provided by the PHET project team on GitHub. So there may be incomplete versions of simulations, irrelevant code, etc. and no guarantees the exercises will be ready for people to use without problems. 

We have a shell script to download the pre-requsities and the first simulation: balancing-act. Please run it first. I suggest you create a folder first and run the script there, this should reduce the risk of making a mess of the rest of the project :) 

There's minimal error detection so please pay attention to the results. At some stage we may want to remove the git meta-data which halves the space needed. Here are raw commands that seem to do the relevant cleanup, run them in the relevant folder.
find . -type f | grep -i "\.git" | xargs rm
find . -type d | grep -i "\.git" | xargs rm -rf
