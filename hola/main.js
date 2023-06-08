/**
 * Función que realiza la validación de datos del formulario
 */
function validateForm() {
    const form = document.getElementById("form");
    const nameInput = document.getElementById("name");
    const emailInput = document.getElementById("email");
    const passwordInput = document.getElementById("contra");
    const warningMessage = document.getElementById("warnings");
  
    form.addEventListener("submit", function(event) {
      event.preventDefault();
  
      // Limpiar los mensajes de advertencia
      warningMessage.innerHTML = "";
  
      // Validar los campos del formulario
      const nameValue = nameInput.value.trim();
      const emailValue = emailInput.value.trim();
      const passwordValue = passwordInput.value.trim();
  
      if (nameValue === "") {
        displayWarning("Por favor, ingresa tu nombre.");
        return;
      }
  
      if (emailValue === "") {
        displayWarning("Por favor, ingresa tu correo electrónico.");
        return;
      } else if (!validateEmail(emailValue)) {
        displayWarning("Por favor, ingresa un correo electrónico válido.");
        return;
      }
  
      if (passwordValue === "") {
        displayWarning("Por favor, ingresa tu contraseña.");
        return;
      }
  
      // Si todos los campos son válidos, enviar el formulario
      form.submit();
    });
  
    /**
     * Función para mostrar un mensaje de advertencia en el elemento de advertencia
     * @param {string} message - El mensaje de advertencia a mostrar
     */
    function displayWarning(message) {
      const warning = document.createElement("p");
      warning.classList.add("warning-message");
      warning.innerText = message;
      warningMessage.appendChild(warning);
    }
  
    /**
     * Función para validar el formato del correo electrónico utilizando una expresión regular
     * @param {string} email - El correo electrónico a validar
     * @returns {boolean} - True si el formato es válido, False de lo contrario
     */
    function validateEmail(email) {
      const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      return emailRegex.test(email);
    }
  }
  
  // Llamar a la función de validación del formulario
  validateForm();
  