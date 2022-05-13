<template>
  <sidebar username="Dev Test"
           user_pfp="https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Solid_blue.svg/225px-Solid_blue.svg.png"/>
  <div class="main-content">
    <navbar></navbar>
  </div>
</template>

<script>
import sidebar from './components/Sidebar.vue'
import navbar from './components/Navbar.vue'
import  { app } from '@/main/state'
import './style.less'

export default {
  name: 'App',
  data () {
    return {
      app
    }
  },
  components: {
    sidebar,
    navbar
  },
  mounted() {
    this.debugMessage('main', 'mounted!')

    // Add any external JS you want to import into this list
    let scripts = [
        'https://kit.fontawesome.com/b51eaa32e3.js'
    ]

    for (let i in scripts) {
      let script = document.createElement('script')
      script.src = scripts[i]
      document.body.appendChild(script)
    }
  },
  methods: {
    debugMessage: function (location, message) {console.log(`%c[App.vue] %c[${location}] %c${message}`, 'color: red', 'color: crimson', 'color: lightblue')}
  },
  computed: {
    configwatch () {
      return this.app.config
    }
  },
  watch: {
    configwatch: {
      handler(newValue, oldValue) {
        this.debugMessage('config watch', 'config changed from ' + oldValue + ' to ' + newValue)
        window.storage.update(JSON.stringify(newValue))
      },
      deep: true
    }
  }
}
</script>

