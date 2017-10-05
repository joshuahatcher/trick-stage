import tricks from 'bag-of-tricks';

function init() {
  document.getElementById('common-header').innerHTML = tricks.header;
  document.getElementById('common-footer').innerHTML = tricks.footer;
}

init();
