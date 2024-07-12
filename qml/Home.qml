
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick


Item {
    id: headerItem
    Loader {
        id: headerLoader
        visible: headerVisibility
        source: "Header.qml"
    }
    Connections {
        target: headerLoader.item

        
    }
    
    Loader {
        id: searchbarLoader
        visible: searchbarVisibility
        source: "Searchbar.qml"
    }
    Connections {
        target: searchbarLoader.item

        
    }


    

}