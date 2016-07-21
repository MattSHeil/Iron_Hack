var fs = require('fs');

function fileActions(err, file){ 
   if (err) {
       throw err;
   }

    var stars = function(episodeR){
        return Array(Math.round(episodeR) + 1).join('*');
    }

   var episodes = JSON.parse(file);

    var sorted = episodes.sort(function(a, b){
        return a.episode_number - b.episode_number
    }); 

    var filtered = sorted.filter(function(value){
      return value.rating >= 8.5
    })

    var searchForSnow = filtered.filter(function(episode){
      return episode.description.indexOf("Jon") !== -1
    }) 

   searchForSnow.forEach(function(episode){
       console.log(`Title: ${episode.title}        Episode: ${episode.episode_number}\n
           ${episode.description}\n
           Rating: ${episode.rating} ---- ${stars(episode.rating)} \n\n`)
   });
}

fs.readFile("./GoTEpisodes.json", 'utf8', fileActions);

// var display = function(file){
//     var episodes = JSON.parse(file);
//     episodes.forEach(function(episode){
//         console.log(`${episode.title}`)
//     });  
// }
//  display("./GoTEpisodes.json")