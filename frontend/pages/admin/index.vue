<template>
  <v-container>
    <h3>Administration</h3>
  </v-container>
</template>
<script lang="ts">
import { Vue, Component, namespace, getModule } from 'nuxt-property-decorator'
import PostsModule from '~/store/PostsModule'

const postsStore = namespace('PostsModule')

@Component
export default class Default extends Vue {
  postsStore: PostsModule = getModule(PostsModule, this.$store)
  @postsStore.Action('loadPosts') loadPosts: any
  @postsStore.Getter('getPosts') getPosts: any

  mounted() {
    const _self = this
    _self.loadPosts().then(() => {
      console.log(_self.getPosts())
    })
  }
}
</script>
