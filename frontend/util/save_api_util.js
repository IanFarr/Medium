export const fetchSave = saveId => (
  $.ajax({
    method: 'GET',
    url: `api/saves/${saveId}`
  })
)

export const createSave = save => (
  $.ajax({
    method: 'POST',
    url: 'api/saves',
    data: { save }
  })
)

export const deleteSave = saveId => (
  $.ajax({
    url: `/api/saves/${saveId}/`,
    method: 'DELETE'
  })
)