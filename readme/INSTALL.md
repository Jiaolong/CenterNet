# Installation


The code was tested on Ubuntu 16.04, with Python 3.5 and [PyTorch]((http://pytorch.org/)) v1.2.0. NVIDIA GPUs are needed for both training and testing.

1. Install pytorch1.2.0:

    ~~~
    sudo pip3 install torch torchvision
    ~~~

2. Install [COCOAPI](https://github.com/cocodataset/cocoapi):

    ~~~
    # COCOAPI=/path/to/clone/cocoapi
    git clone https://github.com/cocodataset/cocoapi.git $COCOAPI
    cd $COCOAPI/PythonAPI
    make
    python setup.py install --user
    ~~~

3. Clone this repo:

    ~~~
    CenterNet_ROOT=/path/to/clone/CenterNet
    git clone https://github.com/Jiaolong/CenterNet $CenterNet_ROOT
    ~~~


4. Install the requirements

    ~~~
    sudo pip3 install -r requirements.txt
    ~~~
    
5. Compile deformable convolutional (from [DCNv2](https://github.com/CharlesShang/DCNv2/tree/master)).

    ~~~
    cd $CenterNet_ROOT/src/lib/models/networks/DCNv2
    ./make.sh
    ~~~
6. [Optional] Compile NMS if your want to use multi-scale testing or test ExtremeNet.

    ~~~
    cd $CenterNet_ROOT/src/lib/external
    make
    ~~~

7. Download pertained models for [detection]() or [pose estimation]() and move them to `$CenterNet_ROOT/models/`. More models can be found in [Model zoo](MODEL_ZOO.md).
