import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    TrafficLight {
        id: trafficLight
        x: 320
        y: 240
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    Row {
        id: row
        y: 25
        width: 343
        height: 48
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 10

        Button {
            id: btnOn
            text: qsTr("On")
            onClicked: trafficLight.state = "go"
        }

        Button {
            id: btnOff
            text: qsTr("Off")
            onClicked: trafficLight.state = "stop"
        }

        Button {
            id: btnToggle
            text: qsTr("Toggle")
            onClicked: {
                if(trafficLight.state == "stop")
                {
                    trafficLight.state = "go"
                }
                else
                {
                    trafficLight.state = "stop"
                }
            }
        }
    }


}


