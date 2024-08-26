#!/bin/bash

# Define the working directory
WORK_DIR="/home/user"

# Create the working directory if it does not exist
mkdir -p "$WORK_DIR"

# Create the 'projects' directory and subdirectories
mkdir -p "$WORK_DIR/projects/project1"
mkdir -p "$WORK_DIR/projects/project2"
mkdir -p "$WORK_DIR/projects/project3"

# Create the 'documents' directory
mkdir -p "$WORK_DIR/documents"

# Create the 'downloads' directory
mkdir -p "$WORK_DIR/downloads"

echo "Directory structure created successfully."
