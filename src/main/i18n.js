// This file handles all localization for the application.
// I will eventually make a Readme to explain this system.
const fs = require('fs');
const path = require('path');
const { ipcMain, ipcRenderer } = require("electron");

function debugMessage(location, message) {console.log(`%c[i18n.js] %c[${location}] %c${message}`, 'color: red', 'color: crimson', 'color: lightblue')}
debugMessage('main', 'loaded!');

/* @namespace */
class i18n {
    constructor() {
        ipcMain.on('getWord', (event, word) => {
            debugMessage('getWord', 'received data: ' + word)
            event.returnValue = this.getWord(word);
        })

        ipcMain.on('getLangList', (event) => {
            debugMessage('getLangList', 'called')
            event.returnValue = this.getLangList();
        })
    }

    getLangList() {
        const langPath = path.join(__dirname, '..', 'i18n');
        fs.readdir(langPath, function (err, files) {
            if (err) {
                console.error("[i18n]" + err);
                return [];
            }
            let finalfiles = [];
            for (let i in files) {
                if (files[i].endsWith('.json')) {
                    finalfiles.push(files[i].replace('.json', ''));
                }
            }
            return finalfiles;
        })
    }

    getWord(word, options = {}) {
        let storage = ipcMain.
        let lang = storage.lang;
        // Check if path exists
        if (!fs.existsSync(langPath)) {
            console.error("[i18n] Language file not found: " + langPath + ". Using default language: en");
            let temp_storage = ipcRenderer.sendSync('get-config')
            ipcRenderer.send('set-config', temp_storage.lang = 'en');
            lang = 'en_US'
        }
        const langPath = path.join(__dirname, '..', 'i18n', lang + '.json');
        const langData = JSON.parse(fs.readFileSync(langPath, 'utf8'));
        return langData[word] || word;
    }
}

module.exports = {i18n};