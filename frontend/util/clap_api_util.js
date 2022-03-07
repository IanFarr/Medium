export const fetchClap = clapId => (
  $.ajax({
    method: 'GET',
    url: `api/claps/${clapId}`
  })
)

export const createClap = clap => (
  $.ajax({
    method: 'POST',
    url: 'api/claps',
    data: { clap }
  })
)

export const deleteClap = clapId => (
  $.ajax({
    url: `/api/claps/${clapId}/`,
    method: 'DELETE'
  })
)