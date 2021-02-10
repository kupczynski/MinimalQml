import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Window 2.2

ApplicationWindow
{
    id: mainWindow
    visible: true
    width: Screen.width
    height: Screen.height
    title: qsTr("Minimal Qml")

    header: ToolBar {
    	id: topToolbar
    	height: 50
        Column {
            anchors.fill: parent
            ToolButton {
                text: qsTr("‹")
                onClicked: stack.pop()
            }
            Label {
                text: "Title"
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                width: parent.width
                // Layout.fillWidth: true
            }
            ToolButton {
                text: qsTr("⋮")
                onClicked: menu.open()
            }
        }
    }


	Rectangle {
	    anchors.top: topToolbar.bottom
	    anchors.bottom: parent.bottom
	    width: parent.width
	    color: "red"

		gradient: Gradient {
		    GradientStop {
		        position: 0.0
		        SequentialAnimation on color {
		            loops: Animation.Infinite
		            ColorAnimation { from: "#14148c"; to: "#0E1533"; duration: 5000 }
		            ColorAnimation { from: "#0E1533"; to: "#14148c"; duration: 5000 }
		        }
		    }
		    GradientStop {
		        position: 1.0
		        SequentialAnimation on color {
		            loops: Animation.Infinite
		            ColorAnimation { from: "#14aaff"; to: "#437284"; duration: 5000 }
		            ColorAnimation { from: "#437284"; to: "#14aaff"; duration: 5000 }
		        }
		    }
		}

////////// MAIN DOCUMENT STARTS HERE //////////


		// StackView {
	 //        id: stack
	 //        anchors.fill: parent
	 //    }

	    Drawer {
	        id:             mainDrawer
	        // y:              mainWindow.header.height
	        height:         mainWindow.height// - mainWindow.header.height
	        edge:           Qt.RightEdge
	        position: 		0.15
	        interactive:    true
	        background: Rectangle {
	            color:  "red"
	        }
	        // property var    dialogComponent: null
	        // property var    dialogButtons: null
	        // property string dialogTitle: ""
	        // Loader {
	        //     id:             dlgLoader
	        //     anchors.fill:   parent
	        //     onLoaded: {
	        //         item.setupDialogButtons()
	        //     }
	        // }
	        onOpened: {
	            // dlgLoader.source = "QGCViewDialogContainer.qml"
	        }
	        onClosed: {
	            //console.log("View switch ok")
	            // mainWindow.popPreventViewSwitch()
	            // dlgLoader.source = ""
	        }

	        // onClicked: {
	        // 	mainDrawer.open()
	        // }
	    }
	} // Rectangle
}

