#-------------------------------------------------
#
# Project created by QtCreator 2019-11-07T16:47:52
#
#-------------------------------------------------

#xxxPrivate 继承 Q-xxxx-Private的话，是需要的添加 core-private（有一些核心方法? 类 可能不开放）
QT       += core gui core-private

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets widgets-private   # 若是需要继承 widgets相关，需要添加 widgets-private

TARGET = custom-style
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

SOURCES += \
        main.cpp \
        Example.cpp \
    ExMyStyle.cpp \
    MyWidget/ExSwitchButton.cpp

HEADERS += \
        Example.h \
    ExMyStyle.h \
    ExMyGlobal.h \
    MyWidget/ExSwitchButton.h \
    MyWidget/ExSwitchButton_p.h


# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
