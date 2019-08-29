var sglabData = new Vue({
    el: '#sglabdetail',
  
    data: {
      detail: {},
    },
  
    created: function () {
        var parsedUrl = new URL(window.location.href);
        var id = parsedUrl.searchParams.get("id"); // 123
        this.getProduct(id);
    },
  
    methods: {
  
  
      getProduct: function (id) {
           
            axios.defaults.withCredentials = false;
            axios.get(  sglabUrl.products + id, 
                        {headers: { 'Access-Control-Allow-Origin' : false} },
                        {withCredentials: false})
                        .then(response => {
                         this.detail = response.data;
                         //console.log(list);
                         
                      })

      },
    }
})
;
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  