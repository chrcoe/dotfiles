using yubikey on a new machine
==============================

generally, the steps are:

1. import public key `gpg --import path/to/public/key.asc` (trying to keep this off the
   keyservers going forward ... old keys are there still)
2. insert card and run `gpg --card-status`
3. then verify the key shows up with `gpg -K`
4. you will likely need to set the pinentry program depending on env.  This can be done by
   copying `gpg-agent.conf` to `$GNUPGHOME` and edit the pinentry-program line to match whatever it should
   be for your system.
5. setup general gpg config options by copying `gpg.conf` to `$GNUPGHOME`.

at this point, you should be able to Decrypt/Sign/Auth using the yubikey.
