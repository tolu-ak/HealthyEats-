document.addEventListener('DOMContentLoaded', function() {
    // Event listener for login form
    const loginForm = document.getElementById('login-form');
    if (loginForm) {
        loginForm.addEventListener('submit', function(event) {
            event.preventDefault(); // Prevents the default action of submitting the form and reloading the page
            const usernameInput = document.getElementById('username');
            const passwordInput = document.getElementById('password');

            // Check if elements are found
            if (usernameInput && passwordInput) {
                const username = usernameInput.value; // Selects HTML element with ID username and retrieves the value
                const password = passwordInput.value; // Retrieves value of password from HTML

                fetch('http://127.0.0.1:3000/auth/login', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({ username, password }) // Converts the user and pass to a string so the API can process the information
                })
                .then(response => response.json()) // Converts the response from JSON (JavaScript Object Notation) format to JavaScript
                .then(data => {
                    console.log(data);
                    if (data.success) {
                        // Redirect to profile page or another page
                        window.location.href = 'profile.html';
                    } else {
                        alert('Login failed: ' + data.message);
                    }
                })
                .catch(error => console.error);
            } else {
                console.error('Login form elements not found.');
            }
        });
    }

    // Event listener for meal search form
    const mealForm = document.getElementById('meal-form');
    if (mealForm) {
        mealForm.addEventListener('submit', function(event) {
            event.preventDefault(); // Prevents the default action of submitting the form and reloading the page
            const mealInput = document.getElementById('meal-input');

            if (mealInput) {
                const meal = mealInput.value;

                fetch(`http://127.0.0.1:3000/meals?meal=${encodeURIComponent(meal)}`, {
                    method: 'GET',
                    headers: {
                        'Content-Type': 'application/json'
                    }
                })
                .then(response => response.json())
                .then(data => {
                    console.log(data);
                    // Clear previous results
                    document.getElementById('meal-results').innerHTML = '';
                    
                    if (data.meal) {
                        // Display the meal and its breakdown
                        const mealElement = document.createElement('div');
                        mealElement.innerHTML = `
                            <h2>${data.meal.name}</h2>
                            <p>${data.meal.breakdown}</p>
                            <h3>Healthier Alternative</h3>
                            <p>${data.alternative.name}</p>
                            <p>${data.alternative.breakdown}</p>
                        `;
                        document.getElementById('meal-results').appendChild(mealElement);
                    } else {
                        alert('Meal not found');
                    }
                })
                .catch(error => console.error('Error:', error));
            } else {
                console.error('Meal input element not found.');
            }
        });
    }

    // Event listener for restaurant search form
    const restaurantForm = document.getElementById('restaurant-form');
    if (restaurantForm) {
        restaurantForm.addEventListener('submit', function(event) {
            event.preventDefault(); // Prevents the default action of submitting the form and reloading the page
            const mealInput = document.getElementById('restaurant-meal-input');
            const provinceSelect = document.getElementById('province-select');

            if (mealInput && provinceSelect) {
                const meal = mealInput.value;
                const province = provinceSelect.value;

                fetch(`http://127.0.0.1:3000/restaurants?meal=${encodeURIComponent(meal)}&province=${encodeURIComponent(province)}`, {
                    method: 'GET',
                    headers: {
                        'Content-Type': 'application/json'
                    }
                })
                .then(response => response.json())
                .then(data => {
                    console.log(data);
                    // Clear previous results
                    document.getElementById('restaurant-results').innerHTML = '';
                    
                    if (data.restaurant) {
                        // Display the restaurant details
                        const restaurantElement = document.createElement('div');
                        restaurantElement.innerHTML = `
                            <h2>${data.restaurant.name}</h2>
                            <p>Location: ${data.restaurant.location}</p>
                            <p>Rating: ${data.restaurant.rating}</p>
                            <img src="${data.restaurant.image}" alt="${data.restaurant.name}">
                        `;
                        document.getElementById('restaurant-results').appendChild(restaurantElement);
                    } else {
                        alert('Restaurant not found');
                    }
                })
                .catch(error => console.error('Error:', error));
            } else {
                console.error('Restaurant form elements not found.');
            }
        });
    }

    // Event listener for question submission form
    const questionForm = document.getElementById('question-form');
    if (questionForm) {
        questionForm.addEventListener('submit', function(event) {
            event.preventDefault(); // Prevents the default action of submitting the form and reloading the page
            const questionInput = document.getElementById('question-input');

            if (questionInput) {
                const question = questionInput.value;

                fetch('http://127.0.0.1:3000/questions', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({ question })
                })
                .then(response => response.json())
                .then(data => {
                    console.log(data);
                    if (data.success) {
                        alert('Question submitted successfully');
                        questionForm.reset(); // Clear the form
                    } else {
                        alert('Failed to submit question: ' + data.message);
                    }
                })
                .catch(error => console.error('Error:', error));
            } else {
                console.error('Question input element not found.');
            }
        });
    }

    // Event listener for profile form
    const profileForm = document.getElementById('profile-form');
    if (profileForm) {
        profileForm.addEventListener('submit', function(event) {
            event.preventDefault(); // Prevents the default action of submitting the form and reloading the page
            const firstNameInput = document.getElementById('first-name');
            const lastNameInput = document.getElementById('last-name');
            const ageInput = document.getElementById('age');
            const genderInput = document.getElementById('gender');
            const healthGoalInput = document.getElementById('health-goal');

            if (firstNameInput && lastNameInput && ageInput && genderInput && healthGoalInput) {
                const firstName = firstNameInput.value;
                const lastName = lastNameInput.value;
                const age = ageInput.value;
                const gender = genderInput.value;
                const healthGoal = healthGoalInput.value;

                fetch('http://127.0.0.1:3000/profile', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({ firstName, lastName, age, gender, healthGoal })
                })
                .then(response => response.json())
                .then(data => {
                    console.log(data);
                    if (data.success) {
                        alert('Profile updated successfully');
                        window.location.href = 'index.html'; // Redirect to home or another page after successful update
                    } else {
                        alert('Failed to update profile: ' + data.message);
                    }
                })
                .catch(error => console.error('Error:', error));
            } else {
                console.error('Profile form elements not found.');
            }
        });
    }
});
