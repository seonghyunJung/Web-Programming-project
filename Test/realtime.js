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


(function() { // A   
    const itemWrapperEl = document.querySelector('.row'),  
          leftBtnEl = document.getElementById('left-btn'),  
          rightBtnEl = document.getElementById('right-btn');  

    function moveSlides(direction) { // B
      const item = itemWrapperEl.querySelector('.card-view'),  
            itemMargin = parseFloat(getComputedStyle(item).marginRight);
            itemWidth = itemMargin + item.offsetWidth + 2; 

      let itemCount = Math.round(itemWrapperEl.scrollLeft / itemWidth); 

      if (direction === 'left') {
        itemCount = itemCount - 1;
      } else {
        itemCount = itemCount + 1;
      }
      itemWrapperEl.scrollLeft = itemWidth * itemCount; 
    }

    leftBtnEl.addEventListener("click", e => moveSlides("left")); // C
    rightBtnEl.addEventListener("click", e => moveSlides("right"));
  });
