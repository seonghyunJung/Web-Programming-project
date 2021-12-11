$(function() {
    
    var count = $('#rank-list li').length;
    var height = $('#rank-list li').height();
    var reset = 0;
    function step(index) {
        $('#rank-list ol').delay(2000).animate({
            top: -height * index,
        }, 500, function() {
            console.log('2');
            
                step((index + 1) % count);
        });
    }
    console.log(rows[0]);
    step(1);
    
    $('#rank-list ').on("click",function(){
        if(reset==0){
        $('#rank-list').css('height','200px');
        
        $('#rank-list ol').css('top','0');
        reset=1;
        }
        else{
            reset=0;
                console.log('3');
                
               
                $('#rank-list').css('height','20px');
                
              
        };
    });
    
    

   
});

