#!/bin/bash
echo "build bst level 3 optimized"
g++ --std=c++14 -O3 -Wall -Werror -pedantic -o bst_wordCount_optimized_3 main.cpp BSTree.cpp 
echo "build bst level 2 optimized"
g++ --std=c++14 -O2 -Wall -Werror -pedantic -o bst_wordCount_optimized_2 main.cpp BSTree.cpp 
echo "build bst level 1 optimized"
g++ --std=c++14 -O1 -Wall -Werror -pedantic -o bst_wordCount_optimized_1 main.cpp BSTree.cpp 
echo "build bst level 0 optimized"
g++ --std=c++14 -O0 -Wall -Werror -pedantic -o bst_wordCount_optimized_0 main.cpp BSTree.cpp 

echo "build treap level 3 optimized"
g++ --std=c++14 -O3 -D USETREAP -Wall -Werror -pedantic -o treap_wordCount_optimized_3 main.cpp BSTree.cpp Treap.cpp
echo "build treap level 2 optimized"
g++ --std=c++14 -O2 -D USETREAP -Wall -Werror -pedantic -o treap_wordCount_optimized_2 main.cpp BSTree.cpp Treap.cpp
echo "build treap level 1 optimized"
g++ --std=c++14 -O1 -D USETREAP -Wall -Werror -pedantic -o treap_wordCount_optimized_1 main.cpp BSTree.cpp Treap.cpp
echo "build treap level 0 optimized"
g++ --std=c++14 -O0 -D USETREAP -Wall -Werror -pedantic -o treap_wordCount_optimized_0 main.cpp BSTree.cpp Treap.cpp
