import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtMultimedia

Item {
    id: rootId
    implicitHeight: containerId.implicitHeight
    implicitWidth: containerId.implicitWidth
    Material.elevation: 2

    property alias topic: topicId.text
    property alias subtopic: subtopicId.text
    property alias feed: videoId.source

    MediaPlayer {
        id: videoId
        videoOutput: videoOutput
    }

    ColumnLayout {
        id: containerId
        anchors.fill: parent
        Text {
            id: topicId
            Layout.alignment: Qt.AlignHCenter
            font.pointSize: 24
            font.bold: true
        }
        Text {
            id: subtopicId
            Layout.alignment: Qt.AlignHCenter
            wrapMode: Text.Wrap
        }
        RoundButton {
            id: lockId
            Layout.alignment: Qt.AlignHCenter
            icon.source: "qrc:/assets/unlock.svg"
        }

        Rectangle {
            Layout.alignment: Qt.AlignHCenter
            width: 200
            height: 100
            border.color: "white"
            border.width: 5
            radius: 1
            clip: true
            VideoOutput {
                id: videoOutput
                anchors.fill: parent
                fillMode: VideoOutput.Stretch
            }
        }
    }
    Component.onCompleted: {
        videoId.play();
    }
}
