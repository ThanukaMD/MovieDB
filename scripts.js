$(document).ready(function() {
    $.getJSON("api/movies.php", function(data) {
        if (data.error) {
            alert(data.error);
        } else {
            let moviesTable = $("#movies tbody");
            data.forEach(function(movie) {
                moviesTable.append(`<tr>
                    <td>${movie.title}</td>
                    <td>${movie.director}</td>
                    <td>${movie.year}</td>
                    <td>${movie.genre}</td>
                    <td>${movie.rating}</td>
                </tr>`);
            });
        }
    });
});
