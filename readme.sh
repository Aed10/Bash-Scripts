 #!/bin/bash                                                               2
  3 # Ask user for project name and description
  4 echo "Enter project name: "
  5 read project_name
  6
  7 echo "Enter project description: "
  8 read project_description
  9
 10 # Create README.md file with project name and description
 11 echo "# $project_name" > README.md
 12 echo "" >> README.md
 13 echo "$project_description" >> README.md
 14
 15 echo "README.md created successfully!"
