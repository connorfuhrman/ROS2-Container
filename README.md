# ROS Development Container

This repository houses some conveniences around [[https://hub.docker.com/r/osrf/ros/][the OSFR ROS container]]. 

# Features
## GUI Applications
There is a launch script to run GUI apps via X11. This is tested and validated on MacOS 12.2. 

## GNU Screen Configuration
Noramlly I will run the container interactively and ROS requires multiple terminals so I utilize the terminal multiplexer `screen`. 
There is a GNU screen configuration which allows for mouse tracking to select panes, sets the shell to BASH, and remaps the escape
sequence from C-a to C-^ because that is unbound in emacs. 

## Misc. Packages
The pkg_manifest file holds all packages added to the base container. 
These include emacs and vim. 
