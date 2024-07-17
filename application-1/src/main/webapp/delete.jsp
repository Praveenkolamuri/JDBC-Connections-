<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Employee</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap');
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            background-image: url('https://pixewall.com/wp-content/uploads/2024/05/Nezuko-Kamado-HD-PC-Wallpapers.jpg');
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }
        .form-container {
            position: relative;
            max-width: 400px;
            background-color: transparent glass;
            border: 2px solid rgba(255, 255, 255, 0.5);
            border-radius: 20px;
            backdrop-filter: blur(5px);
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 2rem 3rem;
        }
        h1 {
            font-size: 2rem;
            color: #FDC4A7;
            text-align: center;
        }
        .inputbox {
            position: relative;
            margin: 30px 0;
            max-width: 310px;
            border-bottom: 2px solid #fff;
        }
        .inputbox label {
            position: absolute;
            top: 50%;
            left: 5px;
            transform: translateY(-50%);
            color: #FDDABC;
            font-size: 1rem;
            pointer-events: none;
            transition: all 0.5s ease-in-out;
        }
        input:focus ~ label,
        input:valid ~ label {
            top: -5px;
        }
        .inputbox input {
            width: 100%;
            height: 60px;
            background: transparent;
            border: none;
            outline: none;
            font-size: 1rem;
            padding: 0 35px 0 5px;
            color: white;
        }
        button {
            width: 100%;
            height: 40px;
            border-radius: 40px;
            background-color: #FDC4A7;
            border: none;
            outline: none;
            cursor: pointer;
            font-size: 1rem;
            font-weight: 600;
            transition: all 0.4s ease;
        }
        button:hover {
            background-color: rgb(255, 255, 255, 0.5);
        }
    </style>
</head>
<body>
    <div class="form-container">
        <form action="delete" method="post">
            <h1>Delete Employee</h1>
            <div class="inputbox">
                <input type="text" name="rollno" required>
                <label>Roll Number</label>
            </div>
            <button type="submit">Delete</button>
        </form>
    </div>
</body>
</html>
