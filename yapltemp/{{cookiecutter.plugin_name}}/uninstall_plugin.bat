:: Generic YASARA plugin un-installer (Windows version)
::
:: Athanasios Anastasiou, Dec 2021

@echo off

echo Removing {{cookiecutter.yasara_plugin_title}} from YASARA.
echo.
echo.

:: Check if YASARA_HOME has been defined
if  not defined YASARA_HOME (
    :: Variable has not been defined
    :: Inform and exit
    echo The installer requires that the variable YASARA_HOME is set, prior to installing the plugin.
    echo You can set that variable by:
    echo     ^> set YASARA_HOME=/some/path/to/yasara
    echo.
    exit 1 )

:: YASARA_HOME is defined, check that it points to a YASARA folder (a very basic check is performed here).
if not exist "%YASARA_HOME%\bab\" (
    if not exist "%YASARA_HOME%\cif\" (
        if not exist "%YASARA_HOME%\plg\" (
            if not exist "%YASARA_HOME%\yasara.exe" (
                :: The variable is set but the yasara directory does not look like a valid installation directory
                :: Inform and exit
                echo The YASARA_HOME environment variable points to %YASARA_HOME%, which does not appear to
                echo be a valid YASARA installation. Please check the variable ^(or your installation^) and try
                echo again.
                echo.
                exit 1 ))))

:: Check that the file exists
if not exist  "%YASARA_HOME%\plg\{{cookiecutter.plugin_name}}.py" (
    :: If the file does not exist, inform and exit
    echo %YASARA_HOME%\plg\{{cookiecutter.plugin_name}}.py does not exist.
    echo No further action was taken.
    echo.
    exit 1 )

:: If the file exists then proceed to delete it
del "%YASARA_HOME%\plg\{{cookiecutter.plugin_name}}.py"
:: BEGIN - REMOVE ADDITIONAL FILES
::
:: ADDITIONAL FILES THAT SHOULD BE REMOVED FROM 
:: <YASARA_HOME>/plg, SHOULD BE DELETED HERE.
::
:: END - REMOVE ADDITIONAL FILES
:: 
:: Inform and exit
echo The plugin was succesfully removed from YASARA"
echo.
echo Please note that this uninstaller removes ONLY the Python plugin file ({{cookiecutter.plugin_name}}.py)
echo from your YASARA installation ^(at %YASARA_HOME%^).
echo.
echo If additional files have to be removed, you will have to extend the uninstaller to include them.
echo To do that, open the file uninstall_plugin.sh and follow the inline comments.
echo.
