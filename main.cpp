#include <QApplication>
#include <QQuickView>
#include <QScreen>
#include <QWidget>

#include <QDebug>

int main(int argc, char *argv[])
{
    qputenv("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1");

    QApplication a(argc, argv);

    QQuickView view(QUrl("qrc:/main.qml"));
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    /*QSurfaceFormat format = view.format();
    format.setAlphaBufferSize(8);
    format.setRedBufferSize(8);
    format.setGreenBufferSize(8);
    format.setBlueBufferSize(8);
    view.setFormat(format);*/
    //view.showFullScreen();

    //QWidget view;
    //view.setBackgroundRole(QPalette::Dark);

    view.resize(448, 400);
    view.show();

    return a.exec();
}
