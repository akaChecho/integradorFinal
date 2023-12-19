const logoEffect = document.getElementById('logo');

logoEffect.addEventListener('mouseenter', () => {
  logoEffect.classList.add('rotate-vertical-center');
});

logoEffect.addEventListener('mouseleave', () => {
  logoEffect.classList.remove('rotate-vertical-center');
});