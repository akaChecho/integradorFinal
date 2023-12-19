function formatDateForInput(timestamp) {
        var date = new Date(timestamp);
        var year = date.getFullYear();
        var month = ('0' + (date.getMonth() + 1)).slice(-2);
        var day = ('0' + date.getDate()).slice(-2);
        var hours = ('0' + date.getHours()).slice(-2);
        var minutes = ('0' + date.getMinutes()).slice(-2);
        
        var formattedDate = year + '-' + month + '-' + day + 'T' + hours + ':' + minutes;
        return formattedDate;
        
         // Llamada a la función para establecer el valor inicial del campo de fecha
    var fechaExtravioTimestamp = '<%= mascota.getFecha_extravio().getTime() %>';
    document.getElementById('fecha_extravio').value = formatDateForInput(fechaExtravioTimestamp);
    }