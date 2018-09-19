TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += teste_Ponto.cpp

HEADERS += \
    Ponto.h


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../Build-Aula-06-Managed_Vs_unmanaged/release/ -lPontoStaticLib
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../Build-Aula-06-Managed_Vs_unmanaged/debug/ -lPontoStaticLib
else:unix: LIBS += -L$$PWD/../../../Build-Aula-06-Managed_Vs_unmanaged/ -lPontoStaticLib

INCLUDEPATH += $$PWD/../../../Build-Aula-06-Managed_Vs_unmanaged
DEPENDPATH += $$PWD/../../../Build-Aula-06-Managed_Vs_unmanaged

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../Build-Aula-06-Managed_Vs_unmanaged/release/libPontoStaticLib.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../Build-Aula-06-Managed_Vs_unmanaged/debug/libPontoStaticLib.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../Build-Aula-06-Managed_Vs_unmanaged/release/PontoStaticLib.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../Build-Aula-06-Managed_Vs_unmanaged/debug/PontoStaticLib.lib
else:unix: PRE_TARGETDEPS += $$PWD/../../../Build-Aula-06-Managed_Vs_unmanaged/libPontoStaticLib.a
