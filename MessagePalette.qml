import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick


Item {


    Rectangle{
        id: body
        height: window.height - header.height
        width: window.width
        border.color: blueColor
        border.width: 1
        radius: 0
        gradient: Gradient {
            GradientStop { position: 0.1; color: primaryColorDark}

        }
        y: header.height + 1


        Rectangle{
            id: userPalatte
            height: window.height - header.height
            width: window.width * 0.3
            border.color: "red"
            border.width: 0

            radius: 0
            gradient: Gradient {
                GradientStop { position: 0.1; color: primaryColor}

            }
            y: 1


        }

        Rectangle {
            id: message
            color:"white"
            width: parent.width - userPalatte.width
            height: 40
            border.color : "red"
            radius: 0
//            anchors.horizontalCenter: parent.horizontalCenter
//            anchors.verticalCenter: parent.verticalCenter
            x: userPalatte.width
            y: parent.height - 40

            TextField{
                placeholderText: "Send your message "
//                echoMode: TextInput.Password


                background: Rectangle {
                    implicitWidth: message.width
                    implicitHeight: 40
                    opacity: enabled ? 1 : 0.3
                    border.color: control.down ? "#17a81a" : "#ef7d00"
                    border.width: 1
                    radius: 0

                }
            }

        }

    }
}
