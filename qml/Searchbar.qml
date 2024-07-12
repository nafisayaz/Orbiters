
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts
import QtQuick.Controls 2.15
import Qt5Compat.GraphicalEffects



Item {
    id: searchbarItem

    property bool cancelVisibility : false

    Rectangle{
        id: searchbar
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
                id: backPicFrame
                width: parent.height * 0.8
                height: parent.height * 0.8
                x: 5
                anchors.verticalCenter: parent.verticalCenter
                color: "transparent"
                radius: width / 2
                clip: true

                border.color:  primaryColor
                border.width: backPicFrame.width * 0.15

                Image {
                    id: backImage
                    source: "../images/back.svg" // Path to your image
                    width: parent.width * 0.7
                    height: parent.height * 0.7
                    anchors.centerIn: parent
                    smooth: true
                    z: -1
                }

                ColorOverlay {
                    anchors.fill: backImage
                    source: backImage
                    color: primaryColorLight  // Color you want to apply to the SVG
                }

                MouseArea {
                    anchors.fill: backPicFrame
                    onClicked: {
                        if(searchbarVisibility){
                            searchbarVisibility = false;
                            headerVisibility = true;
                        }
                    }
                }

            }

            TextField{
                id: searchField
                text: "Search anything ..."
                echoMode: TextInput.Normal
                focus: true
                hoverEnabled: true
                // anchors.centerIn: parent
                anchors.verticalCenter: parent.verticalCenter
                color: primaryColorLight
                x: 70

                background: Rectangle {
                    implicitWidth: searchBox.width * 0.7
                    implicitHeight: searchBox.height
                    opacity: enabled ? 1 : 0.3
                    color: primaryColor
                    radius: 10
                }
                onPressed: {
                    text=""
                    if(!cancelVisibility){
                        cancelVisibility = true;
                    }
                }
            }
            
            Rectangle {
                id: cancelPicFrame
                width: parent.height * 0.8
                height: parent.height * 0.8
                x: parent.width - width
                anchors.verticalCenter: parent.verticalCenter
                color: "transparent"
                radius: width / 2
                clip: true
                visible: cancelVisibility

                border.color:  primaryColor
                border.width: cancelPicFrame.width * 0.15

                Image {
                    id: cancelImage
                    source: "../images/cancel.svg" // Path to your image
                    width: parent.width * 0.7
                    height: parent.height * 0.7
                    anchors.centerIn: parent
                    smooth: true
                    z: -1
                    // visible: cancelVisibility

                }
                
                ColorOverlay {
                    anchors.fill: cancelImage
                    source: cancelImage
                    color: primaryColorLight  // Color you want to apply to the SVG
                }

                MouseArea {
                    anchors.fill: cancelPicFrame
                    onClicked: {
                        if(cancelVisibility){
                            cancelVisibility = false;
                            searchField.text = "Search anything ..."
                            
                        }
                    }
                }
            }
        }
    }
}
