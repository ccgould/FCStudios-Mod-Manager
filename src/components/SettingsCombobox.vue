<template>
  <select :name='value'>
    <option v-for="name in list" :value="name" :key="name">{{ name }}</option>
  </select>
</template>

<script>
import  { app } from '@/main/state'
export default {
  name: "Settings-Combobox",
  data () {
    return {
      app,
      lang: window.lang
    }
  },
  props: {
    value: String,
    list: Array,
  },
  methods: {
    debugMessage: function (location, message) {console.log(`%c[SettingsCombobox.vue] %c[${location}] %c${message}`, 'color: red', 'color: crimson', 'color: lightblue')}
  },
}
</script>