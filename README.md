# YASARA Plugin cookiecutter

A cookiecutter template to kickstart [YASARA](http://www.yasara.org/) plugin development.

![frontpage](https://raw.githubusercontent.com/aanastasiou/yapltemp/main/image_frontpage.png)

It creates the basic structure of a YASARA Python plugin, complete with:

* Install / uninstall scripts for Linux and Windows 
* A basic documentation layout for your plugin using Sphinx.

The code generated by this cookiecutter template is **installable** to YASARA out of the box and 
completely functional, enabling you to focus on writing the business logic of the plugin itself.


For an example of the facilities that this template offers, please see the 
[YASARA Python Console Plugin](https://github.com/aanastasiou/yapycon).


## Requirements

To use this template, make sure that you have a Python environment with cookiecutter installed.

```
    > pip install cookiecutter
```

For more details about cookiecutter please see [here](https://github.com/cookiecutter/cookiecutter).


## Usage

To create the plugin scaffold, simply run cookiecutter, grabbing the latest release from this repository:


```
    > cookiecutter https://github.com/aanastasiou/yapltemp/releases/latest/download/yapltemp.zip
```

Or, similarly, if you have git installed:

```
    > cookiecutter https://github.com/aanastasiou/yapltemp.git
```

Cookiecutter will then ask you a number of questions to customise your plugin template and generate 
the initial scaffold.


