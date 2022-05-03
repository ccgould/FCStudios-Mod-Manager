<template>
  <div class="sidebar">
    <div class="profile">
      <img :src="user_pfp" alt="Profile Picture">
      <div class="profile-username"> {{ username }} </div>
    </div>
    <div class="sidebar-content">
      <div class="sidebar-2section">Launcher
        <a class="sidebar-option" id="mods">
          <i class="fa-solid fa-circle-play"></i>
          <div>Mods</div>
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
  props: {
    username: String,
    user_pfp: String
  }
}
</script>