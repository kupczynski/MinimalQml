#include <QApplication>
#include <QQmlApplicationEngine>
#include <QDebug>


int main(int argc, char** argv)
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    qDebug() << "Hello Mr Macaroni";

    return app.exec();
}

