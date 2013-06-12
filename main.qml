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
            running: true; from: -20; to: 20; loops: Animation.Infinite
            easing.type: Easing.CosineCurve; duration: 3000
        }
    }
}
