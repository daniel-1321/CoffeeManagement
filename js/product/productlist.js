window.$ = window.jQuery = jQuery;
$(document).ready(function () {
  new Vue({
    el: '#sglablist',

    data: {
      categoryList: [],
      list: [],
      i: {
        pro_id: null,
        pro_name: null,
        pro_price_s: null,
        pro_price_m: null,
        pro_price_l: null,
        pro_description: null,
        pro_image: null,
        cat_id: null,
      },
      modal: null
    },
    created: function () {
      this.getProductList();
      this.getCategoryList();
    },
    methods: {
      getProductList: function () {
        axios.defaults.withCredentials = false;
        axios.get(sglabUrl.product)
          .then(response => {
            this.list = response.data;
          })
      },

      getCategoryList: function () {
        axios.defaults.withCredentials = false;
        axios.get(sglabUrl.category)
          .then(response => {
            this.categoryList = response.data;
          })
      },
      reset() {
        this.i = {
          pro_id: null,
          pro_name: null,
          pro_price_s: null,
          pro_price_m: null,
          pro_price_l: null,
          pro_description: null,
          pro_image: null,
          cat_id: null,
        }
      },
      addNew() {
        this.reset();

        this.modal = 'new';
        $('#editLabel').html('Add New Product');
        $('#product').modal('show');
      },
      editProduct(i) {
        this.modal = 'edit';
        this.i = i;
        console.log(this.i.pro_id)
        $('#editLabel').html('Edit Modal');
        $('#product').modal('show');
      }
    },
    computed: {

    },
  });




})