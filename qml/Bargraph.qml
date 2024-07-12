import QtQuick
import QtGraphs
import QtCharts 2.7

import QtQuick

Item {
    width: 200; height: 200

    DropArea {
        x: 75; y: 75
        width: 50; height: 50

        Rectangle {
            anchors.fill: parent
            color: "green"

            visible: parent.containsDrag
        }
    }

    Rectangle {
        x: 10; y: 10
        width: 20; height: 20
        color: "red"

        Drag.active: dragArea.drag.active
        Drag.hotSpot.x: 10
        Drag.hotSpot.y: 10

        MouseArea {
            id: dragArea
            anchors.fill: parent

            drag.target: parent
        }
    }
}


// ChartView {
//     BarCategoryAxis {
//         id: categoryAxis
//         categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun" ]
//     }
// // Add a few series...
// }


// Rectangle {
//         id: rect
//         width: 100; height: 100
//         color: "red"

//         MouseArea {
//             id: mouseArea
//             anchors.fill: parent
//         }

//         states: State {
//             name: "moved"; when: mouseArea.clicked
//             PropertyChanges { target: rect; x: window.width; y: 0 }
//         }

//         // transitions: Transition {
//         //     NumberAnimation { properties: "x,y"; easing.type: Easing.InOutQuad }
//         // }
        
//         transitions: [
//             Transition {
//                 from: "*"; to: "middleRight"
//                 NumberAnimation {
//                     properties: "x,y";
//                     easing.type: Easing.InOutQuad;
//                     duration: 2000;
//                 }
//             },
//             Transition {
//                 from: "*"; to: "bottomLeft";
//                 NumberAnimation {
//                     properties: "x,y";
//                     easing.type: Easing.InOutQuad;
//                     duration: 200;
//                 }
//             },
//             //If any other rectangle is clicked, the icon will return
//             //to the start position at a slow speed and bounce.
//             Transition {
//                 from: "*"; to: "*";
//                 NumberAnimation {
//                     easing.type: Easing.OutBounce;
//                     properties: "x,y";
//                     duration: 4000;
//                 }
//             }
//         ]

//     }