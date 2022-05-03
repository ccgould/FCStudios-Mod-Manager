<template>
  <Sidebar username="Swiftzerr"
           user_pfp="https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Solid_blue.svg/225px-Solid_blue.svg.png"/>
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

