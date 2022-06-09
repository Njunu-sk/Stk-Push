# STK PUSH

This is a simple implementation of M-pesa Stk push in Ruby.

* This piece of code is extracted from the [Mpesa Gem](https://github.com/mboya/mpesa_stk).


* Clone the repo 

```bash 
bundle install 
```

* Add your env configuration 

```bash 
key="****************************"
secret="*************"
base_url="https://sandbox.safaricom.co.ke"
token_generator_url="/oauth/v1/generate?grant_type=client_credentials"
process_request_url="/mpesa/stkpush/v1/processrequest"
callback_url="******************************"
business_short_code="*******"
business_passkey="***********************************"

```

* Start the server

```bash 
rails s
```

* Check out this [repo](https://github.com/mboya/stk) for a complete implementation of the gem
