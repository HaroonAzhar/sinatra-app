(function(){
  console.log('document loaded')
})()

function userlogin(){
    $('#loginForm').on('submit', function(e){
        console.log('submitted')
        e.preventDefault();
        $.ajax({
            url: '/app/views/users/create', //this is the submit URL
            type: 'POST', //or POST
            data: $('#loginForm').serialize(),
            success: function(data){
                 alert('successfully submitted')
            }
        });
    });
};