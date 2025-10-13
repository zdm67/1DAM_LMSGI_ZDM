// Función para mostrar una seccion y ocultar las otras
function mostrarSeccion(id) {
    const secciones = document.querySelectorAll('#contenido article');
    secciones.forEach(sec => {
        sec.classList.remove('seccion-activa');
        sec.classList.add('seccion-oculta');
    });
    document.getElementById(id).classList.remove('seccion-oculta');
    document.getElementById(id).classList.add('seccion-activa');
}

// Opcional: agregar click en los links del nav
document.querySelectorAll('nav ul li a').forEach(link => {
    link.addEventListener('click', e => {
        e.preventDefault();
        const id = link.getAttribute('href').substring(1);
        mostrarSeccion(id);
    });
});
