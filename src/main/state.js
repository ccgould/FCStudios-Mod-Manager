import { reactive } from 'vue'

export const app = reactive({
    config: window.storage.get(),
    page: 'news',
    page_id: 'main.news',
    last_page: '',
    game_id: ''
})