<template>
  <div class="topbar">
    <a v-if="app.last_page !== ''"><i class="fa-solid fa-arrow-left"></i></a>
    <div id="pagetitle"> {{ app.page[0].toUpperCase() + app.page.slice(1) }} </div>
  </div>
</template>

<script>
import  { app } from '@/main/state'
export default {
  name: "App-Navbar",
  data () {
    return {
      app,
      lang: window.lang
    }
  },
  methods: {
    debugMessage: function (location, message) {console.log(`%c[Sidebar.vue] %c[${location}] %c${message}`, 'color: red', 'color: crimson', 'color: lightblue')}
  },
}
</script>