.. Generic Plugin documentation master file, created by
   sphinx-quickstart on Sat Dec 11 13:41:35 2021.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

{% set welcome_message = "Welcome to " + cookiecutter.yasara_plugin_title + " documentation!" %}
{% set welcome_underline = "="*(welcome_message|length) %}

{{welcome_message}}
{{welcome_underline}}


.. toctree::
   :maxdepth: 2
   :caption: Contents:



Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
