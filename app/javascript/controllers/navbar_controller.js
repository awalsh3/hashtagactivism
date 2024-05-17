document.addEventListener("turbo:load", function() {
  const menuButton = document.getElementById('menu-button');
  const closeButton = document.getElementById('close-button');
  const mobileMenu = document.getElementById('mobile-menu');

  menuButton.addEventListener('click', function() {
    mobileMenu.style.display = 'block';
  });

  closeButton.addEventListener('click', function() {
    mobileMenu.style.display = 'none';
  });
});
