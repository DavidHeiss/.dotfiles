import workspaces from "../workspaces.js";
export default (monitor) => Widget.Window({
    name: `Panel ${monitor}`,
    class_name: "panel",
    anchor: ["top", "left", "right"],
    layer: "bottom",
    exclusivity: "exclusive",
    monitor: monitor,
    child: Widget.Box({
        class_name: "bar",
        children: [
            Widget.Label("Bar"),
            workspaces(monitor, 5),
        ]
    })
});
