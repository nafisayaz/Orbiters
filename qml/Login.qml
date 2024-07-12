
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick

Item {

    // property string secondaryColor: "#ef7d00"
    // property string primaryColor: "#001C2D"
    // property string whiteColor: "#001C2D"
    // property string blueColor: "#01064a"

    
    property bool passcodenotifierVisibility : false
    

    

    id: login

    Rectangle{
        id: main_id
        height: window.height
        width: window.width
        border.color: blueColor
        border.width: 1
        radius: 0
        gradient: Gradient {
            GradientStop { position: 0.2; color: primaryColorDark}
        }

        RowLayout{
            id: logo
            x: parent.width * 0.4
            anchors.horizontalCenter: parent.horizontalCenter
            y: parent.height * 0.1
            Rectangle{
                width: 120
                height: 120
                color: primaryColorDark
                Image {
                    id: icon
                    source: "/images/inorbiter.png"
                    anchors.fill: parent

                }

            }

        }

        ColumnLayout{
            spacing: 20
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            Rectangle {
                id: passcodenotifier
                color: primaryColorDark
                width: 250
                height: 30
                Text{
                    text: "Incorrect passcode ****"
                    color: "red";
                    // font.family: "aakar"
                    // font.italic: true
                    // font.underline: true
                    font.pointSize: 12
                    anchors.fill: parent
                    visible: passcodenotifierVisibility
                }
            }

            Rectangle {
                id: passcodeRec
                width: 270
                height: 40
                color: primaryColor
                border.color: control.down ? "#17a81a" : primaryColor
                border.width: 1
                radius: 10
                
                TextField{
                    id: passcode
                    // placeholderText: "Passcode"
                    text: "Phone number or email ID"
                    echoMode: TextInput.Normal
                    focus: true
                    hoverEnabled: true
                    anchors.centerIn: parent
                    color: primaryColorLight

                    background: Rectangle {
                        implicitWidth: 250
                        implicitHeight: 30
                        opacity: enabled ? 1 : 0.3
                        color: primaryColor
                        radius: 10
                    }
                    onPressed: {
                        text=""
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
                    border.color: control.down ? secondaryColor : primaryColorLight
                    border.width: 1
                    radius: 10
                    // color: "#ffa23d"  // I update background color by this
                    color: secondaryColor
                }

                MouseArea {
                   anchors.fill: parent
                    // onClicked: recruitButton.switchIndex("clicked!")
                    onClicked: { // working states
                        if(appManager.switchLogin(passcode.text)){

                            loginVisibility = false
                            homeVisibility = true
                            headerVisibility = true
                            passcodenotifierVisibility = false

                            console.log("loginVisibility : ", loginVisibility)
                            console.log("homeVisibility : ", homeVisibility)
                            
                        }else{
                            passcodenotifierVisibility = true
                        }
                        
                    }
                }


            }

            Rectangle {
                id: scannerLink
                color:primaryColorDark
                width: 250
                height: 30
                Text{
                    text: "Don't have passcode ?"
                    color: secondaryColor;
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
