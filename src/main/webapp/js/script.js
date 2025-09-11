// Función para mostrar/ocultar contenido adicional en la sección HTML
function toggleHTMLContent() {
    const details = document.getElementById('html-details');
    if (details.style.display === 'none') {
        details.style.display = 'block';
        details.style.color = '#e74c3c';
    } else {
        details.style.display = 'none';
    }
}

// Función para cambiar el estilo del texto en la sección CSS
function changeCSSStyle() {
    const example = document.getElementById('css-example');
    const colors = ['#e74c3c', '#2ecc71', '#9b59b6'];
    const randomColor = colors[Math.floor(Math.random() * colors.length)];
    example.style.color = randomColor;
    example.textContent = '¡El color ha cambiado!';
}

// Función para mostrar un mensaje en la sección JavaScript
function showJSMessage() {
    const message = document.getElementById('js-message');
    message.textContent = '¡JavaScript en acción! Esto es un ejemplo de interactividad.';
    message.style.color = '#2ecc71';
}

// Función para manejar el envío del formulario
function submitForm() {
    const name = document.getElementById('name').value;
    const email = document.getElementById('email').value;
    const level = document.getElementById('level').value;
    const comment = document.getElementById('comment').value;
    if (name && email && level && comment) {
        alert(`Gracias, ${name}! Tu correo: ${email}, nivel: ${level}, comentario: "${comment}" ha sido recibido.`);
        document.getElementById('tutorial-form').reset();
    } else {
        alert('Por favor, completa todos los campos.');
    }
}