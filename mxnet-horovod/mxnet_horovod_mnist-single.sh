mpirun -np 8 --hostfile ~/hosts --bind-to none --map-by slot -x NCCL_DEBUG=INFO -x NCCL_MIN_NRINGS=4 -mca pml ob1 -mca btl ^openib python ~/horovod/examples/mxnet_mnist.py 2>&1