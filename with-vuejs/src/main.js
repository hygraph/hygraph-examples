import Vue from 'vue';
import { GraphQLClient } from 'graphql-request';

import App from './App.vue';
import router from './router';

Vue.config.productionTip = false;

const hygraphClient = new GraphQLClient(
  'https://api-eu-central-1.hygraph.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master'
);

Vue.mixin({
  beforeCreate() {
    this.$hygraph = hygraphClient;
  },
});

new Vue({
  router,
  render: (h) => h(App),
}).$mount('#app');
