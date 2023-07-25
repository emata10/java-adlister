"use strict";

        (() => {
        const submitBtn = document.querySelector("#submit-button");
        const guessInput = document.querySelector("#guess");

        guessInput.addEventListener("input", () => {
        submitBtn.disabled = guessInput.value > 3 || guessInput.value < 1 || parseFloat(guessInput.value) !== parseInt(guessInput.value);
        });
        })();