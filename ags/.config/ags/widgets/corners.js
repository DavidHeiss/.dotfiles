export default (monitor) => Widget.Window({
    name: "corners",
    class_name: "corners",
    monitor: monitor,
    layer: "bottom",
    exclusivity: "normal",
    anchor: ["top", "right", "bottom", "left"],
    click_through: true,
});
