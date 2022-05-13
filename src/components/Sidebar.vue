<template>
  <div class="sidebar">
    <div class="profile">
      <img :src="user_pfp" alt="Profile Picture">
      <div class="profile-username"> {{ username }} </div>
    </div>
    <div class="sidebar-content">
      <div class="sidebar-section">Launcher
        <a class="sidebar-option" id="mods" v-on:click="navigateToPage(lang.get('page.mods'), 'main.mods')">
          <i class="fa-solid fa-circle-play"></i>
          <div> {{ lang.get('sidebar.mods') }} </div>
        </a>

        <a class="sidebar-option" id="news" v-on:click="navigateToPage(lang.get('page.news'), 'main.news')">
          <i class="fa-solid fa-newspaper"></i>
          <div> {{ lang.get('sidebar.news') }} </div>
        </a>

        <a class="sidebar-option" id="settings" v-on:click="navigateToPage(lang.get('page.settings'), 'main.settings')">
          <i class="fa-solid fa-gear"></i>
          <div> {{ lang.get('sidebar.settings') }}</div>
        </a>

        <a class="sidebar-option" id="downloads" v-on:click="navigateToPage(lang.get('page.downloads'), 'main.downloads')">
          <i class="fa-solid fa-download"></i>
          <div> {{ lang.get('sidebar.downloads') }} </div>
        </a>
      </div>
      <div class="sidebar-section">Community
        <a class="sidebar-option" id="account" v-on:click="navigateToPage(lang.get('page.account'), 'main.account')">
          <i class="fa-solid fa-user"></i>
          <div> {{ lang.get('sidebar.account') }} </div>
        </a>

        <a class="sidebar-option" id="discord" v-on:click="functions.openLink('https://discord.gg/4pyZx7N2tR')">
          <i class="fa-brands fa-discord"></i>
          <div> {{ lang.get('sidebar.discord') }} </div>
        </a>

        <a class="sidebar-option" id="website" v-on:click="functions.openLink('https://fcstudioshub.com/')">
          <i class="fa-brands fa-chrome"></i>
          <div> {{ lang.get('sidebar.website') }} </div>
        </a>
      </div>
    </div>
  </div>
</template>

<script>
import  { app } from '@/main/state'
export default {
  name: "App-Sidebar",
  data () {
    return {
      app,
      lang: window.lang,
      functions: window.functions,
    }
  },
  props: {
    username: String,
    user_pfp: String
  },
  methods: {
    debugMessage: function (location, message) {console.log(`%c[Sidebar.vue] %c[${location}] %c${message}`, 'color: red', 'color: crimson', 'color: lightblue')},
    navigateToPage: function (new_page, page_id = "") {
      if (page_id === "") {
        page_id = new_page
      }
      this.app.page = new_page
      this.app.page_id = page_id
      this.app.last_page = ''
    }
  }
}
</script>