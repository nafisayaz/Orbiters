import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick



Item {
    id: main_deck
    width: 640
    height: 480
    visible: true

    Rectangle{
        id: main_id
        width: parent.width
        height: parent.height
        border.color: '#01064a'
        border.width: 1
        radius: 0
        gradient: Gradient {
                GradientStop { position: 0.2; color: "#01064a" }
        }

        RowLayout{
//            id: "logo"
            x: parent.width * 0.4
//            anchors.horizontalCenter: parent.horizontalCenter
            y: parent.height * 0.1

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
                    cursorVisible: false
                    color: "blue";
                    anchors.fill: parent
                }
            }

            Button{
                id: loginForm1
                Layout.alignment: Qt.AlignRight
                Text {
                    text: qsTr("Login")
                    anchors.centerIn: parent

                }
            }

            Rectangle {
                id : scannerLink
                color:"#01064a"
                width: 250
                height: 30
                Text{
                    text: "don't have passcode ?"
                    color: "#00d7ff";
                    font.italic: true
                    font.underline: true
                    anchors.fill: parent
                }
            }
        }

    }

}


//Window {
//    id: window
//    width: 640
//    height: 480
//    visible: true
//    title: qsTr("Twelnet")

//    Rectangle{
//        id: main_id
//        width: parent.width
//        height: parent.height
//        border.color: '#01064a'
//        border.width: 1
//        radius: 0
//        gradient: Gradient {
//                GradientStop { position: 0.2; color: "#01064a" }
////                GradientStop { position: 0.0; color: "#00d7ff" }
////                GradientStop { position: 0.3; color: "#01064a" }
//        }

//        RowLayout{
////            id: "logo"
//            x: parent.width * 0.4
////            anchors.horizontalCenter: parent.horizontalCenter
//            y: parent.height * 0.1
////            Text {
////                id: name
////                text: qsTr("Twelnet")
////                color: "#c87137"
////                font.bold: true
////                font.pointSize: 30

////            }

//        }

//        ColumnLayout{
//            spacing: 20
//            anchors.horizontalCenter: parent.horizontalCenter
//            anchors.verticalCenter: parent.verticalCenter
////                anchors.leftMargin:  200

////            Rectangle {
////                color:"white"
////                width: 250
////                height: 30
////                border.color : "red"
////                TextField{
////                    placeholderText: "Email Id"
////                    cursorVisible: false
////                    color: "blue";
////                    anchors.fill: parent
////                }
////            }
//            Rectangle {
//                color:"white"
//                width: 250
//                height: 30
//                border.color : "red"
//                TextField{
//                    placeholderText: "Passcode"
//                    echoMode: TextInput.Password
//                    cursorVisible: false
//                    color: "blue";
//                    anchors.fill: parent
//                }
//            }

//            Button{
//                id: loginForm1
//                Layout.alignment: Qt.AlignRight
////                highlighted: true
////                flat: true
////                width: 200
////                height: 30
//                Text {
//                    text: qsTr("Login")
//                    anchors.centerIn: parent

//                }
//            }

//            Rectangle {
//                id : scannerLink
//                color:"#01064a"
//                width: 250
//                height: 30
//                Text{
//                    text: "don't have passcode ?"
//                    color: "#00d7ff";
//                    font.italic: true
//                    font.underline: true
//                    anchors.fill: parent
//                }
//            }


////            Button{
////              onPressed:  Qt.exit(window.close())
////            }


//        }

//    }

//}
