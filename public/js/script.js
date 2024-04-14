document.addEventListener('DOMContentLoaded', function() {
    const elems = document.querySelectorAll('.fixed-action-btn');
    const options = { 'direction': 'top', 'hoverEnabled': true }
    const instances = M.FloatingActionButton.init(elems, options);
});

document.getElementById('modal-btn').addEventListener('click', function() {
    var modal = document.getElementById('tweetModal');
    modal.style.display = 'block'; // Show the modal
});

document.querySelector('#exit-btn').addEventListener('click', function() {
    var modal = document.getElementById('tweetModal');
    modal.style.display = 'none'; // Hide the modal
});