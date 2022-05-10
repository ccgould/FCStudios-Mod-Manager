const { defineConfig } = require('@vue/cli-service')

module.exports = defineConfig({
  transpileDependencies: true,
  pluginOptions: {
    electronBuilder: {
      preload: 'src/preload.js',
      builderOptions: {
        productName: "FCStudios Mod Manager",
        appId: 'modlauncher.fcstudioshub.com',
        "mac": {
          "target": "dmg",
          "icon": "src/assets/icon.icns"
        },
        win: {
          "target": [
            "nsis"
          ],
          icon: 'src/assets/icon.png',
          "requestedExecutionLevel": "requireAdministrator"
        },
        "nsis": {
          "installerIcon": "src/assets/icon.ico",
          "uninstallerIcon": "src/assets/icon.ico",
          "uninstallDisplayName": "FCStudios Mod Manager",
          "license": "license.txt",
          "oneClick": false,
          "allowToChangeInstallationDirectory": true
        }
      },
    },
  },
})
