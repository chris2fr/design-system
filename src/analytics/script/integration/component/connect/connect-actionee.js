import { ComponentActionee } from '../component-actionee';
import ID from './id';

class ConnectActionee extends ComponentActionee {
  constructor () {
    super(1);
  }

  static get instanceClassName () {
    return 'ConnectActionee';
  }

  init () {
    this.detectInteractionType();
    this.listenActionClick();
  }

  get label () {
    if (this.node.classList.contains('design-system-connect--plus')) return 'FranceConnect+';
    return 'FranceConnect';
  }

  get component () {
    return ID;
  }
}

export { ConnectActionee };
