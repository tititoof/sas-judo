<template>
  <ClientOnly>
    <tiptap-vuetify
      v-model="inputText"
      :extensions="extensions"
      :toolbar-attributes="{ color: 'blue  lighten-3' }"
      @keyup.native="refresh"
      @init="onInit"
    />

    <template #placeholder>
      Loading...
    </template>
  </ClientOnly>
</template>

<script>
import { Vue, Component, PropSync } from 'vue-property-decorator'
// import the component and the necessary extensions
import {
  TiptapVuetify,
  Heading,
  Bold,
  Italic,
  Strike,
  Underline,
  Code,
  Paragraph,
  BulletList,
  OrderedList,
  ListItem,
  Link,
  Blockquote,
  HardBreak,
  HorizontalRule,
  History
} from 'tiptap-vuetify'

@Component({
  components: {
    TiptapVuetify
  }
})
export default class Editor extends Vue {
  @PropSync('content', { type: String }) syncedContent

  inputText = ''

  extensions = [
    History,
    Blockquote,
    Link,
    Underline,
    Strike,
    Italic,
    ListItem,
    BulletList,
    OrderedList,
    [
      Heading,
      {
        options: {
          levels: [1, 2, 3]
        }
      }
    ],
    Bold,
    Link,
    Code,
    HorizontalRule,
    Paragraph,
    HardBreak
  ]

  onInit () {
    this.inputText = this.content
  }

  refresh () {
    this.$emit('update', this.inputText)
  }

  mounted () {
    this.inputText = this.content
  }
}
</script>
