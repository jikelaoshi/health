const app = getApp()
Page({
  data: {
    tmpuserInfo:{
      "avatarUrl": '../../images/avatar.png',
      "nickName": '游客'
    },
    phone: null,
    phoneArr: [],
    hasPhone: false,
    userInfo: {},
    hasUserInfo: false,
    canIUse: wx.canIUse('button.open-type.getUserInfo'),
  },
  onShow:function () {
    console.log('user-onShow')
    var that = this;
    console.log(app.globalData)

    if (app.globalData.userid < 1) {
      wx.navigateTo({
        url: '../wxlogin/wxlogin'
      });
    }else{
      that.setData({
        phone: app.globalData.phone,
        userInfo: app.globalData.userInfo,
        tmpuserInfo: app.globalData.userInfo,
        hasUserInfo: true
      })
    }
  },
  onLoad: function () {
    var that = this;
    console.log('user-onLoad');
    console.log(app.globalData)
    if (app.globalData.userInfo) {
      console.log('if');
      console.log(app.globalData);
      that.setData({
        phone: app.globalData.phone,
        userInfo: app.globalData.userInfo,
        tmpuserInfo: app.globalData.userInfo,
        hasUserInfo: true
      })
      console.log('that.data:'+app.globalData.phone)
      console.log(that.data)
    }
  },
  openlog: function() {
    wx.navigateTo({
      url: '../logs/logs'
    });
  },
  health: function() {
    wx.navigateTo({
      url: '../health/health'
    });
  },
  healthList: function() {
    wx.navigateTo({
      url: '../healthlist/healthlist'
    });
  },
  addRegpoint: function() {
    wx.navigateTo({
      url: '../addregpoint/addregpoint'
    });
  },
  regpointList: function() {
    wx.navigateTo({
      url: '../regpointlist/regpointlist'
    });
  },
  adduser: function() {
    wx.navigateTo({
      url: '../adduser/adduser'
    });
  },
  editpwd: function() {
    wx.navigateTo({
      url: '../editpwd/editpwd'
    });
  },
  bindPhone: function() {
    wx.navigateTo({
      url: '../bindphone/bindphone'
    });
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
              app.globalData.phone = resa.data.phoneNumber;
              that.setData({
                phone: resa.data.phoneNumber
              })
            }
          })
        }
      })
    }
  }
})
