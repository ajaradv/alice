import 'htmx.org';
import Alpine from 'alpinejs';
import * as echarts from 'echarts';

window.htmx = require('htmx.org').default;
window.Alpine = Alpine;
window.echarts = echarts;

document.addEventListener('DOMContentLoaded', async () => {
  Alpine.start();
});
