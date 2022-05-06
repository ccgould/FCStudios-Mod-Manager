<template>
  <div class="sidebar">
    <div class="profile">
      <img :src="user_pfp" alt="Profile Picture">
      <div class="profile-username"> {{ username }} </div>
    </div>
    <div class="sidebar-content">
      <div class="sidebar-section">Launcher
        <a class="sidebar-option" id="mods">
          <i class="fa-solid fa-circle-play"></i>
          <div> {{ lang.get('sidebar.mods') }} </div>
        </a>

        <a class="sidebar-option" id="news">
          <i class="fa-solid fa-newspaper"></i>
          <div>News</div>
        </a>

        <a class="sidebar-option" id="settings">
          <i class="fa-solid fa-gear"></i>
          <div>Settings</div>
        </a>

        <a class="sidebar-option" id="downloads">
          <i class="fa-solid fa-download"></i>
          <div>Downloads</div>
        </a>
      </div>
      <div class="sidebar-section">Community
        <a class="sidebar-option" id="account">
          <i class="fa-solid fa-user"></i>
          <div>Account</div>
        </a>

        <a class="sidebar-option" id="discord">
          <i class="fa-brands fa-discord"></i>
          <div>Discord</div>
        </a>

        <a class="sidebar-option" id="website">
          <i class="fa-brands fa-chrome"></i>
          <div>Website</div>
        </a>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "App-Sidebar",
  data () {
    return {
      config: window.storage.get(),
      lang: window.lang
    }
  },
  props: {
    username: String,
    user_pfp: String
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