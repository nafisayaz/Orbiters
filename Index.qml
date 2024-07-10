

import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick



Item {

    id: index

    Rectangle{
        id: main_id
        height: window.height
        width: window.width
        border.color: blueColor
        border.width: 1
        radius: 0
        gradient: Gradient {
            GradientStop { position: 0.2; color: primaryColor}
        }

        RowLayout{
            id: logo
            x: parent.width * 0.4
            anchors.horizontalCenter: parent.horizontalCenter
            y: parent.height * 0.1
            Rectangle{
                width: 120
                height: 120
                color: primaryColor
                Image {
                    id: icon
                    source: "images/inorbiter.png"
                    anchors.fill: parent

                }

            }

        }

        ColumnLayout{
//            spacing: 20
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            Text {
                id: greet
                text: qsTr("Welcome to Orbiters")
                color:"white"
                font.bold: true
                font.pointSize: 15
                Layout.alignment: Qt.AlignCenter

            }

            Button {
                id: control
                text: qsTr("Jobseeker or Recruiter")
//                Layout.alignment: Qt.AlignRight
                Layout.alignment: Qt.AlignCenter

                contentItem: Text {
                    text: control.text
                    font: control.font
                    opacity: enabled ? 1.0 : 0.3
//                    color: control.down ? "#17a81a" : "#001C2D"
                    color: control.down ? "#ffa23d" : "white"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    implicitWidth: 200
                    implicitHeight: 40
                    opacity: enabled ? 1 : 0.3
                    border.color: control.down ? "#ffa23d" : secondaryColor
                    border.width: 1
                    radius: 10
//                    color: "#ffa23d"  // I update background color by this
                    color: "#02aba2"
                }
            }

            Text {
                id: bafn
                text: qsTr("Use your Boostinorbit Account or Phone Number")
                color:primaryColor
                font.bold: true
                font.family: "aakar"
//                font.italic: true
                font.pointSize: 12
                Layout.alignment: Qt.AlignCenter

            }
            Text {
                id: greety
                text: qsTr("Need any help?")
                color:primaryColorLight
                font.family: "aakar"
                font.italic: true
                font.underline: true
                font.pointSize: 10
                Layout.alignment: Qt.AlignCenter

            }



        }

    }

}
