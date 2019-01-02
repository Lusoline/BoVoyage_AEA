$.ajax({
    type: 'GET',
    url: 'http://localhost:49964/api/Zone',                //contentType: 'application/json',
    dataType: "json",                //contentType: "application/x-www-form-urlencoded; charset=UTF-8",
    success: function (data) {
        if (data.length !== 0) {
            $(data).each(function () {
                $('#cont1').append('<option id="' + this.ContinentID + '">' + this.LibelleContinent + '</option>');
            });
        }
    },
    error: function (xhr, status, error) {
        $("#message").empty();
        $("#message").append("Erreur de communication");
    }
});

$('#cont1').change(function (data) {
    var pay = '#pay1';
    $(pay).empty();
    $("#message").empty();
    $(pay).append('<option id="0">Choisir un Pays</option>');
    var idCont = $("#cont1 option:selected").attr('id');
    $.ajax({
        type: 'GET',
        url: 'http://localhost:49964/api/Zone/' + idCont,                //contentType: 'application/json',
        dataType: "json",                //contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        success: function (data) {

            $(data).each(function () {
                $(pay).append('<option id="' + this.PaysID + '">' + this.LibellePays + '</option>');
            });

            $(pay).append('<option id="0">Tous les pays</option>');
        },
        error: function (xhr, status, error) {
            $("#message").empty();
            $("#message").append("Erreur de communication");
        }
    });
});

$('#pay1').change(function (data) {
    var reg = '#reg1';
    $(reg).empty();
    $("#message").empty();
    $(reg).append('<option id="0">Choisir une Région</option>');
    var idCont = $("#cont1 option:selected").attr('id');
    var idPay = $("#pay1 option:selected").attr('id');
    $.ajax({
        type: 'GET',
        url: 'http://localhost:49964/api/Zone/' + idPay + '/' + idCont,                //contentType: 'application/json',
        dataType: "json",                //contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        success: function (data) {

            $(data).each(function () {
                $(reg).append('<option id="' + this.RegionID + '">' + this.LibelleRegion + '</option>');
            });
            $(reg).append('<option id="0">Toutes les régions</option>');
        },
        error: function (xhr, status, error) {
            //  $("#message").html("Erreur de communication");
            $("#message").empty();
            $("#message").append("Erreur de communication");
        }
    });

});
$('#reg1').change(function (data) {
    var voy = '#voy1';
    $(voy).empty();
    $("#message").empty();
    $(voy).append('<option id="0">Choisir un Voyage</option>');
    var idCont = $("#cont1 option:selected").attr('id');
    var idPay = $("#pay1 option:selected").attr('id');
    var idReg = $("#reg1 option:selected").attr('id');
    $.ajax({
        type: 'GET',
        //Pay/Continent/reg
        url: 'http://localhost:49964/api/Voyage/' + idPay + '/' + idCont + '/' + idReg,                //contentType: 'application/json',
        dataType: "json",                //contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        success: function (data) {
            $(data).each(function () {
                $(voy).append('<option id="' + this.VoyageID + '"   name=' + '  >' + this.LibelleVoyage + '</option>');
            });
        },
        error: function (xhr, status, error) {
            $("#message").empty();
            $("#message").append("Erreur de communication");
        }
    });
});

$('#voy1').click(function (data) {
    var voy = '#voy1';
    var div = '#detail';
    $("#message").empty();
    var idVoy = $("#voy1 option:selected").attr('id');
    $.ajax({
        type: 'GET',
        url: 'http://localhost:49964/api/Voyage/' + idVoy,                //contentType: 'application/json',
        dataType: "json",                //contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        success: function (data) {
            var DateDepart = data.DateDepartVoyage.substr(0, 10);//DateDepart.format("dd/mm/yyyy") 
            var DateRetour = data.DateRetourVoyage.substr(0, 10);
            $(div).html('<div id="idVoy" style="display: none;">'
                + data.VoyageID + '</div >' + '<div id="textDetail">Vous avez choisi ce voyage :<br /> <br />'
                + data.LibelleVoyage + '<br /><br />'
                + data.DescriptifVoyage + '<br /> <br /></div> <div id="dateDépart"> Date départ : '
                + DateDepart + '<br /> <br /></div><div id="dateRetour"> Date de retour : '
                + DateRetour + '<br /> <br /> </div><div id="prix"> Prix TTC : '
                + data.PrixVoyage + ' € </div>'
            + );
        },
        error: function (xhr, status, error) {
            //  $("#message").html("Erreur de communication");
            $("#message").empty();
            $("#message").append("Erreur de communication");
        }
    });

});

$('')