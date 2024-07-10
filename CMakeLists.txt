cmake_minimum_required(VERSION 3.16)

project(Orbiters VERSION 0.1 LANGUAGES CXX)

# set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)
# add_executable(OrbitersExecutable main.cpp)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2  REQUIRED COMPONENTS Quick Core Gui)

qt_add_executable(OrbitersExecutable qml.qrc
    main.cpp
    appmanager.cpp
    datentime.cpp
    qmlengine.cpp

)

qt_add_qml_module(OrbitersExecutable
    URI Orbiters
    VERSION 1.0
    RESOURCES
        qml.qrc
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(OrbitersExecutable PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.OrbitersExecutable
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(OrbitersExecutable
    PRIVATE Qt6::Quick
    PRIVATE Qt6::Core
    PRIVATE Qt6::Gui
)

include(GNUInstallDirs)
install(TARGETS OrbitersExecutable
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
