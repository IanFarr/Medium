export const createList = list => (
  $.ajax({
    method: 'POST',
    url: 'api/lists',
    data: { list }
  })
)

export const deleteList = listId => (
  $.ajax({
    url: `/api/lists/${listId}/`,
    method: 'DELETE'
  })
)