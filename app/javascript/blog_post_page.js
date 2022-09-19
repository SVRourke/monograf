// imageButton.addEventListener("click", (e) => {
    //     console.log("imag button clicked")
    // })

class PostBuilder {
    constructor() {
        this.container = document.getElementById("#content_container");
        this.paragraphButton = document.getElementById('add_paragraph');
        this.imageButton = document.getElementById('add_image');
  
        paragraphButton.addEventListener("click", (e) => {
            e.stopImmediatePropagation()
            console.log("paragraph button clicked")
        })
    }
    
    init_builder() {
        // init 
        // 
    }
    
    
}

document.addEventListener("DOMContentLoaded", () => {
    let builder = PostBuilder.new


})