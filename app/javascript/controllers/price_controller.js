import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="price"
export default class extends Controller {
  static targets = [ "start", "end", "fee", "total" ]

  connect() {
  }

  calculate() {
    if (this.startTarget.value && this.endTarget.value) {
      const days = (new Date(this.endTarget.value) - new Date(this.startTarget.value)) / 86400000
      const totalPrice = Math.round(days * this.feeTarget.name)
      this.totalTarget.innerText = `Price: £${totalPrice}`
    }
  }
}
