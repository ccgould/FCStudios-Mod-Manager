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

export default {
  name: "page-gameview",
  data: function () {
    return {
      app,
      lang: window.lang,
      functions: window.functions,
    }
  },
  props: {
    visible: Number
  }
}
</script>