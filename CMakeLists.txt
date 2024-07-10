
cmake_minimum_required(VERSION 3.16)

set(PROJECT_ROOT "/home/ayaz/QT_Projects/Orbiters" )
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


project(
    Orbiters-In
    LANGUAGES CXX
    VERSION 1.0.0
    DESCRIPTION "This is C++ Socket Library"
    HOMEPAGE_URL "https://github.com/nafisayaz/Orbiters"
)

# set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)
# add_executable(OrbitersExecutable main.cpp)
# message(STATUS "Path environment variable: $ENV{PATH}")


find_package(Git REQUIRED)
find_package(Qt6 6.2  REQUIRED COMPONENTS Quick Core Gui )
find_package(Threads REQUIRED)
qt_add_executable(Orbiters-In Resources.qrc
    ${PROJECT_ROOT}/src/main.cpp
    ${PROJECT_ROOT}/src/app/appmanager.cpp
    ${PROJECT_ROOT}/src/app/qmlengine.cpp
    ${PROJECT_ROOT}/src/app/loader.cpp
    ${PROJECT_ROOT}/src/utility/datentime.cpp

)

qt_add_qml_module(Orbiters-In
    URI Orbiters
    VERSION 1.0
    RESOURCES
        Resources.qrc
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(Orbiters-In PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.OrbitersExecutable
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(Orbiters-In
    PRIVATE Qt6::Quick
    PRIVATE Qt6::Core
    PRIVATE Qt6::Gui
)

include(GNUInstallDirs)
install(TARGETS Orbiters-In
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
