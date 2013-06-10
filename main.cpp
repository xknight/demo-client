#include <QGuiApplication>
#include <QQuickView>

int main(int argc, char *argv[])
{
    QGuiApplication a(argc, argv);

    QQuickView view(QUrl("qrc:/main.qml"));
    view.showFullScreen();

    return a.exec();
}
