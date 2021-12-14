#!/bin/bash
#
# Generic YASARA plugin installer (Linux version)
#
# Athanasios Anastasiou, Dec 2021

echo "{{cookiecutter.yasara_plugin_title}} Installer"
echo
echo

# Check if YASARA_HOME has been defined
if [ -z "${YASARA_HOME}" ]; then
    # Variable has not been defined
    # Inform and exit
    echo "The installer requires that the variable YASARA_HOME is set, prior to installing the plugin."
    echo "You can set that variable by:"
    echo "    > export YASARA_HOME=/some/path/to/yasara"
    echo
    exit 1
fi

# YASARA_HOME is defined, check that it points to a YASARA folder (a very basic check is performed here).
if [ ! -d "${YASARA_HOME}"/bab ] && [ ! -d "${YASARA_HOME}"/cif ] && [ ! -d "${YASARA_HOME}"/plg ] && [ ! -f "${YASARA_HOME}"/yasara]; then
    # The variable is set but the yasara directory does not look like a valid installation directory
    # Inform and exit
    echo "The YASARA_HOME environment variable points to ${YASARA_HOME}, which does not appear to"
    echo "be a valid YASARA installation. Please check the variable (or your installation) and try"
    echo "again."
    echo
    exit 1
fi

# Check that you are not about to overwrite an existing file
if [ -f "${YASARA_HOME}"/plg/{{cookiecutter.plugin_name}}.py ]; then
    echo "${YASARA_HOME}/plg/{{cookiecutter.plugin_name}}.py already exists."
    echo "Installation aborted."
    echo 
    echo "If you are absolutely sure that you would like to proceed, please"
    echo "run uninstal_plugin.sh, first, followed by install_plugin.sh."
    echo
    exit 1
fi

# Everything looks good, go ahead with the installation in /plg
cp {{cookiecutter.plugin_name}}/{{cookiecutter.plugin_name}}.py ${YASARA_HOME}/plg
# BEGIN - COPY ADDITIONAL FILES
#
# ADDITIONAL FILES THAT SHOULD EXIST WITHIN 
# <YASARA_HOME>/plg, SHOULD BE COPIED HERE.
#
# END - COPY ADDITIONAL FILES
# 
# Inform and exit
echo "The plugin was succesfully installed"
echo
echo "Please note that this installer installs ONLY the Python plugin file ({{cookiecutter.plugin_name}}.py)"
echo "to your YASARA installation (at ${YASARA_HOME})."
echo
echo "If additional files are required by the plugin, you will have to extend the installer to include them."
echo "To do that, open the file install_plugin.sh and follow the inline comments".
echo

