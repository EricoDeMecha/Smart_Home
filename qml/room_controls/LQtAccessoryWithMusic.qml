import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

PaddedRectangle {
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth

    Material.elevation: 2

    radius: containerId.implicitWidth / 16
    border.width: 1
    border.color: "gray"
    color: "transparent"

    property alias iconSource: accessoryIconId.source
    property alias title: accessoryTitleId.text
    property alias status: accessoryStatusId.text
    property alias currentSong: musicId.currentSong
    property alias currentArtist: musicId.currentArtist

    RowLayout {
        id: containerId
        anchors.fill: parent
        anchors.margins: 8
        ColumnLayout {
            Layout.fillHeight: true
            Layout.fillWidth: true
            IconImage {
                id: accessoryIconId
                name: "accessory"
            }
            Item {
                Layout.fillHeight: true
            }
            Text {
                id: accessoryTitleId
                font.bold: true
                font.pointSize: 18
            }
            Text {
                id: accessoryStatusId
            }
        }
        Item {
            Layout.fillWidth: true
        }
        LQtMusic {
            id: musicId
            Layout.fillHeight: true
        }
    }
}
