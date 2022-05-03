const { defineConfig } = require('@vue/cli-service')

module.exports = defineConfig({
  transpileDependencies: true,
  pluginOptions: {
    electronBuilder: {
      builderOptions: {
        productName: "FCStudios Mod Manager",
        appId: 'modlauncher.fcstudioshub.com',
        "mac": {
          "target": "dmg",
          "icon": "public/icon.icns"
        },
        win: {
          "target": [
            "nsis"
          ],
          icon: 'public/icon.png',
          "requestedExecutionLevel": "requireAdministrator"
        },
        "nsis": {
          "installerIcon": "public/icon.ico",
          "uninstallerIcon": "public/icon.ico",
          "uninstallDisplayName": "FCStudios Mod Manager",
          "license": "license.txt",
          "oneClick": false,
          "allowToChangeInstallationDirectory": true
        }
      },
    },
  },
})
