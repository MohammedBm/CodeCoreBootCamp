const doggos = document.querySelectorAll('.doggo.fighter')

let aDoggoIsSelected = false
let selectedDoggo = null
const teamNames = document.querySelectorAll('.team .title')
teamNames.forEach(team => {
  team.addEventListener('click', event => {
    if (aDoggoIsSelected) {
      event.currentTarget.nextElementSibling.append(selectedDoggo)
      selectedDoggo.classList.remove("selected");
      aDoggoIsSelected = false;
    }
  })
});
// Add Seleced class to a doggo
doggos.forEach(doggo => {
  doggo.addEventListener('click', event => {
    let clickedDoggo = event.currentTarget

    if (aDoggoIsSelected && (selectedDoggo !== clickedDoggo)) {
      return alert('A dog has already been selected')
    }

    if (selectedDoggo === clickedDoggo) {
      selectedDoggo = null
      aDoggoIsSelected = false
      clickedDoggo.classList.remove('selected')
    } else {
      selectedDoggo = clickedDoggo
      aDoggoIsSelected = true
      selectedDoggo.classList.add('selected')
    }
  })
})




//adding to team
const preview = document.querySelector('.doggo.blank')
const nameInput = document.querySelector("#applicant-preview h1")
//

document.querySelector('input[name="name"]').addEventListener('keyup', function(event) {
  nameInput.textContent = this.value
})

document.querySelector('input[name="picture-url"]').addEventListener('keyup', function(event) {
  preview.style.backgroundImage = `url(${this.value})`;
})

document.querySelector('input[name = "team-name"]').addEventListener('keyup', function(event) {
  let team = this.value.toLowerCase()
  if (team == "salmon") {
    preview.style.border = "5px solid salmon"
  } else if (team == "aquamarine") {
    preview.style.border = "5px solid aquamarine"
  } else if (team == "khaki") {
    preview.style.border = "5px solid khaki"
  } else {
    preview.style.border = ""
  }

})


let form = document.getElementById('application-form')
form.addEventListener('submit',event=>{
  event.preventDefault();

  const team = document.querySelector('input[name="team-name"]').value.toLowerCase()
  newDoggo = preview.cloneNode(true)
  newDoggo.style.border = ""
  document.querySelector(`.${team} .roster`).prepend(newDoggo)
})
