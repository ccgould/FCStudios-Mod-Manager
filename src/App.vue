<template>
  <sidebar username="Swiftzerr"
           user_pfp="https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Solid_blue.svg/225px-Solid_blue.svg.png"/>
  <div> {{ config.lang }} </div>
</template>

<script>
import sidebar from './components/Sidebar.vue'
import './style.less'

export default {
  name: 'App',
  data () {
    return {
      config: window.storage.get()
    }
  },
  components: {
   sidebar
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
  watch: {
    config: {
      handler(newValue, oldValue) {
        this.debugMessage('config watch', 'config changed from ' + oldValue + ' to ' + newValue)
        window.storage.update(JSON.stringify(newValue))
      },
      deep: true
    }
  }
}
</script>

