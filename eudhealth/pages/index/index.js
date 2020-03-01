const app = getApp()
Page({
  data: {
    looding: '../../images/looding.gif',
    user_id:0
  },
  onLaunch: function () {
    console.log('index-onLaunch')
  },
  onLoad: function () {
    console.log('index-onLoad')
    console.log('index-app.globalData')
    console.log(app.globalData)
    
  },
  scan: function(){
    console.log(app.globalData.userid)
  },
  getPhoneNumber: function (e) {
    var that = this;
    console.log('getPhoneNumber-e');
    console.log(e);
    if (e != undefined) {}
    if (e.detail.errMsg == "getPhoneNumber:ok") {
      wx.login({
        success: res => {
          console.log('res.code:'+res.code)
          wx.request({
            url: app.globalData.domain+'/api/Member/getphonenumber',
            data: {
              encryptedData: e.detail.encryptedData,
              iv: e.detail.iv,
              code: res.code
            },
            method: "post",
            success: function (resa) {
              console.log('getphonenumber-resa');
              console.log(resa);
            }
          })
        }
      })
    }
  }
})