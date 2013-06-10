import QtQuick 2.0

Rectangle {
    width: 400
    height: 400

    color: "blue"

    Text {
        id: text
        text: "Test"
        verticalAlignment: Text.AlignVCenter
        color: "white"
        //height: parent.height
        onHeightChanged: console.log(text.height)
        Behavior on height { NumberAnimation { } }
    }

    Timer {
        running: true
        repeat: true
        interval: 500
        onTriggered: text.height += 10
    }
}
