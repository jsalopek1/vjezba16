<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration form</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container registration-form">
        <h2 class="text-center mb-4">User Registration</h2>
        <form method="POST">
            <div class="mb-3">
                <label for="first_name" class="form-label">First Name:*</label>
                <input type="text" class="form-control" id="first_name" name="first_name" required>
            </div>
            <div class="mb-3">
                <label for="last_name" class="form-label">Last Name:*</label>
                <input type="text" class="form-control" id="last_name" name="last_name" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Your E-mail:*</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="mb-3">
                <label for="username" class="form-label">
                    Username:* <span class="help-text">(Username must have min 5 and max 10 car)</span>
                </label>
                <input type="text" class="form-control" id="username" name="username" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">
                    Password:* <span class="help-text">(Password must have min 4 char)</span>
                </label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <div class="mb-3">
                <label for="country" class="form-label">Country</label>
                <select class="form-select" id="country" name="country" required>
                    <option value="">Select Country</option>
                    <?php
                    $MySQL = mysqli_connect("localhost", "root", "", "vjezba16") or die('Error connecting to MySQL server.');

                    $country_query = "SELECT country_code, country_name FROM country";
                    $country_result = mysqli_query($MySQL, $country_query);

                    while ($country = mysqli_fetch_assoc($country_result)) {
                        echo "<option value='" . $country['country_code'] . "'>" . $country['country_name'] . "</option>";
                    }
                    ?>
                </select>
            </div>
            <button type="submit" class="btn-primary">Submit</button>
        </form>
    </div>

    <?php
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $first_name = mysqli_real_escape_string($MySQL, $_POST['first_name']);
        $last_name = mysqli_real_escape_string($MySQL, $_POST['last_name']);
        $email = mysqli_real_escape_string($MySQL, $_POST['email']);
        $username = mysqli_real_escape_string($MySQL, $_POST['username']);
        $password = mysqli_real_escape_string($MySQL, $_POST['password']); 
        $country_code = mysqli_real_escape_string($MySQL, $_POST['country']);

        $check_query = "SELECT * FROM users WHERE email = '$email' OR username = '$username'";
        $check_result = mysqli_query($MySQL, $check_query);

        if (mysqli_num_rows($check_result) > 0) {
            echo "<div class='container alert alert-danger mt-3'>Email or Username already exists. Please try again.</div>";
        } else {
            $insert_query = "INSERT INTO users (first_name, last_name, email, username, password, country_code) 
                             VALUES ('$first_name', '$last_name', '$email', '$username', '$password', '$country_code')";

            if (mysqli_query($MySQL, $insert_query)) {
                echo "<div class='container alert alert-success mt-3'>Registration successful! Welcome, $first_name.</div>";
            } else {
                echo "<div class='container alert alert-danger mt-3'>Error: " . mysqli_error($MySQL) . "</div>";
            }
        }

        mysqli_close($MySQL);
    }
    ?>
</body>
</html>
        <!-- vježba 16 - Regitracijska forma-->
