import QtQuick 2.0

Item {
    id: element
    property color colorOn: "red"
    property color colorOff: "grey"

    Rectangle {
        id: rectangle
        color: "#110d7f"
        radius: width
        anchors.fill: parent
    }
    states: [
        State {
            name: "on"
            PropertyChanges {
                target: rectangle
                color: colorOn
            }
        },
        State {
            name: "off"
            PropertyChanges {
                target: rectangle
                color: colorOff
            }
        }
    ]

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.5;height:480;width:640}D{i:1;anchors_height:200;anchors_width:200}
}
##^##*/
