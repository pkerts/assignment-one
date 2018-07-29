#!/bin/bash
echo "build bst level 3 optimized"
g++ --std=c++14 -O3 -Wall -Werror -pedantic -o bst_wordCount_optimized_3 wordcount_bst.cpp BST.cpp 
echo "build bst level 2 optimized"
g++ --std=c++14 -O2 -Wall -Werror -pedantic -o bst_wordCount_optimized_2 wordcount_bst.cpp BST.cpp 
echo "build bst level 1 optimized"
g++ --std=c++14 -O1 -Wall -Werror -pedantic -o bst_wordCount_optimized_1 wordcount_bst.cpp BST.cpp 
echo "build bst level 0 optimized"
g++ --std=c++14 -O0 -Wall -Werror -pedantic -o bst_wordCount_optimized_0 wordcount_bst.cpp BST.cpp 
