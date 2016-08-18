function deleteTournament(event){
  event.preventDefault()
  	
  var tournamentId = $("[data-hook~=tourney-delete]").val()

  var request = $.ajax({
      url: '/api/tournaments',
      type: 'DELETE',
      data: {id: tournamentId},
    });
}
