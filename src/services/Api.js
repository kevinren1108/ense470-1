import axios from 'axios'

export default () => {
  return axios.create({
    baseURL: (process.env.DB_HOST || 'localhost') + ':' + (process.env.PORT || 8080)
  })
}

/*
to call this method you would use:
AuthenticationService.register({
    email: 'testing@gmail.com',
    password: '12345'
})
*/
