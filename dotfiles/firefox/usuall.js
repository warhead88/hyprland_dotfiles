function toggleSidebar() {
  const sidebar = document.getElementById('sidebar');
  sidebar.classList.toggle('show');
}

document.addEventListener('keydown', function (e) {
  if (e.code === 'Digit1') {
    window.open('https://youtube.com');
  }
  if (e.code === 'Digit2') {
    window.open('https://github.com');
  }
  if (e.code === 'Space') {
    window.open('https://google.com');
  }
  if (e.code === 'Digit3') {
    window.open('https://www.meteoblue.com/en/weather/week/yekaterinburg_russia_1486209');
  }
  if (e.code === 'Digit4') {
    window.open('https://www.google.com/maps/?entry=wc');
  }
  if (e.code === 'Digit5') {
    window.open('https://chatgpt.com/');
  }
});
