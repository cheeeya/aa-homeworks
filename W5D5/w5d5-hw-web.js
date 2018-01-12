const setTimeout = (cb) => { //asynchronous
  window.setTimeout(cb, 5000);
}

const callback = () => {
  alert("HAMMERTIME");
}


const hammerTime = (time) => {
  window.setTimeout(function() {
    alert(`${time} is hammertime!`);
  }, time)
}

hammerTime(5000);
