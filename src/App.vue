<template>
  <img alt="Vue logo" src="./assets/logo.png">
  <Sidebar username="Swiftzerr"
           user_pfp="https://data.whicdn.com/images/305354737/original.jpg"/>
</template>

<script>
import Sidebar from './components/Sidebar.vue'
import './style.less'

export default {
  name: 'App',
  components: {
   Sidebar
  },
  mounted() {
    // Add any external JS you want to import into this list
    let scripts = [
        'https://kit.fontawesome.com/b51eaa32e3.js'
    ]

    for (let i in scripts) {
      let script = document.createElement('script')
      script.src = scripts[i]
      document.body.appendChild(script)
    }
  }
}
</script>

