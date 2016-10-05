set LIB=%LIBRARY_LIB%;%LIB%
set LIBPATH=%LIBRARY_LIB%;%LIBPATH%
set INCLUDE=%LIBRARY_INC%;%INCLUDE%;%RECIPE_DIR%

:: Configure.
cmake -D CMAKE_BUILD_TYPE=Release ^
      -D CMAKE_INSTALL_PREFIX:PATH=%LIBRARY_PREFIX% ^
      %SRC_DIR%
if errorlevel 1 exit 1

:: Build.
cmake --build %SRC_DIR% --target INSTALL --config Release
if errorlevel 1 exit 1
