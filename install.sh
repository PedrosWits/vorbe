#!/bin/sh
#======================================================================
#
# 1. Startup
#
#======================================================================
# Pointer to file loader script - takes the current path as argument
startup="config/load-tree.sh"

# Load file names, setup log and define helper functions
if ! eval source "$startup $PWD"
  then 
    echo "Failed to run startup files. Exiting"
    exit 1
  else
    log "Load file structure and setup log: $SOK"
fi

### We use try(runCommand (command, log_message)) from now on

# Load user-defined variables
#try(runCommand("source $load-user-variables"))

# Generate MACS and constants
try runCommand "source $sh_gen_const" "Generate MACS"

# Check that the necessary software - libvirt - is installed

# Create data network in libvirt

# Edit default data network 


#=======================================================================
#
# 2. Vm Creation
#
#=======================================================================

# Create base vm w/ kickstart

# Snapshot

# Prep Clone

# Clone

## Into Controller

## Into Network

## Into Compute1

# Feed specific configuration script to each through ssh (ntp, ..)

#======================================================================
#
# 3. Install Openstack
#
#======================================================================

# Install openstack using packstack w/predefined answers-file

#======================================================================
#
# 4. Install Rally and gather benchmarking data
#
#======================================================================

# Install Rally

# Run Rally

# Show results

#======================================================================
#
# 5. Finalize
#
#======================================================================

# Install openstack-management scripts

# Display useful messages
