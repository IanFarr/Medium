export const fetchLists = () => {
  return (
    $.ajax({
      method: 'GET',
      url: 'api/lists'
    })
  )
}

export const fetchList = listId => (
  $.ajax({
    method: 'GET',
    url: `api/lists/${listId}`
  })
)

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