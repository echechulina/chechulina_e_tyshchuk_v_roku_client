import LoginComponent from "./components/TheLoginComponent.js";
import AllUsers from "./components/TheAllUsersComponent.js";
import HomeComponent from "./components/TheHomeComponent.js";
import TVComponent from './components/TheTVComponent.js';
import MusicComponent from './components/TheMusicComponent.js';

const router = new VueRouter({
    routes: [
        { path: "/", name: "root", component: LoginComponent},
        { path: "/users", name: "users", component: AllUsers },
        { path: "/home", name: "home", component: HomeComponent, props: true},
        { path: "/tv", name: "tv", component: TVComponent, props: true},
        { path: "/music", name: "music", component: MusicComponent, props: true}
    ]
});

(() => {
    const vm = new Vue({
        data: {
            authenticated: false,
            isAdmin: false,
            // currentuser: undefined
        },

        created: function(){
   
        },

        methods: {
            logout(){
                // remove the cached user from localstorage if it exists
                if (localStorage.getItem('cacheduser')){
                    localStorage.removeItem('cacheduser');
                }
                // redirect the user (push) back to the root (home/index) route
                this.$router.push({ name: "root" });
                this.currentuser = undefined;
            },

            authenticateuser(user) {
                // debugger;
                this.currentuser = user;
            }
        },

        components: {
           
        },

        router
    }).$mount("#app");
})();