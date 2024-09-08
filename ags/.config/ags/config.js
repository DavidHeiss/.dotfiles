import panel from "./widgets/panel.js";
import corners from "./widgets/corners.js";
App.config({
    style: "./style.css",
    windows: [
        panel(0),
        corners(0),
    ]
});
