// 1. Selección del elemento del DOM donde vamos a escribir
const tabla = document.getElementById('tabla-contenido');

// 2. Uso de Fetch para cargar el archivo JSON
fetch('hardware.json')
    .then(response => {
        if (!response.ok) {
            throw new Error("No se pudo cargar el archivo JSON");
        }
        return response.json(); // Convertimos la respuesta a un objeto JS
    })
    .then(datos => {
        // 3. Recorremos los datos y creamos las filas
        datos.forEach(dispositivo => {
            const fila = document.createElement('tr');
            
            fila.innerHTML = `
                <td>${dispositivo.id}</td>
                <td>${dispositivo.tipo}</td>
                <td>${dispositivo.marca}</td>
                <td>${dispositivo.modelo}</td>
                <td>${dispositivo.precio} €</td>
            `;
            
            tabla.appendChild(fila);
        });
    })
    .catch(error => {
        console.error("Error detectado:", error);
        tabla.innerHTML = `<tr><td colspan="5" style="color:red">Error al cargar datos.</td></tr>`;
    });