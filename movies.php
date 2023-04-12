<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>All Movies</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <h1>All Movies</h1>
    <button id="load-movies">Load Movies</button>
    <table id="movies-table" style="display: none;">
        <thead>
            <tr>
                <th>Title</th>
                <th>Director</th>
                <th>Year</th>
                <th>Genre</th>
                <th>Rating</th>
            </tr>
        </thead>
        <tbody id="movies-body">
        </tbody>
    </table>
    <a href="index.php">Go back</a>
    <script>
        $(document).ready(function() {
            $("#load-movies").on("click", function() {
                $.getJSON("api.php", function(data) {
                    $("#movies-table").show();
                    $("#movies-body").empty();

                    $.each(data, function(index, movie) {
                        $("#movies-body").append(
                            "<tr><td>" + movie.title + "</td><td>" + movie.director + "</td><td>" + movie.year + "</td><td>" + movie.genre + "</td><td>" + movie.rating + "</td></tr>"
                        );
                    });
                });
            });
        });
    </script>
</body>
</html>
