
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick


Item {
    id: deck
//    width: parent.width
//    height: parent.height
//    visible: true



    Rectangle{
        id: header
        height: window.height * 0.2
        width:  window.width
        border.color: blueColor
        border.width: 1
        radius: 0
        gradient: Gradient {
            GradientStop { position: 0.1; color: primaryColor}

        }

        RowLayout{
            spacing: 1
            x: 40
            y:parent.height - 25

            Button {
                id: threads
                text: qsTr("Threads")
                Layout.alignment: Qt.AlignRight

                contentItem: Text {
                    text: threads.text
                    font: threads.font
                    opacity: enabled ? 1.0 : 0.3
                    color: threads.down ? "#17a81a" : "white"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    implicitWidth: 90
                    implicitHeight: 20
                    opacity: enabled ? 1 : 0.3
                    border.color: threads.down ? "#17a81a" : "transparent"
                    border.width: 1
                    radius: 0
//                    color: "#ffa23d"  // I update background color by this
                        color: primaryColor
                }
            }

            Button {
                id: chats
                text: qsTr("Chats")
                Layout.alignment: Qt.AlignRight

                contentItem: Text {
                    text: chats.text
                    font: chats.font
                    opacity: enabled ? 1.0 : 0.3
                    color: chats.down ? "#17a81a" : "white"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    implicitWidth: 90
                    implicitHeight: 20
                    opacity: enabled ? 1 : 0.3
                    border.color: chats.down ? "#17a81a" : "transparent"
                    border.width: 1
                    radius: 0
//                    color: "#ffa23d"  // I update background color by this
                        color: primaryColor
                }
            }

            Button {
                id: calls
                text: qsTr("Calls")
                Layout.alignment: Qt.AlignRight
                y: 20

                contentItem: Text {
                    text: calls.text
                    font: calls.font
                    opacity: enabled ? 1.0 : 0.3
                    color: calls.down ? "#17a81a" : "white"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    implicitWidth: 90
                    implicitHeight: 20
                    opacity: enabled ? 1 : 0.3
                    border.color: calls.down ? "#17a81a" : "transparent"
                    border.width: 1
                    radius: 0
//                    color: "#ffa23d"  // I update background color by this
                        color: primaryColor
                }
            }

            Button {
                id: status
                text: qsTr("Status")
                Layout.alignment: Qt.AlignRight
                y: 20

                contentItem: Text {
                    text: status.text
                    font: status.font
                    opacity: enabled ? 1.0 : 0.3
                    color: status.down ? "#17a81a" : "white"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    implicitWidth: 90
                    implicitHeight: 20
                    opacity: enabled ? 1 : 0.3
                    border.color: status.down ? "#17a81a" : "transparent"
                    border.width: 1
                    radius: 0
//                    color: "#ffa23d"  // I update background color by this
                        color: primaryColor
                }
            }

        }


        Rectangle {
            id: search
            color:primaryColorLight
            width: parent.width * 0.8
            height: 40
            radius: 5
            x: 15
            y: parent.height * 0.5

            Image {
                id: searchImg
                source: "images/search.png"
                height: parent.height
                width: parent.height
            }

            TextField{
                placeholderText: "Search your keywords"

                x: 50

                background: Rectangle {
                    implicitWidth: search.width
                    implicitHeight: 40
                    opacity: enabled ? 1 : 0.3
                    radius: 5
                    color: primaryColorLight

                }
            }

        }


        Rectangle{
            id: prifilePicFrame
            height: parent.height * 0.3
            width:  parent.height * 0.3
            border.color: secondaryColor
            border.width: 1
            radius: 100
            color: primaryColorLight
//            anchors.verticalCenter: parent.verticalCenter
            x: 20
            y: parent.height * 0.1

            Image {
                id: profileImg
                source: "images/mine_passportsize.jpeg"
                height: parent.height
                width: parent.width
                anchors.fill: parent
//                fillMode: parent
            }

        }

        Rectangle{
            id: profileName
            height: parent.height * 0.3
            width:  parent.height * 0.6
            color: primaryColor
            x: 90
            y: 20

            Text {
                id: name
                text: qsTr("Zask Nafis ")
                color: "white"
                font.bold: true
                font.pointSize: 15
//                y: parent.height * 0.1

            }
            Text {
                id: profileStatus
                text: qsTr("Find your profile status")
                color: secondaryColor
                y: parent.height * 0.5
                font.underline: true

            }

        }


    }

     PaletteMsg{}



}

















