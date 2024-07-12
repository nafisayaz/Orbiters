
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick


Window {
    id: window
    width: 480
    height: 840
    visible: true
    // title: qsTr("Orbiters-In")

    property string primaryColor: "#001C2D"
    property string primaryColorLight: "#cfeafa"
    property string primaryColorDark: "#000e17"

    // property string secondaryColor: "#ef7d00"
    property string secondaryColor: "#00d7ff"


    property string blueColor: "#01064a"
    property string oldOriginalColor: "#21447"

    
    property bool indexVisibility : true
    property bool loginVisibility : false
    property bool homeVisibility : false
    property bool headerVisibility : false
    property bool searchbarVisibility : false
    

    Loader {
        id: indexLoader
        visible: indexVisibility
        source: "Index.qml"
    }

    Connections {
        target: indexLoader.item
        
        // function onswitchIndex(msg) {
        //     indexVisibility = false
        //     loginVisibility = true
           
        // }
        
    }

    Loader {
        id: loginLoader
        visible: loginVisibility
        source: "Login.qml"

    }
    Connections {
        target: loginLoader.item

        
    }

    Loader {
        id: homeLoader
        visible: homeVisibility
        source: "Home.qml"
    }
    Connections {
        target: homeLoader.item

        
    }


}
