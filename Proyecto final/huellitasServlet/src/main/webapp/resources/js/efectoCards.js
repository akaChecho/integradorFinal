const cardEffect = document.querySelectorAll('.card-img-top');

cardEffect.forEach((card) => {
  card.addEventListener('mouseenter', () => {
    card.classList.add('shadow-drop-center');
  });

  card.addEventListener('mouseleave', () => {
    card.classList.remove('shadow-drop-center');
  });
});