import QtQuick 2.0

Rectangle {
    width: 400
    height: 400

    color: "blue"

    Text {
        id: text
        anchors.centerIn: parent
        text: "Test"
        color: "white"
        NumberAnimation on anchors.verticalCenterOffset {
            running: true; from: -10; to: 10; loops: Animation.Infinite
        }
    }
}
