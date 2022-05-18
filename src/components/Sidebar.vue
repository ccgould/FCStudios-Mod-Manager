<template>
  <div class="sidebar">
    <div class="profile">
      <img :src="user_pfp" alt="Profile Picture">
      <div class="profile-username"> {{ username }} </div>
    </div>
    <div class="sidebar-content">
      <div class="sidebar-section">{{ lang.get('sidebar.play') }}
        <a class="sidebar-option" v-on:click="navigateToPage(lang.get('page.subnautica'), 'mods.subnautica')">
          <i :style="{color: (app.game_id === 'mods.subnautica') ? 'white' : '#939395'}" class="fa-solid fa-fish-fins"></i>
          <div :style="{color: (app.game_id === 'mods.subnautica') ? 'white' : '#939395'}"> {{ lang.get('sidebar.subnautica') }} </div>
        </a>
      </div>
      <div class="sidebar-section">{{ lang.get('sidebar.community') }}
        <a class="sidebar-option" v-on:click="navigateToPage(lang.get('page.news'), 'main.news')">
          <i :style="{color: (app.page_id === 'main.news') ? 'white' : '#939395'}" class="fa-solid fa-newspaper"></i>
          <div :style="{color: (app.page_id === 'main.news') ? 'white' : '#939395'}"> {{ lang.get('sidebar.news') }} </div>
        </a>

        <a class="sidebar-option" v-on:click="navigateToPage(lang.get('page.account'), 'main.account')">
          <i :style="{color: (app.page_id === 'main.account') ? 'white' : '#939395'}" class="fa-solid fa-user"></i>
          <div :style="{color: (app.page_id === 'main.account') ? 'white' : '#939395'}"> {{ lang.get('sidebar.account') }} </div>
        </a>

        <a class="sidebar-option" v-on:click="navigateToPage(lang.get('page.about'), 'main.about')">
          <i :style="{color: (app.page_id === 'main.about') ? 'white' : '#939395'}" class="fa-solid fa-circle-info"></i>
          <div :style="{color: (app.page_id === 'main.about') ? 'white' : '#939395'}"> {{ lang.get('sidebar.about') }} </div>
        </a>
      </div>

      <div class="sidebar-bottom">
        <a class="sidebar-option" v-on:click="navigateToPage(lang.get('page.downloads'), 'main.downloads')">
          <i :style="{color: (app.page_id === 'main.downloads') ? 'white' : '#939395'}" class="fa-solid fa-download"></i>
          <div :style="{color: (app.page_id === 'main.downloads') ? 'white' : '#939395'}"> {{ lang.get('sidebar.downloads') }} </div>
        </a>

        <a class="sidebar-option" style="line-height: 40px; height: 40px;" v-on:click="navigateToPage(lang.get('page.settings'), 'main.settings')">
          <i :style="{color: (app.page_id === 'main.settings') ? 'white' : '#939395'}" class="fa-solid fa-gear"></i>
          <div :style="{color: (app.page_id === 'main.settings') ? 'white' : '#939395'}"> {{ lang.get('sidebar.settings') }}</div>
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
      if (page_id.includes('mods.')) {
        this.app.page_id = 'main.game'
        this.app.page = new_page
        this.app.last_page = ''
        this.app.game_id = page_id
      } else {
        this.app.page = new_page
        this.app.page_id = page_id
        this.app.last_page = ''
        this.app.game_id = ''
      }
      if (page_id === "") {
        page_id = new_page
      }
    }
  }
}
</script>