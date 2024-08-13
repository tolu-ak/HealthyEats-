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
    // 
    document.addEventListener('DOMContentLoaded', function() {
        const mealForm = document.getElementById('meal-form');
        if (mealForm) {
            mealForm.addEventListener('submit', function(event) {
                event.preventDefault(); // Prevents the default action of submitting the form and reloading the page
                const mealInput = document.getElementById('Input');
                if (mealInput) {
                    const meal = mealInput.value;
                    fetch('http://127.0.0.1:3000/meal/mealsearch', {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json'
                        },
                        body: JSON.stringify({ meal: meal })   
                    })
                    .then(response => response.json())
                    .then(data => {
                        console.log(data);
                        // Clear previous results
                        const mealResults = document.querySelector('.search-results');
                        mealResults.innerHTML = '';
                        
                        if (data && data.length > 0) {
                            const meal = data[0]; // First result is the searched meal
                            const alternative = data[1]; // Second result is the alternative
    
                            // Display the searched meal
                            const mealElement = document.createElement('div');
                            mealElement.innerHTML = `
                                <h3 id="meal-name">${meal.name}</h3>
                                <img id="meal-image" src="${meal.image || ''}" alt="${meal.name}">
                                <p id="meal-description">${meal.description || 'No description available.'}</p>
                                <div id="meal-breakdown">
                                    <h4>Nutritional Breakdown:</h4>
                                    <ul>
                                        <li>Calories: <span id="meal-calories">${meal.calories || '0'}</span> kcal</li>
                                        <li>Carbohydrates: <span id="meal-carbohydrates">${meal.carbohydrates || '0'}</span> g</li>
                                        <li>Fat: <span id="meal-fat">${meal.fat || '0'}</span> g</li>
                                        <li>Protein: <span id="meal-protein">${meal.protein || '0'}</span> g</li>
                                        <li>Sodium: <span id="meal-sodium">${meal.sodium || '0'}</span> mg</li>
                                        <li>Iron: <span id="meal-iron">${meal.iron || '0'}</span> mg</li>
                                        <li>Cholesterol: <span id="meal-cholesterol">${meal.cholesterol || '0'}</span> mg</li>
                                    </ul>
                                </div>
                            `;
                            mealResults.appendChild(mealElement);
    
                            // Display the alternative meal
                            const alternativeElement = document.createElement('div');
                            alternativeElement.innerHTML = `
                                <h3 id="alternative-meal-name">${alternative.name}</h3>
                                <img id="alternative-meal-image" src="${alternative.image || ''}" alt="${alternative.name}">
                                <p id="alternative-meal-description">${alternative.description || 'No description available.'}</p>
                                <div id="alternative-meal-breakdown">
                                    <h4>Nutritional Breakdown:</h4>
                                    <ul>
                                        <li>Calories: <span id="alternative-meal-calories">${alternative.calories || '0'}</span> kcal</li>
                                        <li>Carbohydrates: <span id="alternative-meal-carbohydrates">${alternative.carbohydrates || '0'}</span> g</li>
                                        <li>Fat: <span id="alternative-meal-fat">${alternative.fat || '0'}</span> g</li>
                                        <li>Protein: <span id="alternative-meal-protein">${alternative.protein || '0'}</span> g</li>
                                        <li>Sodium: <span id="alternative-meal-sodium">${alternative.sodium || '0'}</span> mg</li>
                                        <li>Iron: <span id="alternative-meal-iron">${alternative.iron || '0'}</span> mg</li>
                                        <li>Cholesterol: <span id="alternative-meal-cholesterol">${alternative.cholesterol || '0'}</span> mg</li>
                                    </ul>
                                </div>
                            `;
                            mealResults.appendChild(alternativeElement);
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
    });
    

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

                fetch(`'http://127.0.0.1:3000/rest/restaurantsearch`, {
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

