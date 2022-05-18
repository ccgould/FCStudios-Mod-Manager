const ipcMain = require('electron').ipcMain
const ElecStore = require('electron-store')

function debugMessage(location, message) {console.log(`%c[store.js] %c[${location}] %c${message}`, 'color: red', 'color: crimson', 'color: lightblue')}
debugMessage('main', 'loaded!')

class Store {
    constructor() {
        this.default = {
            "lang": "en_US",
        }

        // Storage object
        Store.config = new ElecStore({name: 'config',
                                    defaults: this.default,
                                    clearInvalidConfig: true})

        // Listen for changes
        ipcMain.on('get-config', (event) => {
            debugMessage('get-config', 'called')
            event.returnValue = Store.config.store
        })

        ipcMain.on('set-config', (_event, store) => {
            debugMessage('set-config', 'received data: ' + JSON.stringify(store))
            Store.config.store = store
        })
    }
}

module.exports = {Store}
