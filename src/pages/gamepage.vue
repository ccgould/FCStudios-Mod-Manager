<template>
    <div>
        Hi
    </div>
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
  // props: {
  //   visible: Number
  // }
}
</script>