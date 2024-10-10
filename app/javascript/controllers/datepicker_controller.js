import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

export default class extends Controller {
  connect() {
    flatpickr(this.element)
  }

  // once both inputs are populated
  // select the dates (convert from strings)
  // create a method that calculates the difference
  // this method will convert the strings into dates
  // method will update the DOM with the result
}
