$('a div.media').click(function () {
    var id = $(this).attr('id');
    $(".button").show();
    $('#viewSuggestionModal .media-body').html("");
    $(".form-comment").hide();
    $('#viewSuggestionModal .media-body').append($('#' + id).html());
    $('#viewSuggestionModal #suggestionModalLabel').html("");
    $('#viewSuggestionModal #suggestionModalLabel').append($('#' + id + ' .title').html());
    $('#viewSuggestionModal img').remove();
    $('#viewSuggestionModal .description').show();
    $('#viewSuggestionModal .title').hide();
    $('#viewSuggestionModal .date div').removeClass("text-muted smaller");
    $('#suggestionModalLabel .title').show();
    var suggestionid = $('#' + id + ' strong.id').html();
    $(".popup").attr('id', suggestionid);
    showcomment(suggestionid);
});

$(".remove").click(function () {
    var id = $(".popup").attr("id");
    $.ajax({
        url: 'RemoveSuggestionController',
        data: 'id=' + id,
        success: function (result) {
            window.location.reload();
        },
        failure: function (result) {
            alert("failure");
        }
    });
});

$(".suggestionclose").click(function () {
    var id = $(".popup").attr("id");
    $.ajax({
        url: 'CloseSuggestionController',
        data: 'id=' + id,
        success: function (result) {
            window.location.reload();
        },
        failure: function (result) {
            alert("failure");
        }
    });
});

$("a.addcomment").click(function () {
    $("#comment").val("");
    $(".button").hide();
    $(".form-comment").show();
});

$("button.cancel").click(function () {
    $(".button").show();
    $(".form-comment").hide();
});

$("button.submit").click(function () {
    var id = $(".popup").attr("id");
    var name = $("#" + id + " .name").html();
    var comment = $("#comment").val();
    if (id == undefined) {
        alert("invalid suggestion id");
    } else {
        $.ajax({
            url: 'AddCommentController',
            data: 'id=' + id + '&name=' + name + "&comment=" + comment,
            success: function (result) {
                showcomment(id);
            },
            failure: function (result) {
                alert(result);
            }
        });
    }
});

$(".view").click(function () {
    var id = $(this).parent().attr("id");
    $.ajax({
        url: 'GetSuggestionController',
        data: 'id=' + id,
        success: function (result) {
            $(".form-comment").hide();
            $("strong.title").html(result.title)
            $("strong.id").html(result.suggestionid);
            $("strong.category").html(result.category);
            $("strong.createdby").html(result.createdbyname);
            $("div.desc").html(result.description);
            $("div.description").show();
            $("strong.date").html(result.creationdate);
            $(".popup").attr('id', id);
            showcomment(id);
        },
        failure: function (result) {
            alert("failure");
        }
    });
});

function showcomment(id) {
    $(".form-comment").hide();
    $(".button").show();
    $(".commentdetails").html("");
    $.ajax({
        url: 'ShowCommentController',
        data: 'id=' + id,
        contentType: 'application/json',
        success: function (result) {
            jQuery.each(result, function (i, val) {
                $(".commentdetails").append("<div style='background-color: whitesmoke;text-align: justify;border-style: solid;border-width: 1px; padding: 10px;border-color:grey;border-radius: 5px;'>\n\
                Comment: <strong>" + val.comment + "</strong>\n\
                    \n\<br/>By: <strong>"+val.username +
                    "\n\</strong><br/>Date: <strong>" + val.creationdate + "</strong></div><br/>");
            });
        },
        failure: function (result) {
            alert(result);
        }
    });
}
