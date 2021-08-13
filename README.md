# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 2.5.3
* configuracion s3

    1. amazon:
        service: S3
        access_key_id: <%= Rails.application.credentials.dig(:aws, :access_key_id) %>
        secret_access_key: <%= Rails.application.credentials.dig(:aws, :secret_access_key) %>
        region: us-east-2
        bucket: desafio.games.s.herrera

    2. para poder cargar los archivos hay que configurar la gema cors
        gem "aws-sdk-s3", require: false
        gem 'rack-cors'
    
    3. Activar uso compartido de recurso entre origenes desde la web de aws
        para poder pasar del error seguridad

        [
    {
        "AllowedHeaders": [
            "*"
        ],
        "AllowedMethods": [
            "HEAD",
            "GET",
            "PUT",
            "POST",
            "DELETE"
        ],
        "AllowedOrigins": [
            "*"
        ],
        "ExposeHeaders": [
            "ETag",
            "x-amz-meta-custom-header"
        ]
    }
]
    