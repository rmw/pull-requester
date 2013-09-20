# Rails 4 Upgrade Notes/Steps
* Kill the vendor directory.  Should be totally safe.
* delete Gemfile.lock
* update the gems in the gem file AND update rails to 4.0.0
* Add a config.secret_key with a LONG hex guid
  * You might want to do this after you attempt...and FAIL...to start the app
*  remove 'config.whiny_nils' from all environment files
* follow this config.eager_load pattern:
  * config.eager_load is set to nil. Please update your config/environments/*.rb files accordingly:
  * development - set it to false
  * test - set it to false (unless you use a tool that preloads your test environment)
  * production - set it to true
* As a quick fix, add the "protected_attributes" gem to the GEM file.  There's a new way to do this now.
* Pull the gems from the 'assets' group into the standard gem list
