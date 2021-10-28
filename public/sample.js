new Vue({
    el: '#app',
    data: {
        comment: true,
        modal: false
    },

    methods: {
        comments: function () {
            this.comment = false
            this.modal = true
        },
    }
})

