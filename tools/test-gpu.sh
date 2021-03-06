#!/bin/bash
tar -xzvf ../../tf-faster-rcnn.tar.gz -C ../../
tar -xzvf ../../datasets/datasets.tar.gz -C ../../datasets/
ldconfig /usr/local/cuda/lib64
python test_net.py --imdb voc_2007_test --model ../output/vgg16/voc_2007_trainval/default/vgg16_faster_rcnn_iter_165000.ckpt --cfg ../experiments/cfgs/vgg16.yml --net vgg16 --set ANCHOR_SCALES '[8,16,32]' ANCHOR_RATIOS '[0.5,1,2]'