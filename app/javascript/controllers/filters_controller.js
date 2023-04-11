import { Controller } from '@hotwired/stimulus';

// Connects to data-controller="filters"
export default class extends Controller {
  connect() {
    console.log('FiltersController connected', this.element);
  }
  initialize() {
    this.submit = debounce(this.submit.bind(this), 300);
  }

  static targets = ['filters'];

  submit() {
    this.filtersTarget.requestSubmit();
  }
}
