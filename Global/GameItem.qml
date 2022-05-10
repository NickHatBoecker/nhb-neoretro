import QtQuick 2.8
import QtGraphicalEffects 1.12

Item {
    id: cpnt_gameList_game

    Item {
        anchors.fill: parent

        Image {
            id: img_game_screenshot
            source: model.assets.screenshot || model.assets.background
            anchors.fill: parent
            asynchronous: true
            fillMode: Image.PreserveAspectCrop
        }

        Rectangle {
            border.color: "#f2992e"
            border.width: 3
            anchors.fill: parent
            color: "#181818"
            opacity: doubleFocus ? 0.7 : 0
            Behavior on opacity {
                NumberAnimation { duration: 200; }
            }
        }

        Rectangle {
            width: parent.height * 0.2
            height: width
            anchors.centerIn: parent
            radius: width

            color: "#00991E"
            Text {
                anchors.centerIn: parent
                text: "A"
                font {
                    family: global.fonts.sans
                    weight: Font.Bold
                    pixelSize: parent.height * 0.75
                }
                color: "white"
            }
            visible: doubleFocus
        }
    }
}
