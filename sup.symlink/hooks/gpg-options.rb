# gpg-options
# --------
# File: /home/user/.sup/hooks/gpg-options.rb
# Runs before gpg is called, allowing you to modify the options (most
       # likely you would want to add something to certain commands, like
       # {:always_trust => true} to encrypting a message, but who knows).

# Variables:
    # operation: what operation will be done ("sign", "encrypt", "decrypt" or "verify")
    # options: a dictionary of values to be passed to GPGME

    # Return value: a dictionary to be passed to GPGME

if operation == "encrypt"
    options.merge!({:always_trust => true})
end

options
