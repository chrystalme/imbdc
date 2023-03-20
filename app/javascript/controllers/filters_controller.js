import { Controller } from '@hotwired/stimulus';

// Connects to data-controller="filters"
export default class extends Controller {
  connect() {}

  static get targets() {
    return ['form'];
  }

  submit(event) {
    event.preventDefault();
    this.formTarget.requestSubmit();
  }
}
