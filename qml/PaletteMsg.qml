
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
            GradientStop { position: 0.1; color:  primaryColorDark}

        }
        y: header.height + 1

        Rectangle{
            id: userName
            height: parent.height * 0.1
            width:  parent.width
            color: primaryColorDark
    //            anchors.verticalCenter: parent.verticalCenter
            x: parent.width * 0.04
            y: parent.height * 0.05


            Rectangle{
                id: userpic
                height: 50
                width:  50
                border.color: secondaryColor
                border.width: 1
                radius:200
                clip: true
                color: primaryColorLight
//                x: parent.width * 0.04
                y: parent.height * 0.05

                Image {
                    id: userImg
                    source: "../images/nisha.jpeg"
                    height: parent.height
                    width: parent.width
                    anchors.fill: parent
                }
            }

            Rectangle{
                id: profileName
                height: parent.height * 0.3
                width:  parent.height * 0.6
                color: primaryColorDark
    //            anchors.verticalCenter: parent.verticalCenter
                x: 60
                y: parent.height * 0.1


                Text {
                    id: name
                    text: qsTr("Kaushar Nisha Ayaz")
                    color: "white"
                    font.bold: true
                    font.pointSize: 12
    //                    y: parent.height * 0.1

                }
            }

            Rectangle{
                id: msghighlighter
                height: 30
                width:  parent.width
                color: primaryColorDark
    //            anchors.verticalCenter: parent.verticalCenter
                x: 80
                y: parent.height * 0.5
                Text {
                    id: msg
                    text: appManager.ret("How are you?") //qsTr("Hi How are you?")
                    color: primaryColorLight
                    font.bold: true
                    font.pointSize: 9
    //                    y: parent.height * 0.1

                }
                Text {
                    id: time
                    text: appManager.gettime()
                    color: primaryColorLight
                    font.bold: true
                    font.pointSize: 9
                    x: body.width * 0.5
                }
            }


        }

    }


    function recievetime(){

//        var t = new Date().toLocaleTimeString(Qt.locale("de_DE")).split(':')
//        return t[0]+ ":"+ t[1]

        return Qt.formatTime(new Date(),"HH:mm A")


    }



}
