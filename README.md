# LSS-HandsON
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gl/shadaba%2Flss-handson/master)


This has set of Jupyter notebooks which guide you through basics of Large Scale Struture Analysis. This has an inbuilt correlation function code as well which needs to be installed from another github repo.

**To setup a compatible environment and start using the tutorials, you need to perform the following steps:**
------------------------------------------------------------------------------
1 - Install latest conda
------------------------------------------------------------------------------

Some useful info:

Update conda to latest if your conda version is too old. (You may skip this step if you already have a reasonably upto date working anaconda environment.)

* Check conda version (update anything less than version 23):
  * conda -V

If it's not updating and keeps asking you to update conda, then it might be simpler to uninstall conda and then install newest conda version from source file.


* To install Anaconda from scratch:
  * go to https://docs.anaconda.com/anaconda/install
  * choose linux or whichever applies
  * then follow the instructions there

* Work with conda-forge as default library right from the beginning:
  * Check defaults : conda config --show-sources
  * show channels : conda config --show channels

* To set conda-forge as the highest priority channel or default channel for a particular environment, first activate that environment and then do the following:
  * conda config --env --add channels conda-forge

  This is to make sure that we only install compatiable   versions of all the required packages.

* To find some useful conda commands (apart from internet search):
  * conda --help
* Example given, to understand how to use the `search` command:
  * conda search -h
* Get the location of your created environments:
  * conda info --envs
  * conda env list
* List all the packages in your environment by specifying the name of the env:
  * conda list -h
  * conda list -n lss
  * Or first actiavte the env and then just say:
    * conda list

------------------------------------------------------------------------------
2 - Clone the current repository and do:
---
* cd lss-handson
* chmod +x postbuild_modern.sh 
* ./postbuild_modern.sh 
---

Some useful info:

Once you have successfully installed conda, next we create a conda environment that contains all the required packages needed for the tutorials.
These required packages are listed as dependencies in environment.yml file in this repo.

Running `postbuild_modern.sh ` does the followings:
  - Installs an anaconda environment `lss` with all the dependencies listed in environment.yml (this will complain if you already have a conda env with the name `lss`)
  - Installs `CorrelationFunction` dependency in `lss` env from https://gitlab.com/shadaba/CorrelationFunction.git
---
Now you should have a working anaconda env in which you can run the tutorial jupyter notebooks.
* In order to activate the anaconda env, do this in your shell/terminal:
  * conda activate lss

* The above command takes you into the environment, finally you have to launch the jupyter notebook by doing:
  * jupyter notebook

You can also directly access these notebook online with interactive by clicking on the binder link above.
