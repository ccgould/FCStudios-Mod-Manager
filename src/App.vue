<template>
  <sidebar username="Dev Test"
           user_pfp="https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Solid_blue.svg/225px-Solid_blue.svg.png"/>
  <div class="main-content">
    <navbar></navbar>
    <settingsPage :visible="pageVisibility['main.settings']"></settingsPage>
    <game-page :visible="pageVisibility['main.game']"></game-page>
  </div>
</template>

<script>
import sidebar from './components/Sidebar.vue'
import navbar from './components/Navbar.vue'
import settingsPage from './pages/settings'
import gamePage from './pages/gamepage'
import  { app } from '@/main/state'
import './style.less'

export default {
  name: 'App',
  data () {
    return {
      app,
      pageVisibility: {
        'main.settings': 0,
        'main.game': 0
      }
    }
  },
  components: {
    sidebar,
    navbar,
    settingsPage,
    gamePage
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
    configWatch () {
      return this.app.config
    },
    pageWatch() {
      return this.app.page_id
    },
  },
  watch: {
    configWatch: {
      handler(newValue, oldValue) {
        this.debugMessage('config watch', 'config changed from ' + oldValue + ' to ' + newValue)
        window.storage.update(JSON.stringify(newValue))
      },
      deep: true
    },
    pageWatch: {
      handler(newValue, oldValue) {
        this.debugMessage('page watch', 'page changed from ' + oldValue + ' to ' + newValue)
        Object.keys(this.pageVisibility).forEach(v => this.pageVisibility[v] = 0)
        this.pageVisibility[newValue] = 1
      }
    }
  }
}
</script>

