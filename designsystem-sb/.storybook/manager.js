import { addons } from '@storybook/manager-api';
import { getPreferredColorScheme } from './designsystem-theme';
import { version } from '../../package.json';

addons.setConfig({
  theme: getPreferredColorScheme(),
});

window.addEventListener('load', (event) => {
  const title = document.querySelector('#designsystem button');
  title.append(` ${version}`);
})
