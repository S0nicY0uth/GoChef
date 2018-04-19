// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// var Carousel = function(id){
//     console.log(this);
//     console.log(document);
//     var self = this;
//     this.el = document.getElementById(id);
//     console.log(this.el);
//     this.imgs = this.el.querySelectorAll('img');
//     console.log(this.imgs);
//     this.currentImage = 0;  
//     this.imgs[this.currentImage].classList.add('show');  
//     //this.el.addEventListener('click', function(){ self.advanceImg() });
//     window.setInterval(function(){ self.advanceImg() }, 1000);
//   }
//   Carousel.prototype.advanceImg = function(){
//     this.currentImage++;
//     if(this.currentImage === this.imgs.length){
//       this.currentImage = 0;
//     }
//     for(var i=0; i< this.imgs.length; i++){
//       if(this.currentImage === i){
//         this.imgs[i].classList.add('show');
//       }else{
//         this.imgs[i].classList.remove('show');
//       }
//     }
//   }

//   document.onload myCarousel = new Carousel("carousel");

  // Carousel.prototype.previousImg = function(){  
  //   if(this.currentImage === 0){
  //     this.currentImage = this.imgs.length;    
  //   }
  //   this.currentImage--;
  //   for(var i=0; i< this.imgs.length; i++){
  //     if(this.currentImage === i){
  //       this.imgs[i].classList.add('show');
  //     }else{
  //       this.imgs[i].classList.remove('show');
  //     }
  //   }
  // }

  
 

// class Carousel {
//   constructor(selector){
//     // Set up our options
//     //var default_options = {delay: 3000, autoadvance: true, buttons: false};
//    // this.options = Object.assign(default_options, user_options);
    
//     this.el = document.querySelector(selector);
//     this.el.classList.add('carousel');
//     this.imgs = document.querySelectorAll('img');
//     this.currentImg = 0;
//     this.showImg();
//     window.setInterval(function(){ self.advanceImg() }, 1000);
    
//     // if(this.options.buttons){
//     //   this.setupButtons();
//     // }else{
//     //   this.el.addEventListener('click', this.advance.bind(this));
//     // }
//     // if(this.options.autoadvance){
//     //   this.setupTimer(this.options.delay);
//     // }
//   }
// }
  // var Carousel = function(id){
  //   var self = this;
  //   this.el = document.getElementById(id);
  //   this.imgs = this.el.querySelectorAll('img');
  //   this.currentImage = 0;  
  //   this.imgs[this.currentImage].classList.add('show');  
  //   this.el.addEventListener('click', function(){ self.advanceImg() });
  //   window.setInterval(function(){ self.advanceImg() }, 5000);

  //   var next_button = document.getElementById("next_button");
  //   next_button.addEventListener('click', function(){self.advanceImg() });
  //   var prev_button = document.getElementById("prev_button");
  //   prev_button.addEventListener('click', function(){self.previousImg()});
  // }
