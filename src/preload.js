import { contextBridge, ipcRenderer } from 'electron'

function debugMessage(location, message) {console.log(`%c[preload.js] %c[${location}] %c${message}`, 'color: red', 'color: crimson', 'color: lightblue')}

debugMessage('main', 'loaded!')


contextBridge.exposeInMainWorld('ipcRenderer', {
    send_nodata: (channel) => {
        debugMessage('ipcRenderer.send_nodata', 'Sending message to channel ' + channel)
        let validChannels = ['get-config']
        if (validChannels.includes(channel)) {
            return ipcRenderer.sendSync(channel)
        }
    },
    send: (channel, data) => {
        debugMessage('ipcRenderer.send', `Sending ${data} to ${channel}`)
        let validChannels = []
        if (validChannels.includes(channel)) {
            return ipcRenderer.sendSync(channel, data)
        }
    },
})

contextBridge.exposeInMainWorld('storage', {
    update: (data) => {
        debugMessage('storage.update', data)
        ipcRenderer.send('set-config', JSON.parse(data))
    },
    get: () => {
        debugMessage('storage.get', 'called')
        return ipcRenderer.sendSync('get-config')
    }
})

contextBridge.exposeInMainWorld('lang', {
    get: (data) => {
        debugMessage('lang.get', data)
        ipcRenderer.send('getWord', data)
    },
    getLangs: () => {
        debugMessage('storage.getLangs', 'called')
        return ipcRenderer.sendSync('getLangList')
    }
})