export default {
    name: "TVComponent",

    props: ['currentuser'],

    template: `
    <div class="container">
        <div class="row">
            <div class="col-12 order-2 order-md-1 col-md-3 media-container">
                <h4 class="media-title">{{currentMediaDetails.tv_title}}</h4>
                <p class="media-details" v-html="currentMediaDetails.tv_storyline"></p>
                <span class="media-time">{{currentMediaDetails.tv_runtime}}</span>
                <span class="media-year">Released in {{currentMediaDetails.tv_year}}</span>
            </div>

            <div class="col-12 order-1 order-md-2 col-md-9 media-container">
                <video autoplay controls muted :src="'images/video/' + currentMediaDetails.tv_trailer" class="fs-video"></video>
            </div>
        </div>

        <div class="row"> <!-- 2-up for nav and media info -->
            <nav class="col-12 col-sm-3 side-nav">
            
            <ul>
                        <li class="switch" @click="seemovie">
                        <i class="fas fa-film fa-3x"></i>
                        </li>
                        
                        <li class="switch" @click="seemusic">
                        <i class="fas fa-headphones fa-3x"></i>
                        </li>
            </ul>   
            
            </nav>

            <div class="col-12 col-sm-9 media-info">
               
                

                <div class="thumb-wrapper clearfix">
                    <img v-for="media in retrievedMedia" :src="'images/' + media.tv_cover" alt="media thumb" class="img-thumbnail rounded float-left media-thumb" @click="switchCurrentMedia(media)">
                </div>
            </div>       
        </div> <!-- end 2-up for media info -->
    </div>
    `,

    data() {
        return {
            // message:"What elses we have:",
            currentMediaDetails: {},

            retrievedMedia: [],
        }
    },

    created: function() {

        this.loadMedia(null,'tv');
      
    },

    methods: {
        loadMedia(filter,mediaType) {
        // fetch data here
            let url = (filter == null) ? `/api/${mediaType}` : `/api/${mediaType}/${filter}`;

            fetch(url)
               .then(res => res.json())
               .then(data => {
                   this.retrievedMedia =data;

                   //pcik a random media object from the array
                   this.currentMediaDetails = data[Math.floor(Math.random() * data.length)];

               })
               .catch((err) =>console.error(err));
        },

     
    
        seemovie() {
            this.$router.push({ name: "home"});
            
        },
        seemusic(){
            this.$router.push({ name: "music"});
        }

    }
}
