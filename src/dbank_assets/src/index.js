
import { dbank } from "../../declarations/dbank/";

window.addEventListener("load", async () => {
    const currentAmount = await dbank.checkBalance();
    document.getElementById("value").innerText = Math.round(currentAmount * 100) / 100;
});

document.querySelector("form").addEventListener("submit", async (event) => {
    event.preventDefault();

    const inputAmount = parseFloat(document.getElementById("input-amount").value);
    const withdrawAmount = parseFloat(document.getElementById("withdrawal-amount").value);

    await dbank.topUp(inputAmount);

    const currentAmount = await dbank.checkBalance();
    document.getElementById("value").innerText = Math.round(currentAmount * 100) / 100;
});