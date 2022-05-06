'use strict'

import { app, protocol, BrowserWindow, screen } from 'electron'
import { createProtocol } from 'vue-cli-plugin-electron-builder/lib'
import installExtension, { VUEJS3_DEVTOOLS } from 'electron-devtools-installer'
import { join } from 'path'
const isDevelopment = process.env.NODE_ENV !== 'production'

import { Store } from './main/store'
import { i18n } from './main/i18n'
new Store();
new i18n()

let width, height

function debugMessage(location, message) {console.log(`%c[background.js] %c[${location}] %c${message}`, 'color: red', 'color: crimson', 'color: lightblue')}
debugMessage('main', 'loaded!')

protocol.registerSchemesAsPrivileged([
  { scheme: 'app', privileges: { secure: true, standard: true } }
])

async function createWindow() {
  height = screen.getPrimaryDisplay().workAreaSize.height;
  width = screen.getPrimaryDisplay().workAreaSize.width;

  const win = new BrowserWindow({
    minWidth: Math.round(width * 0.7),
    minHeight: Math.round(height * 0.7),
    width: Math.round(width * 0.7),
    height: Math.round(height * 0.7),
    icon: __dirname + '/assets/icon.ico',
    frame: false,
    webPreferences: {
      nodeIntegration: false,
      contextIsolation: true,
      preload: join(__dirname, 'preload.js')
    }
  })
  debugMessage('createWindow', 'created browser window')
  win.setBackgroundColor('#383B40')
  debugMessage('createWindow', 'set background color to #383B40')

  if (process.env.WEBPACK_DEV_SERVER_URL) {
    await win.loadURL(process.env.WEBPACK_DEV_SERVER_URL)
    debugMessage('createWindow', '[dev] loaded dev server')
  } else {
    createProtocol('app')
    win.loadURL('app://./index.html')
    debugMessage('createWindow', 'loaded index.html')
  }
}

app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') {
    debugMessage('main', 'quiting app')
    app.quit()
  }
})

app.on('activate', () => {
  if (BrowserWindow.getAllWindows().length === 0) {
    createWindow()
  }
})

app.on('ready', async () => {
  if (isDevelopment && !process.env.IS_TEST) {
    // Install Vue Devtools
    try {
      debugMessage('ready', 'installing vue dev tools')
      await installExtension(VUEJS3_DEVTOOLS)
    } catch (e) {
      console.error('Vue Devtools failed to install:', e.toString())
    }
  }
  createWindow()
})

if (isDevelopment) {
  if (process.platform === 'win32') {
    process.on('message', (data) => {
      if (data === 'graceful-exit') {
        debugMessage('main', 'quiting app')
        app.quit()
      }
    })
  } else {
    process.on('SIGTERM', () => {
      debugMessage('main', 'quiting app')
      app.quit()
    })
  }
}
