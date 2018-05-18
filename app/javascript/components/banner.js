import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Learn to create", "Learn to be awesome"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
