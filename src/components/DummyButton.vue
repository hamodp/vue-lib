<template>
  <div>
      <v-card>
        <v-btn @click="increment">{{ text }}</v-btn>
      </v-card>
  </div>
</template>

<script>
export default {
  data () {
    return {
      count: 0
    }
  },
  props: {
    attr: Number
  },
  computed: {
    times () {
      return this.count > 1
        ? 'times'
        : 'time'
    },
    text () {
      return `I have been clicked ${this.count} ${this.times}`
    }
  },
  methods: {
    increment () {
      this.count += 1
      this.$emit('count', this.count)
      this.$parent.$emit('count', this.count)
      console.log(this.$parent)
    },
    test (){
      console.log('testing emit')
    }
  },
  mounted() {
    this.$on('count', this.test)
  }
}
</script>