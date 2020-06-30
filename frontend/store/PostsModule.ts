import { Module, VuexModule, Mutation, Action } from 'vuex-module-decorators'
import { IPost } from '~/types/main.ts'
import { $axios } from '~/utils/api'

@Module({
  name: 'PostsModule',
  stateFactory: true,
  namespaced: true
})
export default class PostsModule extends VuexModule {
  posts: Array<IPost> = []

  @Mutation
  setPosts(posts: Array<IPost>) {
    this.posts = posts
  }

  get getPosts() {
    return this.posts
  }

  @Action({ commit: 'setPosts', rawError: true })
  async loadPosts() {
    const posts = await $axios.$get('/api/posts')
    return posts
  }
}
