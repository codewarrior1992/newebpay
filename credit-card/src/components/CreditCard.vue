<template>
  <div class="container">
    <h1>串接 API</h1>
    <form action="https://ccore.newebpay.com/MPG/mpg_gateway" method="post" ref="form">
      <input type="text" name="TradeInfo" :value="`${TradeInfo}`">
      <input type="text" name="TradeSha" :value="`${TradeSha}`">
      <input type="text" name="Version" :value="`${Version}`">
      <input type="text" name="MerchantID" :value="`${MerchantID}`">

      <button class="btn btn-primary" type="button" @click.prevent="onPay">GO</button>
      <button class="btn btn-primary" type="button" @click.prevent="google">google</button>
    
    </form>
  </div>
</template>

<script>
export default {
  name: 'CreditCard',
  data(){
    return {
        TradeInfo:'',
        TradeSha:'',
        MerchantID:'',
        Version : '',
    }
  },
  methods:{
    onPay(){
      this.axios.post('http://127.0.0.1:3000/get-encrypt-data').then((response)=>{
        this.TradeInfo = response.data.TradeInfo;
        this.TradeSha = response.data.TradeSha;
        this.MerchantID = response.data.MerchantID;
        this.Version = response.data.Version;

        console.log(response.data)
      }).finally(()=>{
        this.$refs.form.submit();
      })
    },
    google(){
      this.axios.post('http://127.0.0.1:3000/test').then((res)=>{
        console.log(res)
      })
    }
  }
}
</script>
