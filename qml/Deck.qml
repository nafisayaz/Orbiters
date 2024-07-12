
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick


Item {
    id: deck
        
        RowLayout{
            spacing: 1
            x: 40
            y:window.height - 25

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


    //  PaletteMsg{}



}

















