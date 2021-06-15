import Vue from 'vue';
import { GraphQLClient } from 'graphql-request';

import App from './App.vue';
import router from './router';

Vue.config.productionTip = false;

const graphcmsClient = new GraphQLClient(
  'https://api-eu-central-1.graphcms.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master'
);

Vue.mixin({
  beforeCreate() {
    this.$graphcms = graphcmsClient;
  },
});

new Vue({
  router,
  render: h => h(App),
}).$mount('#app');
