import InfiniteScroll from 'infinite-scroll';

import { Controller } from 'stimulus';

export default class extends Controller {
  static targets = ['container', 'loader', 'nextLink'];

  connect() {
    this.setupInfiniteScroll();
    this.hideNavigation();
  }

  setupInfiniteScroll() {
    if (!this.hasNextLinkTarget) {
      return;
    }

    const options = {
      append: '.notification',
      path: "a[rel='next']",
      scrollThreshold: 0
    };

    this.infiniteScroll = new InfiniteScroll(this.containerTarget, options);

    this.infiniteScroll.on('scrollThreshold', () => {
      this.showLoader();
    });
    this.infiniteScroll.on('load', () => {
      this.hideLoader();
      this.hideNavigation();
    });
  }

  hideNavigation() {
    if (!this.hasNextLinkTarget) {
      return;
    }

    this.nextLinkTarget.style.display = 'none';
  }

  showLoader() {
    this.loaderTarget.style.display = 'block';
  }

  hideLoader() {
    this.loaderTarget.style.display = 'none';
  }

  disconnect() {
    if (this.infiniteScroll) {
      this.infiniteScroll.destroy();
    }
  }
}
