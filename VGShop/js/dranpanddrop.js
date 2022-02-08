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

    swal('¿Sabias que?',
        'Cuando Dom encuentra a su esposa Maria en un estado completamente deplorable, al punto de que él se encarga de sacarla de su miseria al acabar con su vida. Dicho momento tomó inspiración del caso de Terri Schiavo, mujer en estado vegetativo que murió luego de que su esposo consiguiera que ella fuera desconectada para que su vida dejara de ser alargada artificialmente.');

}
function descripcion2(e) {
    var elementoArrastrado = e.dataTransfer.getData("Data");
    e.target.appendChild(document.getElementById(elementoArrastrado));
    e.target.style.border = "";

    swal('¿Sabias que?',
        'La Pokédex es una enciclopedia electrónica portátil que sirve para registrar automáticamente las fichas de todas las diversas especies Pokémon vistas y capturadas durante el viaje como entrenadores.');

}

function descripcion3(e) {
    var elementoArrastrado = e.dataTransfer.getData("Data");
    e.target.appendChild(document.getElementById(elementoArrastrado));
    e.target.style.border = "";

    swal('¿Sabias que?',
        'Es el héroe de Marvel con más películas. Si contamos las tres películas de los años 70 de Spider - man(Spider - man en acción, Spider - man contraataca y Spider - man: La venganza del Dragon), la trilogía de Raimi, las dos películas de Amazing Spider - man y Spider - man Homecoming, estamos ante el héroe de Marvel que más veces ha protagonizado una cinta de superhéroes.');



}

function descripcion4(e) {
    var elementoArrastrado = e.dataTransfer.getData("Data");
    e.target.appendChild(document.getElementById(elementoArrastrado));
    e.target.style.border = "";

    swal('¿Sabias que?',
        'El nombre de Epona, el caballo de Link, proviene de la diosa celta de los caballos llamada precisamente Epona');;


}





