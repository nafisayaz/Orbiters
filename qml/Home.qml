
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick


Item {
    id: homeItem
    Loader {
        id: homeLoader
        visible: headerVisibility
        source: "Header.qml"
    }
    Connections {
        target: homeLoader.item

        
    }
    

}