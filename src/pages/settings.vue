<template>
  <Transition>
    <div v-if="visible">
      <div class="container">
        <div class="settings-option">
          <combobox value="Language" :list="['hi', 'hi']"></combobox>
        </div>
      </div>
    </div>
  </Transition>
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
  props: {
    visible: Number
  }
}
</script>