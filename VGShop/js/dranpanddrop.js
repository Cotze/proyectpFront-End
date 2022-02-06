var contador = 0;//poner un id a cada elmento clonado
var elemArrastrableId = "";


//TRABAJA CON EL EVENTO ondragstart
function start(e) {//funciones de los cuadraditos
    e.dataTransfer.effectAllowed = "move"; //define el efecto mover
    //guarda en memoria el elemento a mover
    e.dataTransfer.setData("Data", e.target.id);
    // se recibe en setData el cuadrado pasando por medio de target.id
    e.target.style.opacity = "0.4"; // a este elemento cuadradito se le asigna un estilo de opacidad antes de que sea soltado
    elemArrastrableId = e.target.id;// se pasa el objeto cuadradito a la variable elemArrastrableId
}

//TRABAJA CON EL EVENTO ondragend
function end(e) {//funciones de los cuadraditos
    e.target.style.opacity = "";// cuando se suelta un cuadradito, se desactiva el estilo oaco para que sea como originalmente en el primer cuadro
    e.dataTransfer.clearData("Data");// Se vacia el elemento guardado en la memoria
    elemArrastrableId = "";// se establecce la variable elemArrastableId

}

//TRABAJA CON EL EVENTO ondragenter
function enter(e) //funciones de inicio de los contenedores cuadro
{
    e.target.style.border = "12px dotted #555"; // remarca su contorno
}

//rgb red green blue
// #F2F2 #C5C5C5

//TRABAJ CON EL EVENTO ondragleave
function leave(e) {
    e.target.style.border = "";
    // desbarca el contorno
}
//ondragover
function over(e) {
    //el elemnto sobre el que nos arrastramos 
    var id = e.target.id;
    //return false para que pueda soltar el elemento 
    if ((id == "cuadro1") || (id == "img2") || (id == "img3") || (id == "img4") || (id == "img1")) {
        return false;
    }
    else {
        return true;
    }
}

function drop(e) {
    var elementoArrastrado = e.dataTransfer.getData("Data");
    e.target.appendChild(document.getElementById(elementoArrastrado));
    e.target.style.border = "";


}
function descripcion1(e) {
    var elementoArrastrado = e.dataTransfer.getData("Data");
    e.target.appendChild(document.getElementById(elementoArrastrado));
    e.target.style.border = "";
    
        swal("Un cerdo, un ratón, un puerco espín, un gorila, un elefante y otros animales se reúnen en un teatro koala para una competencia de canto.");
    
    

}
function descripcion2(e) {
    var elementoArrastrado = e.dataTransfer.getData("Data");
    e.target.appendChild(document.getElementById(elementoArrastrado));
    e.target.style.border = "";
    
        swal("Una peligrosa conspiración, relacionada con su pasado, persigue a Natasha Romanoff, también conocida como Viuda Negra.");
    
   
}

function descripcion3(e) {
    var elementoArrastrado = e.dataTransfer.getData("Data");
    e.target.appendChild(document.getElementById(elementoArrastrado));
    e.target.style.border = "";
    
        swal("En el futuro, las prisiones funcionan con un sistema de celdas verticales. Los presos de las celdas superiores son alimentados mientras los de abajo mueren de hambre.");
    


}

function descripcion4(e) {
    var elementoArrastrado = e.dataTransfer.getData("Data");
    e.target.appendChild(document.getElementById(elementoArrastrado));
    e.target.style.border = "";
  
        swal("Grindewald ha logrado escapar y pretende encabezar una revuelta de los magos purasangre para dominar el mundo. Dumbledore, acompañado por su antiguo estudiante Scamander, tratará de evitar que quien fuera su gran amigo cumpla su siniestro propósito");
    
   
}





