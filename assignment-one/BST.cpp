// Adapted from Professor Bernstein's class example

#include "BST.h"

#include <iostream>

using namespace std;

// Part of our custom iterator class. Returns leftmost value in the tree
BST::Iterator BST::begin() {
	return Iterator(root_);
}

// Returns one past the last value in the tree, which is correct
BST::Iterator BST::end() {
	return Iterator(nullptr);
}


bool BST::Iterator::operator==(const BST::Iterator& other) {
	return current_ == other.current_;
}


BST::Iterator::Iterator(BST::Node* root) {
	if (!root) {
		current_ = nullptr;
		return;
	}
	leftmost(root);
	current_ = stack_.top();
	stack_.pop();
}


bool BST::Iterator::operator!=(const BST::Iterator& other) {
	return !(*this == other);
}


BST::Iterator& BST::Iterator::operator++() {
	if (stack_.empty()) {
		current_ = nullptr;
		return *this;
	}
	current_ = stack_.top();
	stack_.pop();
	leftmost(current_->right());
	return *this;
}

const std::pair<const Key&, Value&> BST::Iterator::operator*() {
	return pair<const Key&, Value&>(current_->key(), current_->value());
}

void BST::Iterator::leftmost(BST::Node* p) {
	while (p) {
		stack_.push(p);
		p = p->left();
	}
}