<template>
    <div>
      <div class="settings-option">
        <combobox value="Language" :list="['hi', 'hi']"></combobox>
      </div>
    </div>
</template>

<script>
import  { app } from '@/main/state'
import combobox from '../components/SettingsCombobox'

export default {
  name: "page-settings",
  data: function () {
    return {
      app,
      lang: window.lang,
      functions: window.functions,
    }
  },
  components: {
    combobox,
  },
  // props: {
  //   visible: Number
  // }
}
</script>