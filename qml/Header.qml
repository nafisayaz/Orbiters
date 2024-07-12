
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts
import QtQuick.Controls 2.15
import Qt5Compat.GraphicalEffects



Item {
    id: headerItem

    Rectangle{
        id: header
        height: window.height * 0.1
        width:  window.width
        border.width: 1
        radius: 0
       // color: primaryColor //secondaryColor //primaryColorDark //primaryColor
        gradient: Gradient {
            GradientStop { position: 0.1; color: primaryColorDark }

        }
        
        Rectangle {
            id:searchBox
            width: parent.width * 0.9
            height: parent.height * 0.6
            color: primaryColor
            anchors.centerIn: parent
            anchors.verticalCenter: parent.verticalCenter
            radius: 10

            Rectangle {
                id: profilePicFrame
                width: parent.height * 0.8
                height: parent.height * 0.8
                x: 5
                anchors.verticalCenter: parent.verticalCenter
                color: "transparent"
                radius: width / 2
                clip: true

                border.color:  primaryColor
                border.width: profilePicFrame.width * 0.15

                Image {
                    id: profileImage
                    source: "../images/mine_passportsize.jpeg" // Path to your image
                    width: parent.width * 0.7
                    height: parent.height * 0.7
                    anchors.centerIn: parent
                    smooth: true
                    z: -1
                }
            }
            
            Text{
                id:searchText
                text: "Search..."
                color: primaryColorLight
                x: 50
                anchors.verticalCenter: parent.verticalCenter
                
            }
        }
    }
}
