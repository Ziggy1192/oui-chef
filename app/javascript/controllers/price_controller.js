import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="price"
export default class extends Controller {
  static targets = ["start"]

  connect() {
    console.log("Hello from price controller")
    console.log(this.element.startTarget)
    console.log(this.element)
  }
}
