import workspaces from "./panel/workspaces.js"
import date from "./panel/date.js"
import audio from "./panel/audio.js"

const SPACING = 16

export default (monitor: number) => Widget.Window({
    name: `Panel ${monitor}`,
    class_name: "panel",
    anchor: ["top", "left", "right"],
    layer: "bottom",
    exclusivity: "exclusive",
    monitor: monitor,
    child: Widget.Box({
        spacing: SPACING,
        class_name: "bar",
        children: [
            Widget.Box({
                hexpand: true,
                hpack: "start",
                spacing: SPACING,
                children: [workspaces(0, 5),]
            }),
            Widget.Box({
                hexpand: true,
                hpack: "center",
                spacing: SPACING,
                children: [date()]
            }),
            Widget.Box({
                hexpand: true,
                hpack: "end",
                spacing: SPACING,
                children: [
                    audio(),
                ]
            }),
        ]
    })
})
