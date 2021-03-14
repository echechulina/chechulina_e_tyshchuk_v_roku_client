export default {
    name: "TheMovieThumb",

    
    props: ["movie"],

    template: `
    <div class="allMovies">
    <img :src='"images/" + movie.movies_cover' alt="movie-thumb" class="movie-thumb">
    </div>
    `
}