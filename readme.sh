#!/bin/bash                                                               2
# Ask user for project name and description
echo "Enter project name: "
read project_name
echo "Enter project description: "
read project_description

# Create README.md file with project name and description
echo "# $project_name" > README.md
echo "" >> README.md
echo "$project_description" >> README.md
echo "README.md created successfully!"
