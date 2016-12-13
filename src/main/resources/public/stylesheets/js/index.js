$('.form').find('input, textarea').on('keyup blur focus', function (e) {

    var $this = $(this),
        label = $this.prev('label');

    if (e.type === 'keyup') {
        if ($this.val() === '') {
            label.removeClass('active highlight');
        } else {
            label.addClass('active highlight');
        }
    } else if (e.type === 'blur') {
        if ($this.val() === '') {
            label.removeClass('active highlight');
        } else {
            label.removeClass('highlight');
        }
    } else if (e.type === 'focus') {

        if ($this.val() === '') {
            label.removeClass('highlight');
        } else if ($this.val() !== '') {
            label.addClass('highlight');
        }
    }

});

$('.tab a').on('click', function (e) {

    e.preventDefault();

    $(this).parent().addClass('active');
    $(this).parent().siblings().removeClass('active');

    target = $(this).attr('href');

    $('.tab-content > div').not(target).hide();

    $(target).fadeIn(600);

});

function signup() {
    let firstname = $("#firstname").val(),
        lastname = $("#lastname").val(),
        email = $("#email").val(),
        name = $("#password").val();
    let data = {
        email: email,
        name: name,
        password: password1,
        status: status
    };
    $.ajax({
        type: "POST",
        url: "/json",
        data: data,
        success: function (data) {
            
        },
        error: function (jqXHR, textStatus, errorThrown) {
            // throw error
        },
        dataType: "json"
    });

}