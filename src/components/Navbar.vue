<template>
  <div class="topbar">
    <a v-if="config.page.last.component !== ''"><i class="fa-solid fa-arrow-left"></i></a>
    <div id="pagetitle"> {{ config.page.name[0].toUpperCase() + config.page.name.slice(1) }} </div>
  </div>
</template>

<script>
export default {
  name: "App-Navbar",
  data () {
    return {
      config: window.storage.get(),
      lang: window.lang
    }
  },
  methods: {
    debugMessage: function (location, message) {console.log(`%c[Sidebar.vue] %c[${location}] %c${message}`, 'color: red', 'color: crimson', 'color: lightblue')}
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