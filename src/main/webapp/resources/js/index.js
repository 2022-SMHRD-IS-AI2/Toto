const swiper = new Swiper('.swiper', {
    // If we need pagination
    autoplay: {
        delay: 3000,
      },
    pagination: {
      el: '.swiper-pagination',
    },  
    // Navigation arrows
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },

  });

  
  



const i = document.querySelector(".fa-solid");
const i1 = document.querySelector(".fa-chevron-down");
const menu = document.querySelector(".ul");


function i_mouseover(){
  menu.style.display = 'block';
  i1.classList.remove("fa-chevron-down","fa-2xs");
  i1.classList.add("fa-chevron-up","fa-2xs");

}
function i_mouseover(){
  menu.style.display = 'block';
  i1.classList.remove("fa-chevron-down","fa-2xs");
  i1.classList.add("fa-chevron-up","fa-2xs");

}
function i_mouseout(){
  menu.style.display = 'none';
  i1.classList.remove("fa-chevron-up","fa-2xs");
  i1.classList.add("fa-chevron-down","fa-2xs");

}

















        