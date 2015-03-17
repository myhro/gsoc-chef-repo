# Chef recipes for GSOC 2015 warmup

Apply the recipes:

`sudo chef-solo -c solo.rb -j attributes.json`

**WARNING**: this will overwrite your `/etc/hosts`.

Test it out:

`wget -q -O - http://mywebsite.localhost/`
