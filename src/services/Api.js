import axios from 'axios'

export default () => {
  return axios.create({
    // baseURL: 'https://ense470.herokuapp.com/'
    baseURL: 'http://localhost:8080'
    //baseURL: process.env.BASE_URL || 'http://localhost:8080'
  })
}

/*
to call this method you would use:
AuthenticationService.register({
    email: 'testing@gmail.com',
    password: '12345'
})
*/
