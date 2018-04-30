# 2018-06-25-UK-MetOffice-Summer-school
Notebooks for the UKM summer school

## Setup
The easiest way to go is through `conda`. If you run on GNU/Linux you may opt for [installing through the native Python](#virtualenv) in your package manager.

### Conda
Choose your Conda. Anaconda is a very big package, and it includes a webinterface for creating environments and installing packages. But Anaconda can be too much. We prefer working with [Miniconda](https://conda.io/miniconda.html), from the command-line.

#### MiniConda & Command-line
Make sure your prompt is at an appropriate directory for this project.

```bash
$ pwd
/home/joe/Documents/UKMS
```
Create a Conda environment, and activate it:

```bash
$ conda create ukms
$ conda activate ukms
(ukms) $
```

Install Numpy, SciPy, Matplotlib, NetCDF4 and Jupyter

```bash
(ukms) $ conda install numpy scipy matplotlib netCDF4 jupyterlab
```

Cartopy can be installed from conda-forge:

```bash
(ukms) $ conda install -c conda-forge cartopy
```

Then run the notebooks using

```bash
(ukms) $ jupyter lab
```

### <a name="virtualenv"></a>VirtualEnv
This supposes you are on a Debian flavoured distribution of GNU/Linux (Debian, Ubuntu or Mint), where you have root access (i.e. your laptop). Commands may vary slightly if you are on Fedora, SuSe or otherwise. If you run Windows it is recommended to follow the `conda` method of installation.

```bash
$ sudo apt install python3 virtualenv python3-virtualenv python3-pip
```
#### Cartopy
Cartopy is less commonly found in standard setups. It has some binary requirements. Again the easiest way to go is using `conda`; nevertheless, you'll need to install `libgeom` and `libproj` development libraries if you would like to run using native Python.

```bash
$ sudo apt install build-essential python3-dev libproj-dev libgeos-dev
```

#### Setting up the VirtualEnv
Make sure your prompt is at an appropriate directory for this project.
```bash
$ pwd
/home/joe/Documents/UKMS
```

Create a Python virtual environment.

```bash
$ virtualenv -p python3 ukms-venv
```

Then, activate the virtual environment (the prompt will change) and go to the directory where you cloned this repository (use TAB-completion!)

```bash
$ source ./ukms-venv/bin/activate
(ukms-venv) $ cd 2018-06-25-UK-MetOffice-Summer-school
(ukms-venv) $ pwd
/home/joe/Documents/UKMS/2018-06-25-UK-MetOffice-Summer-school
```

All the Python package dependencies are listed in `requirements.txt`. To install those:

```bash
(ukms-venv) $ pip install -r requirements.txt
...
```

You should be ready to go!

```bash
(ukms-venv) $ jupyter lab
```

## Files

### data
TODO: Contains trimmed down CMIP5 data, for demo use.

### docker
TODO: Contains miniconda docker image to check if above instructions are correct.

### notebooks
TODO: Contains the notebooks from which we'll present.
