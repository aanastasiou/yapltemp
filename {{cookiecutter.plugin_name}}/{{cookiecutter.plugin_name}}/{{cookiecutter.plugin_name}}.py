# YASARA PLUGIN
# TOPIC:       {{cookiecutter.yasara_plugin_topic}}
# TITLE:       {{cookiecutter.yasara_plugin_title}}
# AUTHOR:      {{cookiecutter.author_name}} ({{cookiecutter.author_email}})
# LICENSE:     {{cookiecutter.yasara_plugin_license}}
# DESCRIPTION: {{cookiecutter.yasara_plugin_description}}
# PLATFORMS:   {{cookiecutter.yasara_plugin_platforms}}

"""
MainMenu: Window
  PullDownMenu after Update frequency: {{cookiecutter.yasara_plugin_title}}
    Request:{{cookiecutter.plugin_name}}
"""

# This try/catch is here to enable the plugin to be loaded 
# by modules such as Sphinx that need access to docstrings.
try:
    import yasara
except ImportError:
    pass


def {{cookiecutter.plugin_name}}_plugin_check_if_disabled():
    """
    Checks if the plugin can be accessible in a given environment.

    Notes:
        * To inform yasara that your plugin should NOT launch, assign
          a 1 to yasara.plugin.exitcode.
        * The default implementation simply allows the plugin to load.
    """
    pass


def {{cookiecutter.plugin_name}}_plugin_launch(plugin_request):
    """
    The entry point for the plugin code.

    Notes:
        * Code in this function implements the functionality of
          the plugin.
    """
    if plugin_request == "{{cookiecutter.plugin_name}}":
        # Write your plugin code here.
        pass


if __name__ == "__main__":
    if yasara.request == "CheckIfDisabled":
        {{cookiecutter.plugin_name}}_plugin_check_if_disabled()
    else:
        {{cookiecutter.plugin_name}}_plugin_launch(yasara.request)
    yasara.plugin.end()

