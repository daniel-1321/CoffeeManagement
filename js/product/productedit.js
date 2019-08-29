var sglabData = new Vue({
    el: '#sglabdetail',
  
    data: {
      detail: {},
      id : 0,
    },
  
    created: function () {
        var parsedUrl = new URL(window.location.href);
        this.id = parsedUrl.searchParams.get("pro_id"); // 123
        this.getProduct(this.id);
    },
  
    methods: {
        saveData: function() {
            axios.put( sglabUrl.product + this.id, this.detail,
            {'headers':{'Content-Type': 'application/json'}},
            {withCredentials: false}
            )
            .then((response) => {   console.log(response.data);
                                    alert('Đã lưu sản phẩm');
                                    window.location.href = 'productlist.html'
                                })
                                
                
            },

  
        getProduct: function (id) {
            axios.defaults.withCredentials = false;
            axios.get(  sglabUrl.product + id, 
                        {headers: { 'Access-Control-Allow-Origin' : false} },
                        {withCredentials: false})
                        .then(response => {
                         this.detail = response.data;
                         console.log(this.detail);
                         
                      })

      },
    }
})
;
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  