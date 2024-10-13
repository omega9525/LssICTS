#!/bin/bash
set -euo pipefail
#to remove the environment conda remove -n lss_v1 --all  
# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Function to install a package if it's not already installed
install_package() {
    if ! conda list | grep -q "$1"; then
        echo "Installing $1..."
        conda install -y "$1"
    else
        echo "$1 is already installed."
    fi
}

# Check if Conda is installed
if ! command_exists conda; then
    echo "Conda is not installed. Please install Conda and try again."
    exit 1
fi

# Create and activate the environment
ENV_NAME="lss"
PYTHON_VERSION="3.8.8"

if ! conda env list | grep -q "$ENV_NAME"; then
    echo "Creating conda environment $ENV_NAME..."
    conda create -n "$ENV_NAME" python=="$PYTHON_VERSION" -y
else
    echo "Conda environment $ENV_NAME already exists."
fi

echo "Activating conda environment $ENV_NAME..."
eval "$(conda shell.bash hook)"
conda activate "$ENV_NAME"

# Install packages
packages=(
    "boost"
    "cython"
    "fitsio"
    "gsl"
    "numpy"
    "matplotlib"
    "joblib"
    "pandas"
    "scipy"
    "pip"
    "git"
    "ipython"
    "jupyter"
    "ipykernel"
)

for package in "${packages[@]}"; do
    install_package "$package"
done

# Install fitsio from conda-forge
install_package "conda-forge::fitsio"

# Install the IPython kernel
python -m ipykernel install --user --name="$ENV_NAME" --display-name="$ENV_NAME"

# Clone the repository
REPO_URL="https://gitlab.com/shadaba/CorrelationFunction.git"
REPO_DIR="CorrelationFunction"

if [ ! -d "$REPO_DIR" ]; then
    echo "Cloning repository..."
    git clone "$REPO_URL"
else
    echo "Repository already exists. Updating..."
    cd "$REPO_DIR"
    git pull
    cd ..
fi

# Build the extension
cd "$REPO_DIR"
python setup.py clean
rm -f calc.c
python setup.py build_ext --inplace

echo "Postbuild script completed successfully."
