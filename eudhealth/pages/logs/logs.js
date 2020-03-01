const app = getApp()
Page({
  data: {
    looding: '../../images/looding.gif',
    hidelood: false,
    nodata: false,
    listarr: [],
    page: 1,
    num: 20,
    scrollHeight: 0,
  },
  onPullDownRefresh: function () {
    this.setData({
      listarr: []
    })
    if (app.globalData.userid) {
      this.getmore(1, this.data.num);
    }
    setTimeout(function(){
      if (wx.stopPullDownRefresh) {
        wx.stopPullDownRefresh();
      }
    },3000);
  },
  scrolltoupper: function(){
    //
  },
  scrolltolower: function(){
    this.setData({
      hidelood: true
    });
    var curpage = this.data.page +1;
    var num = this.data.num;
    if (app.globalData.userid){
      this.getmore(curpage,num);
    }
  },
  onLoad: function () {
    var that = this;
    wx.getSystemInfo({
      success: function (res){
        that.setData({
          scrollHeight: res.windowHeight
        });
      }
    });
    // wx.showLoading({
    //   title: '正在加载',
    //   mask: true
    // })
    if (app.globalData.userid){
      if (that.data.listarr.length <1) {
        that.getmore(1,that.data.num);
      } else {
        wx.hideLoading();
      }
    } else {
      wx.hideLoading();
    }
  },
  getmore: function(page,num){
    var that = this;
    if (page == undefined) {
      page = 1;
    }
    if (num == undefined) {
      num = 20;
    }
    that.setData({
      page: page
    });
    if (app.globalData.userid) {
      /*wx.request({
          url: "https://www.bomaxinxi.com/api/index/getSuggest",
          data: {
              userid: app.globalData.userid,
              page: page,
              num: num
          },
          // header: {
          //     "content-type": "application/x-www-form-urlencoded"
          // },
          method: "POST",
          success: function (resa) {
            console.log(resa);
              wx.hideLoading();
              var arr = [];
              if (resa.data.code == 1) {
                  var arrdata = resa.data.info
                  if(arrdata.length > 0){
                    for (var i = 0; i < arrdata.length; i++) {
                        arrdata[i]['ctime'] = that.timestampToTime(arrdata[i]['ctime']);
                        arrdata[i]['utime'] = that.timestampToTime(arrdata[i]['utime']);
                        arr.push(arrdata[i]);
                    }
                    var newdata = that.data.listarr.concat(arr);
                    that.setData({
                        listarr: newdata,
                        hidelood: false
                    });
                  }else{
                      that.setData({
                          hidelood: false,
                          nodata: true
                      });
                  }
              }
          },
          fail: function (res) {
              wx.showModal({
                  title: '查询失败',
                  content: '网络故障，请稍后重试',
                  showCancel: false
              });
          }
      });*/
    }
  },
  scrollfun: function(){
    //
  },
  timestampToTime: function (timestamp) {
    if (timestamp == undefined || timestamp==0){
      return '';
    }
    var date = new Date(timestamp * 1000);
    var Y = date.getFullYear() + '-';
    var m = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) + '-';
    var d = date.getDate() < 10 ? '0'+date.getDate()+' ' : date.getDate()+' ';
    var H = date.getHours() < 10 ? '0'+date.getHours()+':' : date.getHours()+':';
    var i = date.getMinutes() < 10 ? '0'+date.getMinutes()+':' : date.getMinutes()+':';
    var s = date.getSeconds() < 10 ? '0'+date.getSeconds() : date.getSeconds();
    return Y+m+d+H+i+s;
  }
})