#!/usr/bin/env python
# coding: utf-8

# # Workshop 1

# ## Introduction to Graphs
# 
# A **graph** is a collection of **nodes** (or **vertices**) connected by **edges**. In the following example, which represents part of the egg-laying circuit of C-Elegans, nodes represent neurons and edges represent synaptic connections between them:
# 
# ```{figure} matlab/egg_laying_circuit.png
# ---
# height: 200px
# name: egg-laying-circuit
# ---
# Directed graph of the egg-laying circuit of C-Elegans.
# ```
# 
# ```{admonition} Definitions
# Graph
# : A graph $G = (V, E)$ is a set of nodes $V = \{v_1, v_2, \dots, v_n\}$ and edges $E = \{(v_i, v_j), \dots\}$ where $(v_i, v_j)$ is an edge joining nodes $v_i$ and $v_j$.
# 
# Order
# : The order of a graph $G$ is number of nodes in $G$.
# 
# Directed Graph
# : A directed graph (or digraph) is a graph where each edge $(v_i, v_j)$ has an associated direction from $v_i$ to $v_j$.
# 
# Simple Graph
# : A simple graph is a graph which does not have any loops (edges from a node to itself) or multiple edges (two edges joining the same two nodes in the same direction).
# 
# Multigraph
# : A multigraph is a graph which is not a simple graph.
# 
# ```
# 
# In this course we will mostly be considering **simple directed graphs**, since these are the most useful for representing neural circuits.
# 
# ```{figure} matlab/graphs.png
# ---
# height: 200px
# name: egg-laying-circuit
# ---
# Simple, directed and multigraphs.
# ```
# 
# ## Graph Representations
# 
# Given a graph, we would like to be able to answer various questions: Do two graphs have the same structure?  Is there a path from node X to node Y? What is the minimum length path from node X to node Y? To answer these questions, we need a way to represent the graph in a computer. There are three main ways to represent a graph: edge list, adjacency list and adjacency matrix.
# 
# ```{admonition} Definitions
# Edge List
# : An edge list consists of a list of pairs of numbers, one pair for each edge. The numbers represent the starting and ending nodes of each edge. Here is the edge list corresponding to the egg-laying graph:
# 
# $$[1, 2], [1, 3], [1, 4], [2, 1], [2, 4], [3, 4], [3, 5],\\
# [3, 7], [5, 4], [6, 4], [6, 7], [7, 3], [7, 4], [7, 6]$$
# 
# For a directed graph, the order that we write the pair $[i, j]$ is important, but the order that we write the list of pairs is not.
# 
# Adjacency List
# : An adjacency list consists of a sequence of lists. The list at position $i$ contains all the nodes which node $i$ connects to. Here is the adjacency list corresponding to the egg-laying graph:
# 
# $$[2, 3, 4], [1, 4], [4, 5, 7], [], [4], [4, 7], [3, 4, 6]$$
# 
# Adjacency Matrix
# : An adjacency list consists of a sequence of lists. The list at position $i$ contains all the nodes which node $i$ connects to. Here is the adjacency list corresponding to the egg-laying graph:
# 
# $$
# \begin{bmatrix}
# 	0 & 1 & 1 & 1 & 0 & 0 & 0\\ 1 & 0 & 0 & 1 & 0 & 0 & 0\\ 0 & 0 & 0 & 1 & 1 & 0 & 1\\ 0 & 0 & 0 & 0 & 0 & 0 & 0\\ 0 & 0 & 0 & 1 & 0 & 0 & 0\\ 0 & 0 & 0 & 1 & 0 & 0 & 1\\ 0 & 0 & 1 & 1 & 0 & 1 & 0
# 	
# \end{bmatrix}
# $$
# ```
# ## Questions
# 
# ### Question 1
# 
# For the following directed graph, write out its:
# 1. Edge list.
# 1. Adjacency list.
# 1. Adjacency matrix.
#    
# ```{image} matlab/graph2.png
# :alt: Graph for Question 1
# :height: 150px
# :align: center
# ```
# 
# ### Question 2
# 
# Draw a picture of the directed graph defined by:
#  1. Edge list $ [1, 2], [5, 4], [5, 5], [5, 3], [3, 1], [1, 3], [3, 4], [4, 1]$
#  1. Adjacency list $[2, 3], [], [1, 4], [1], [5, 4, 3]$
#  1. Adjacency matrix:
#  
# $$
# 		\begin{bmatrix}
# 		0 & 0 & 0 & 0 & 1 & 0\\
# 		0 & 0 & 0 & 0 & 0 & 0\\
# 		1 & 0 & 0 & 1 & 0 & 0\\	
# 		0 & 1 & 0 & 0 & 0 & 1\\
# 		0 & 0 & 0 & 0 & 0 & 1\\
# 		0 & 0 & 0 & 1 & 0 & 0
# 		\end{bmatrix}
# $$
# ## Answers
# 
# Coming soon!
# 
