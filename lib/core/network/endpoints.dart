const String baseUrl = 'http://localhost:3000';

//User/Auth

const String loginWithMobileNumber = '/user/auth/v1/login'; //post
const String loginWithSocial = '/user/auth/v1/login_social'; //get
const String register = '/user/auth/v1/register'; //registe
const String registerSocial = '/user/auth/v1/register_social';
const String renewToken = '/user/auth/v1/renew_token';
const String checkMobileNumber = '/user/auth/v1/check_number';
const String checkMobileNumberForgetPassord =
    '/user/auth/v1/forget_password_check_number';

const String getUser = '/user/v1/';
const String updateUser = '/user/v1';
const String updatePassword = '/user/v1/update_password';
const String uploadImage = '/user/v1/uploadImage';
