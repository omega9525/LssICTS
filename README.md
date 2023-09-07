# LSS-HandsON
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gl/shadaba%2Flss-handson/master)


This has set of Jupyter notebooks which guide you through basics of Large Scale Struture Analysis. This has an inbuilt correlation function code as well.

Dependencies:
 - python
  - pip:
    - numpy==1.20.1
    - matplotlib==3.3.4
    - pandas==1.2.4
    - fitsio==1.1.7
    - Cython==0.29.23
    - joblib==1.0.1
    - scipy==1.6.2

It also need correlation function code which should be installed after the installing all the above dependencies. 
The best way to setup everything is by creating a new python environment and install all the needed dependencies.
Some of the code uses old libraries and hence latest might not work.

You can simply run following command from lss-hands-on directory

source postBuild

The above command will do the following:
  - Create a python environment called lss, If you already have such an environment then it might fail.
  - Install all the needed dependecies in this new environment.
  - It will install a jupyter kernel called lss

Now to use above setting you should always activate this new environment lss by following command:
source lss/bin/activate

For the above command to work you must be in lss-hands-on directory or provide the full path.
One can now launch an jupyter notebook which will use all the consistent libraries using following:
jupyter notebook

When you open any notebook then you must change kernel to lss in order for all the appropriate libraries to be available.


You can also directly access these notebook online with interactive by clicking on the binder link above.
