function showHidePage(activeID){
    let gaming = document.getElementById('gaming');

    if(activeID==='gaming'||activeID==='home'){
        gaming.style.display='block';
    }else{
        gaming.style.display='none';
    }
}
let link=document.querySelectorAll('#mainNav .nav-link');
link.forEach(item=>{
    item.addEventListener('click',function(){
        link.forEach(i=>i.classList.remove('active'));
        this.classList.add('active');
    })
})