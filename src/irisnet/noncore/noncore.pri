IRIS_BASE = $$PWD/../../..
include(../../../build.pri)

QT *= network

DEFINES += IRISNET_STATIC

irisnetcore_bundle:{
	include(../corelib/corelib.pri)
}
else {
	LIBS += -L$$IRIS_BASE/lib -lirisnetcore
}

INCLUDEPATH += $$PWD/../corelib

HEADERS += \
	$$PWD/processquit.h

SOURCES += \
	$$PWD/processquit.cpp

include(legacy/legacy.pri)