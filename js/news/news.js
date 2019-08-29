window.$ = window.jQuery = jQuery;
$(document).ready(function () {
    new Vue({
        el: '#news',
        data() {
            return {
                newsList: [],
                news: {},
                id: 0,
                modal: null
            }

        },
        created: function () {
            //Call function getCategoryList
            this.getNewsList();
        },

        methods: {
            // Get Category List
            getNewsList: function () {
                axios.defaults.withCredentials = false;
                axios.get(sglabUrl.news)
                    .then(response => {
                        this.newsList = response.data;
                    })
            },
            //Clear data
            reset() {
                this.news = {
                    nws_title: null,
                    nws_content:null,
                    nws_image:null,
                }
            },

            //Show modal
            addCategory: function () {
                this.modal = 'add';
                this.reset();
                $('#modal-title').html('Add New News');
                $('#news-modal').modal('show');
            },

            //Send request to server and insert into database
            addNew() {
                this.news = {
                    nws_title: this.news.nws_title,
                    nws_content:this.news.nws_content,
                    nws_image:this.news.nws_image,
                }
                $('#news-modal').modal('hide');
                axios.post(sglabUrl.news, this.news)
                    .then(response => {
                        alert('Add Successfully')
                        this.newsList = [...this.newsList, response.data]
                    })
            },
            //Show modal and fill data
            editNews(news) {
                this.modal = 'edit';
                this.news = news;
                $('#modal-title').html('Edit News');
                $('#news-modal').modal('show');
            },

            //Update new data by API
            updateNews(news) {
                this.id = news.nws_id;
                $('#news-modal').modal('hide');
                axios.put(sglabUrl.news + this.id, this.news)
                    .then((response) => {
                        alert('Updated successfully');
                        window.location.href = 'news.html'
                    })
            },

            //Show Delete Modal
            deleteCategory(news) {
                this.modal = 'delete';
                this.news = news;
                $('#modal-title').html('Delete News');
                $('#news-modal').modal('show');
            },

            //Send request to db
            removeCategory(news) {
                this.id = news.nws_id;
                $('#news-modal').modal('hide');
                axios.delete(sglabUrl.news + this.id)
                    .then((response) => {
                        alert('Deleted successfully');
                        window.location.href = 'news.html'
                    })
            }
        },
    })
})