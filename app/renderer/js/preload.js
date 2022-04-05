filedir = __filename.split("/")
console.log("Loaded " + filedir[filedir.length - 1])

// On page load
document.addEventListener("DOMContentLoaded", function(event){
    let pages = {
        'mods': document.getElementById('mods-page')
    }
    pages.mods.style.display = 'block'
});