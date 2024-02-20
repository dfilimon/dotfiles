#!/bin/zsh
# Script to install Apple Tensorflow in an existing Conda environment.
# Gets GPU acceleration to work.
# From https://fotiecodes.com/articles/install-tensorFlow-on-your-mac-m1-m2-m3-with-gpu-support

# Initial set of deps we need. This needs to be installed first, otherwise the
# wrong Python version might be installed.
conda install -c apple tensorflow-deps

# Specific versions of TF that work with Metal.
pip install tensorflow-macos
pip install tensorflow-metal

# Optional, but nice.
conda install notebook -y

# All the nice pacakges we need.
pip install numpy --upgrade
pip install pandas --upgrade
pip install matplotlib --upgrade
pip install chardet --upgrade
pip install scikit-learn --upgrade
pip install scipy --upgrade
pip install plotly --upgrade

# Make sure the installed environment works.
CHECK_CONFIG_PY="$(cat <<-EOF
	import sys
	import keras
	import pandas as pd
	import sklearn as sk
	import scipy as sp
	import tensorflow as tf
	import platform
	
	print (f"Python Platform: {platform.platform ()}")
	print (f"Tensor Flow Version: {tf.__version__}")
	print(f"Keras Version: {keras.__version__}")
	print ()
	
	print (f"Python {sys.version}")
	print (f"Pandas {pd.__version__}")
	print (f"Scikit-Learn {sk.__version__}")
	print (f"SciPy {sp.__version__}")
	gpu = len (tf.config.list_physical_devices ('GPU'))>0
	print ("GPU is", "available" if gpu else "NOT AVAILABLE")
EOF
)"
python -c $CHECK_CONFIG_PY
