window.addEventListener('keydown', () => {
  const priceInput = document.getElementById("item-price");
    priceInput.addEventListener("input", () => {   
      const addTaxDom = document.getElementById("add-tax-price");
      addTaxDom.innerHTML = Math.round(priceInput.value * 0.1);
      const profitValue = document.getElementById("profit")
      profitValue.innerHTML = Math.round(priceInput.value - Math.round(priceInput.value * 0.1));
      })
});