# TF1.2
#g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I /usr/local/lib/python2.7/dist-packages/tensorflow/include -I /usr/local/cuda-8.0/include -lcudart -L /usr/local/cuda-8.0/lib64/ -O2 -D_GLIBCXX_USE_CXX11_ABI=0

# TF1.4
#TF_INC=$(python -c 'import tensorflow as tf; print(tf.sysconfig.get_include())')
#echo $(TF_INC)
TF_INC=/home/xrhuang/anaconda3531/envs/basic/lib/python3.6/site-packages/tensorflow/include
TF_LIB=/home/xrhuang/anaconda3531/envs/basic/lib/python3.6/site-packages/tensorflow
g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I ${TF_INC} -I /usr/local/cuda-10.0/include -lcudart -L /usr/local/cuda-10.0/lib64/ -L${TF_LIB} -O2 -I${TF_INC}/external/nsync/public -L${TF_LIB} -ltensorflow_framework
