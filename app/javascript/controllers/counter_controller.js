import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["output"];
  count = 0;

  increment() {
    this.count++;
    this.outputTarget.textContent = this.count;
  }
}
