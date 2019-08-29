window.$ = window.jQuery = jQuery;
$(document).ready(function () {
    new Vue({
        el: '#category',
        data() {
            return {
                categoryList: [],
                category: {},
                editCat:{
                    cat_name:''
                },
                id: 0,
                modal: null
            }

        },
        created: function () {
            //Call function getCategoryList
            this.getCategoryList();
        },

        methods: {
            // Get Category List
            getCategoryList: function () {
                axios.defaults.withCredentials = false;
                axios.get(sglabUrl.category)
                    .then(response => {
                        this.categoryList = response.data;
                    })
            },
            //Clear data
            reset() {
                this.category = {
                    cat_name: null
                }
            },

            //Show modal
            addCategory: function () {
                this.modal = 'add';
                this.reset();
                $('#modal-title').html('Add New Category');
                $('#category-modal').modal('show');
            },

            //Send request to server and insert into database
            addNew() {
                this.category = {
                    cat_name: this.category.cat_name
                }
                if (this.category.cat_name.trim() == '') {
                    alert('Empty');
                    return;
                } else {
                    $('#category-modal').modal('hide');
                    axios.post(sglabUrl.category, this.category)
                        .then(response => {
                            alert('Add Successfully')
                            this.categoryList = [...this.categoryList, response.data]
                        })
                }
            },
            //Show modal and fill data
            editCategory(category) {
                this.modal = 'edit';
                this.editCat.cat_name = category.cat_name;
                this.editCat.cat_id = category.cat_id
                console.log('Category ID: ' + this.editCat.cat_id);
                $('#modal-title').html('Edit Category');
                $('#category-modal').modal('show');
            },

            //Update new data by API
            updateCategory(category) {
                this.id =  this.editCat.cat_id;
                console.log(this.id)
                $('#category-modal').modal('hide');
                axios.put(sglabUrl.category + this.id, this.editCat)
                    .then((response) => {
                        alert('Updated successfully');
                        window.location.href = 'category.html'
                    })
            },

            //Show Delete Modal
            deleteCategory(category) {
                this.modal = 'delete';
                this.category = category;
                $('#modal-title').html('Delete Category');
                $('#category-modal').modal('show');
            },

            //Send request to db
            removeCategory(category) {
                this.id = category.cat_id;
                $('#category-modal').modal('hide');
                axios.delete(sglabUrl.category + this.id)
                    .then((response) => {
                        alert('Deleted successfully');
                        window.location.href = 'category.html'
                    })
            }
        },
    })
})