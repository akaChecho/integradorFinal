function calcularDiasTranscurridos(fechaComparar) {
    // Obtener la fecha actual
    const fechaActual = new Date();

    // Obtener la fecha de extravío del elemento con el ID 'fechaExtravio001'
    const partesFechaComparar = fechaComparar.split('/');
    const diaComparar = parseInt(partesFechaComparar[0], 10);
    const mesComparar = parseInt(partesFechaComparar[1], 10) - 1; // Meses van de 0 a 11
    const anioComparar = parseInt(partesFechaComparar[2], 10);

    // Crear objetos Date para la fecha actual y la fecha de extravío
    const fechaFormateada = new Date(anioComparar, mesComparar, diaComparar);

    // Calcular la diferencia en milisegundos entre las dos fechas
    const diferenciaEnMilisegundos = fechaActual - fechaFormateada;

    // Calcular el número de días transcurridos
    const milisegundosEnUnDia = 1000 * 60 * 60 * 24; // 1 segundo * 60 segundos * 60 minutos * 24 horas
    const diasTranscurridos = Math.round(diferenciaEnMilisegundos / milisegundosEnUnDia);

    if (diasTranscurridos <= 1) {
        return "Hoy";
    } else {
        return `Hace ${diasTranscurridos} días${diasTranscurridos > 1 ? '' : 's'}`;
    }
}

function procesarFechaComparar(elementoId, resultadoId) {
    // Obtener la fecha de comparación del elemento con la ID proporcionada
    const fechaComparar = document.getElementById(elementoId).textContent;

    // Calcular los días transcurridos usando la función calcularDiasTranscurridos()
    const resultado = calcularDiasTranscurridos(fechaComparar);

    // Mostrar el resultado en el elemento con la ID proporcionada
    document.getElementById(resultadoId).textContent = resultado;
}

// Llamar a la función para procesar la primera fecha
procesarFechaComparar('fechaExtravio001', 'cantidadDias001');
procesarFechaComparar('fechaExtravio002', 'cantidadDias002');
procesarFechaComparar('fechaExtravio003', 'cantidadDias003');
procesarFechaComparar('fechaExtravio004', 'cantidadDias004');
procesarFechaComparar('fechaExtravio005', 'cantidadDias005');
procesarFechaComparar('fechaExtravio006', 'cantidadDias006');
