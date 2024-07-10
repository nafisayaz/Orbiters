
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick

Item {

    property string secondaryColor: "#ef7d00"
    property string primaryColor: "#001C2D"
    property string whiteColor: "#001C2D"
    property string blueColor: "#01064a"


    id: login

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
//                    fillMode: Image.PreserveAspectFit
                    anchors.fill: parent

                }

            }
        }

        ColumnLayout{
            spacing: 20
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            Rectangle {
                color:"white"
                width: 250
                height: 30
                border.color : "red"
                TextField{
                    placeholderText: "Passcode"
                    echoMode: TextInput.Password

                    background: Rectangle {
                        implicitWidth: 250
                        implicitHeight: 40
                        opacity: enabled ? 1 : 0.3
                        border.color: control.down ? "#17a81a" : "#ef7d00"
                        border.width: 1
                        radius: 2
                    }
                }


            }

            Button {
                id: control
                text: qsTr("login")
                Layout.alignment: Qt.AlignRight

                contentItem: Text {
                    text: control.text
                    font: control.font
                    opacity: enabled ? 1.0 : 0.3
                    color: control.down ? "#17a81a" : "#001C2D"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    implicitWidth: 100
                    implicitHeight: 40
                    opacity: enabled ? 1 : 0.3
                    border.color: control.down ? "#17a81a" : "#ef7d00"
                    border.width: 1
                    radius: 2
                    color: "#ffa23d"  // I update background color by this
                }
            }

            Rectangle {
                id : scannerLink
                color:"#001C2D"
                width: 250
                height: 30
                Text{
                    text: "Don't have passcode ?"
                    color: "#ef7d00";
                    font.family: "aakar"
                    font.italic: true
                    font.underline: true
                    font.pointSize: 12
                    anchors.fill: parent
                }
            }
        }

    }



}
