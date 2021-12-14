============
Installation
============

The root directory of "{{%cookiecutter.plugin_name%}}" includes two scripts that handle installation and removal of the plugin.

* ``install_plugin``
* ``uninstall_plugin``

Scripts with the extension ``.sh`` handle installation in Linux, while scripts with the extension ``.bat`` handle the installation
in MS Windows.


The installation scripts expect the environment variable ``YASARA_HOME`` to be pointing to the root directory of a yasara installation [#]_.
If this variable is not set, the plugins will print an informative message about how to set it up depending on the platform.

-----

.. [#] The root directory of a YASARA installation is the directory from which you launch the 
   ``yasara`` (or ``yasara.exe``) executable.

