document.addEventListener('DOMContentLoaded', function() {
    var form = document.getElementById('registrationForm');
    var successMessage = document.getElementById('successMessage');

    form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
        } else {
            var password = document.getElementById('password').value;
            var confirmPassword = document.getElementById('confirmPassword').value;
            if (password !== confirmPassword) {
                event.preventDefault();
                event.stopPropagation();
                document.getElementById('confirmPassword').classList.add('is-invalid');
            } else {
                document.getElementById('confirmPassword').classList.remove('is-invalid');
                successMessage.classList.remove('d-none');
                form.reset(); 
            }
        }
        form.classList.add('was-validated');
    }, false);
});