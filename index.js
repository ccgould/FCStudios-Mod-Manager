const electron = require('electron');
const Store = require('electron-store')

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
        minWidth: Math.round(width * 0.5),
        minHeight: Math.round(height * 0.5),
        width: Math.round(width * 0.5),
        height: Math.round(height * 0.5),
    })
    win.setBackgroundColor('#333')
}

// Runs When Ready
electron.app.whenReady().then(() => {
    height = electron.screen.getPrimaryDisplay().workAreaSize.height;
    width = electron.screen.getPrimaryDisplay().workAreaSize.width;
    open_window()
    win.setMenu(null)
    electron.app.on('activate', () => {
        if (electron.BrowserWindow.getAllWindows().length === 0) open_window()
    })
})
