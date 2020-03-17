import { Controller } from 'stimulus'

export default class extends Controller {
  // static targets = [ "output" ]

  connect() {
    this.scrollToBottom();
  }

  scrollToBottom() {
    if (this.lastRead) {
      this.element.scrollTop = this.lastRead.scrollHeight;
    }
    this.element.scrollTop = this.element.scrollHeight;
  }

  get lastRead() {
    if (this.data.has('lastRead')) {
      return this.data.get('lastRead');
    }

    return null;
  }
}
