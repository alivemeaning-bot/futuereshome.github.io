const images = [
    "image\firstwM.jpg"
];

let index = 0;

function changeBackground() {
    document.body.style.backgroundImage = `url(${images[index]})`;
    index = (index + 1) % images.length;
}

// 初始显示第一张
changeBackground();

// 每 5 秒切换
setInterval(changeBackground, 5000);