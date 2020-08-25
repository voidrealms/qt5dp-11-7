import QtQuick 2.0

Item {
    id: element

    Rectangle {
        width: 120
        height: 225
        color: "black"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Column {
            anchors.centerIn: parent
            spacing: 10

            Light {
                id: redlight
                width: 100
                height: 100
                state: "on"
                colorOff: "darkred"
                colorOn: "red"

            }

            Light {
                id: greenlight
                width: 100
                height: 100
                state: "on"
                colorOff: "darkgreen"
                colorOn: "limegreen"
            }

        }
    }
    states: [
        State {
            name: "stop"
            PropertyChanges {
                target: redlight
                state: "on"
            }
            PropertyChanges {
                target: greenlight
                state: "off"
            }
        },
        State {
            name: "go"
            PropertyChanges {
                target: redlight
                state: "off"
            }
            PropertyChanges {
                target: greenlight
                state: "on"
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
