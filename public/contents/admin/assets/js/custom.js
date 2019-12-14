$(document).ready(function(){
  $(document).on("click", "#softDelete", function () {
       var deleteID = $(this).data('id');
       $(".modal-body #modal_id").val( deleteID );
    });
});

//datatable code start
$(document).ready( function () {
  $('#allTable').DataTable({
    "paging": true,
    "lengthChange": true,
    "searching": true,
    "ordering": false,
    "info": true,
    "autoWidth": false
  });
} );
