import { reactive } from 'vue'

export const app = reactive({
    config: window.storage.get(),
    page: 'mods',
    page_id: 'mods',
    last_page: '',
})