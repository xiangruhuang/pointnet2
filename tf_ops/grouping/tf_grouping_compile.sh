#/bin/bash
/usr/local/cuda-10.0/bin/nvcc tf_grouping_g.cu -o tf_grouping_g.cu.o -c -O2 -DGOOGLE_CUDA=1 -x cu -Xcompiler -fPIC

# TF1.2
#g++ -std=c++11 tf_grouping.cpp tf_grouping_g.cu.o -o tf_grouping_so.so -shared -fPIC -I /usr/local/lib/python2.7/dist-packages/tensorflow/include -I /usr/local/cuda-8.0/include -lcudart -L /usr/local/cuda-8.0/lib64/ -O2 -D_GLIBCXX_USE_CXX11_ABI=0

# TF1.4
TF_INC=/home/xrhuang/anaconda3531/envs/basic/lib/python3.6/site-packages/tensorflow/include
TF_LIB=/home/xrhuang/anaconda3531/envs/basic/lib/python3.6/site-packages/tensorflow
g++ -std=c++11 tf_grouping.cpp tf_grouping_g.cu.o -o tf_grouping_so.so -shared -fPIC -I ${TF_INC} -I /usr/local/cuda-10.0/include -I ${TF_INC} -lcudart -L /usr/local/cuda-10.0/lib64/ -L${TF_LIB} -ltensorflow_framework -O2 
