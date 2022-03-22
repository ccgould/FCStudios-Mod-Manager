const electron = require('electron');
const Store = require('electron-store');
const ejs = require('ejs-electron');

const store = new Store();
let width, height

// Load Window
let win
const open_window = () => {
    win = new electron.BrowserWindow({
        webPreferences: {
            nodeIntegration: true,
            contextIsolation: false
        },
        minWidth: Math.round(width * 0.7),
        minHeight: Math.round(height * 0.7),
        width: Math.round(width * 0.7),
        height: Math.round(height * 0.7),
    })
    win.setBackgroundColor('#333')
}

// Runs When Ready
electron.app.whenReady().then(() => {
    height = electron.screen.getPrimaryDisplay().workAreaSize.height;
    width = electron.screen.getPrimaryDisplay().workAreaSize.width;
    open_window()
    win.setMenu(null)
    ejs.data('windowTitle', 'FC Studios Mod Manager ' + require('./package.json').version)
    win.loadFile('./app/renderer/views/main.ejs')
    electron.app.on('activate', () => {
        if (electron.BrowserWindow.getAllWindows().length === 0) open_window()
    })
})
