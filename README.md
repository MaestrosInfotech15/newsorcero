# README #

This README would normally document whatever steps are necessary to get your application up and running.

# Server Configuration #

#### File: /etc/hosts #### 
127.0.0.1 sorcero.dev
127.0.0.1 parth.sorcero.dev
127.0.0.1 parthujenia1.sorcero.dev
127.0.0.1 parthujenia2.sorcero.dev
127.0.0.1 *.sorcero.dev


#### File: <server_folder>/etc/extra/httpd-vhosts.conf ####
<VirtualHost sorcero.dev:80>
    DocumentRoot "/opt/lampp/htdocs/sorcero"
    ServerName www.sorcero.dev
    ServerAlias *.sorcero.dev
</VirtualHost>

# /Server Configuration #