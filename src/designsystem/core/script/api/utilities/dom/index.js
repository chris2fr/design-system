import { addClass, hasClass, removeClass } from './classes.js';
import { queryParentSelector, querySelectorAllArray } from './query-selector.js';
import { queryActions } from './actions.js';
import { uniqueId } from './id.js';

const dom = {
  addClass: addClass,
  hasClass: hasClass,
  removeClass: removeClass,
  queryParentSelector: queryParentSelector,
  querySelectorAllArray: querySelectorAllArray,
  queryActions: queryActions,
  uniqueId: uniqueId
};

export default dom;
