$(document).ready(function() {
    $("#porcentaje").click(function() {
        $("#demanda_project").hide();
        $("#demanda_project_pie").show();
    });

    $("#total").click(function() {
        $("#demanda_project_pie").hide();
        $("#demanda_project").show();
    });
});
