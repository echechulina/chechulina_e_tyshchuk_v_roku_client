export default {
    name: "TheHomeComponent",

    props: ['currentuser'],

    template: `
    <div class="container">
        <div class="row">
            <div class="col-12 order-2 order-md-1 col-md-3 media-container">
                <h4 class="media-title">{{currentMediaDetails.movies_title}}</h4>
                <p class="media-details" v-html="currentMediaDetails.movies_storyline"></p>
                <span class="media-time">{{currentMediaDetails.movies_runtime}}</span>
                <span class="media-year">Released in {{currentMediaDetails.movies_year}}</span>
                <span class="media-director">Director: {{currentMediaDetails.movies_director}}</span><br>
                <span class="media-writer">Writer: {{currentMediaDetails.movies_screenwriter}}</span><br>
                <span class="media-cast">Cast: <p class="media-cast" v-html="currentMediaDetails.movies_cast"></p></span>
            </div>

            <div class="col-12 order-1 order-md-2 col-md-9 media-container">
                <video autoplay controls muted :src="'images/video/' + currentMediaDetails.movies_trailer" class="fs-video"></video>
            </div>
        </div>

        <div class="row"> <!-- 2-up for nav and media info -->
            <nav class="col-12 col-sm-3 side-nav">
            <ul>
                        <li class="switch" @click="seetv">
                        <i class="fas fa-tv fa-3x"></i>
                        </li>
                        
                        <li class="switch" @click="seemusic">
                        <i class="fas fa-headphones fa-3x"></i>
                        </li>
            </ul>   
            </nav>

            <div class="col-12 col-sm-9 media-info">
            

       
                <div class="thumb-wrapper clearfix">
                    <img v-for="media in retrievedMedia" :src="'images/' + media.movies_cover" alt="media thumb" class="img-thumbnail rounded float-left media-thumb" @click="switchCurrentMedia(media)">
                </div>
            </div>       
        </div> <!-- end 2-up for media info -->
    </div>
    `,

    data() {
        return {
            // push first (or random) media object here (selected / filtered on create)
            currentMediaDetails: {},

            // could add more media types here in future
            // mediaTypes: [
            //     { iconClass: "fas fa-headphones", description: "audio" },
            //     { iconClass: "fas fa-film", description: "video" },
            //     { iconClass: "fas fa-tv", description: "television" }
            // ],

            retrievedMedia: [],
        }
    },

    created: function() {
        this.loadMedia(null, 'movies');
    },

    methods: {
        loadMedia(filter, mediaType) {
        // fetch data here
            let url = (filter == null) ? `/api/${mediaType}` : `/api/${mediaType}/${filter}`;

            fetch(url)
                .then(res => res.json())
                .then(data => {
                    // push all movies to retrievedMedia
                    this.retrievedMedia = data;

                    //pick a random media object from array
                    // to display at the top of the screen in a hero banner
                    this.currentMediaDetails = data[Math.floor(Math.random() * data.length)];
                })
            .catch((err) => console.error(err));
        },

        
        switchCurrentMedia(media){
            this.currentMediaDetails = media;
        }, 


        seetv(){
            this.$router.push({ name: "tv"});
        },
    
    
        seemusic(){
            this.$router.push({ name: "music"});
        }

  
    }
}
   
