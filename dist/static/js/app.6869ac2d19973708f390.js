webpackJsonp([0],{"5cn5":function(t,e){},"6q5Q":function(t,e){},KHQi:function(t,e){},NHnr:function(t,e,n){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var s=n("7+uW"),i={render:function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{attrs:{id:"app"}},[n("div",{attrs:{id:"navbar"}},[t._m(0),t._v(" "),n("div",{attrs:{id:"navbar__bottom"}},[n("div",{attrs:{id:"navbar__bottom__links"}}),t._v(" "),n("router-link",{staticClass:"navbar__bottom__link",attrs:{to:"/",id:"navbar_home"}},[t._v("Home")]),t._v(" "),n("router-link",{staticClass:"navbar__bottom__link",attrs:{to:"/",id:"navbar_placeholder"}},[t._v("Placeholder")])],1)]),t._v(" "),n("div",{attrs:{id:"body"}},[n("router-view",{attrs:{id:"content"}})],1),t._v(" "),n("div",{attrs:{id:"footer"}})])},staticRenderFns:[function(){var t=this.$createElement,e=this._self._c||t;return e("div",{attrs:{id:"navbar__top"}},[e("div",{attrs:{id:"navbar__title"}},[this._v("Software Procurement Portal")]),this._v(" "),e("button",{staticClass:"btn--green btn--small",attrs:{id:"navbar__btn-login"}},[this._v("Log in")])])}]};var a=n("VU/8")({name:"App"},i,!1,function(t){n("5cn5")},null,null).exports,r=n("/ocq"),_={render:function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"page"},[e("div",{staticClass:"page__header"},[e("h1",{staticClass:"page__title"},[this._v(this._s(this.title))])]),this._v(" "),this._m(0)])},staticRenderFns:[function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("table",[n("tr",[n("td",[t._v("First Name: ")]),n("td",[n("input",{attrs:{type:"text",id:"first__name",size:"30"}})])]),t._v(" "),n("tr",[n("td",[t._v("Last Name: ")]),n("td",[n("input",{attrs:{type:"text",id:"last__name",size:"30"}})])]),t._v(" "),n("tr",[n("td",[t._v("Email: ")]),n("td",[n("input",{attrs:{type:"email",id:"email",size:"30"}})])]),t._v(" "),n("tr",[n("td",[t._v("Password: ")]),n("td",[n("input",{attrs:{type:"password",id:"password",size:"30"}})])]),t._v(" "),n("tr",[n("td",[t._v("Verify Password: ")]),n("td",[n("input",{attrs:{type:"password",id:"vf__password",size:"30"}})])]),t._v(" "),n("tr",[n("td",[t._v("Invitation Code: ")]),n("td",[n("input",{attrs:{type:"text",id:"inv__code",size:"30"}})])])]),t._v(" "),n("button",{staticClass:"btn--blue btn--full"},[t._v("Sign up")])])}]};var l=n("VU/8")({name:"signup",data:function(){return{title:"Sign up"}}},_,!1,function(t){n("6q5Q")},"data-v-475ba47a",null).exports,v={render:function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"page"},[e("div",{staticClass:"page__header"},[e("h1",{staticClass:"page__title"},[this._v(this._s(this.title))])]),this._v(" "),this._m(0)])},staticRenderFns:[function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"page__content"},[this._v("\n    Username: "),e("input",{attrs:{type:"text"}}),this._v("\n    Password: "),e("input",{attrs:{type:"text"}}),this._v(" "),e("button",{staticClass:"btn--blue btn--full"},[this._v("Log in")])])}]};var o=n("VU/8")({name:"login",data:function(){return{title:"Log in"}}},v,!1,function(t){n("KHQi")},null,null).exports,u={render:function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"page"},[n("div",[n("h1",[t._v(t._s(t.welcome))])]),t._v(" "),n("div",[n("h2",[t._v(t._s(t.description)+" ")])]),t._v(" "),n("div",[n("router-link",{attrs:{to:"/login"}},[n("button",{staticClass:"btn--blue btn--large"},[t._v("Log in")])]),t._v(" "),t._m(0)],1)])},staticRenderFns:[function(){var t=this.$createElement,e=this._self._c||t;return e("p",[this._v("Dont have an account? "),e("a",{attrs:{href:"/#/signup"}},[this._v("Sign up now")])])}]};var c=n("VU/8")({name:"signup",data:function(){return{welcome:"Welcome",description:"This is a government website allow user download their desired software"}}},u,!1,function(t){n("wGf1")},"data-v-0afbac0c",null).exports,d={render:function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"page"},[e("div",[e("h1",[this._v(this._s(this.titel))])]),this._v(" "),e("div",{staticClass:"page__content"},[e("table",[this._m(0),this._v(" "),e("router-link",{attrs:{to:"/newRequest"}},[e("button",{staticClass:"btn--blue btn--full"},[this._v("New Request")])])],1)])])},staticRenderFns:[function(){var t=this.$createElement,e=this._self._c||t;return e("tr",[e("td",[this._v("First request")]),this._v(" "),e("td",[e("button",{staticClass:"btn--blue request__button"},[this._v("view")])]),this._v(" "),e("td",[e("button",{staticClass:"btn--blue request__button"},[this._v("delete")])])])}]};var p=n("VU/8")({name:"signup",data:function(){return{titel:"Current Request"}}},d,!1,function(t){n("myWd")},"data-v-6530d02c",null).exports,h={render:function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"page"},[e("div",[e("h1",[this._v(this._s(this.titel))])]),this._v(" "),this._m(0)])},staticRenderFns:[function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"page__content"},[n("table",[n("tr",[n("td",[t._v("Filter1")]),t._v(" "),n("button",{staticClass:"btn--blue"},[t._v("Filter1")])]),t._v(" "),n("tr",[n("td",[t._v("Filter2")]),t._v(" "),n("td",[n("button",{staticClass:"btn--blue"},[t._v("Filter2")])])]),t._v(" "),n("tr",[n("td",[t._v("List of program")]),t._v(" "),n("td")]),t._v(" "),n("tr",[n("td",[n("button",{staticClass:"btn--blue btn--full"},[t._v("Filter3")])])]),t._v(" "),n("button",{staticClass:"btn--blue btn--full"},[t._v("Submit Request")])])])}]};var m=n("VU/8")({name:"signup",data:function(){return{titel:"Make a new Request"}}},h,!1,function(t){n("WtBd")},"data-v-f40a5440",null).exports,f={render:function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"page"},[n("div",[n("h1",[t._v(t._s(t.titel))])]),t._v(" "),n("div",{staticClass:"page__content"},[n("table",[n("tr",[n("td",[t._v("First name:")]),t._v(" "),n("td",[t._v(t._s(t.firstname))])]),t._v(" "),n("tr",[n("td",[t._v("Last name:")]),t._v(" "),n("td",[t._v(t._s(t.lastname))])]),t._v(" "),n("tr",[n("td",[t._v("Email address:")]),t._v(" "),n("td",[t._v(t._s(t.email))])]),t._v(" "),n("tr",[n("td",[t._v("Company:")]),t._v(" "),n("td",[t._v(t._s(t.company))])]),t._v(" "),n("tr",[n("td",[t._v("Request:")]),t._v(" "),n("td",[t._v(t._s(t.request))])]),t._v(" "),t._m(0)])])])},staticRenderFns:[function(){var t=this.$createElement,e=this._self._c||t;return e("tr",[e("td",[e("button",{staticClass:"btn--blue btn--full"},[this._v("Accept")])]),this._v(" "),e("td",[e("button",{staticClass:"btn--blue btn--full"},[this._v("Decline")])])])}]};var b=n("VU/8")({name:"signup",data:function(){return{titel:"Approver/ Anaylst Ticket Viewer",firstname:"frank",lastname:"James",email:"fj@gmail.com",company:"city of Regina",request:"mysql"}}},f,!1,function(t){n("YTTi")},"data-v-7ea7402f",null).exports;s.a.use(r.a);var g=new r.a({routes:[{path:"/",name:"",component:c},{path:"/signup",name:"signup",component:l},{path:"/login",name:"login",component:o},{path:"/currRequest",name:"currRequest",component:p},{path:"/newRequest",name:"newRequest",component:m},{path:"/ticket",name:"ticket",component:b}]});s.a.config.productionTip=!1,new s.a({el:"#app",router:g,components:{App:a},template:"<App/>"})},WtBd:function(t,e){},YTTi:function(t,e){},myWd:function(t,e){},wGf1:function(t,e){}},["NHnr"]);
//# sourceMappingURL=app.6869ac2d19973708f390.js.map