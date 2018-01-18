document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!

  const submit = (e) => {
    e.preventDefault();
    const input = document.querySelector(".favorite-input");
    const newItem = input.value;
    input.value = "";

    const newLi = document.createElement("li");
    newLi.textContent = newItem;
    document.getElementById("sf-places").appendChild(newLi);

  };

  const submitBtn = document.querySelector(".favorite-submit");
  submitBtn.addEventListener("click", submit);
  // adding new photos

  // --- your code here!
  const toggleForm = (e) => {
    const form = document.querySelector(".photo-form-container");
    if (form.className.includes("hidden")) {
      form.className = "photo-form-container";
    } else {
      form.className = "photo-form-container hidden";
    }
  }
  const toggle = document.querySelector(".photo-show-button");
  toggle.addEventListener("click", toggleForm);

  const addPhoto = (e) => {
    e.preventDefault();
    const urlInput = document.querySelector(".photo-url-input");
    const imgSRC = urlInput.value;
    urlInput.value = "";

    const newPhotoLi = document.createElement("li");
    const newPhotoImg = document.createElement("img");
    newPhotoImg.src = imgSRC;
    newPhotoLi.appendChild(newPhotoImg);
    document.querySelector(".dog-photos").appendChild(newPhotoLi);
  }

  const addPhotoBtn = document.querySelector(".photo-url-submit");
  addPhotoBtn.addEventListener("click", addPhoto);
});
