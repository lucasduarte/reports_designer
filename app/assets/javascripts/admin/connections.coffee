$(document).on "page:change", ->
  $('#connections_table').dataTable
    columns: [
      { width: "10%", searchable: true, orderable: true }
      { width: "10%", searchable: true, orderable: true }
      { width: "null", searchable: true, orderable: false }
      { width: "5%", searchable: false, orderable: false }
      { width: "3%", searchable: false, orderable: false }
      { width: "3%", searchable: false, orderable: false }
      { width: "3%", searchable: false, orderable: false }
    ]
    retrieve: true
    aoColumnDefs: [{
          'bSortable': false,
          'aTargets': ['nosort']
      }]
    language: { url: "/Portuguese-Brazilian.json" }
    sPaginationType: "full_numbers"
    bProcessing: true
    bServerSide: true
    sAjaxSource: $('#connections_table').data('source')
