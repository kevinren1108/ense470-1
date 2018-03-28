import axios from 'axios'

export default () => {
  return axios.create({
    baseURL: `http://localhost:5432/`
  })
}

/*
to call this method you would use:
AuthenticationService.register({
    email: 'testing@gmail.com',
    password: '12345'
})
*/
