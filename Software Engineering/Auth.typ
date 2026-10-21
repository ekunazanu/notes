#import "../template.typ": template
#show: template

Authentication is the authorization 

== Security Policies

Cookies store. aaa `httpOnly` so cannot be read by JavaScript code, and `secureCookie` for transfer over only TLS HTTPS.

- CORS --- Cross Origin

== Attack Types

- *CSRF* --- Cross Site Request Forgery.
- *XSS* --- Cross Site Scripting. Attacker runs code on the host. Eg. Entering `<script>Malicious code</script>` in an input form. If the site loads the data from the saved data in the form, the script is executed from .
- *SQL Injection* --- Somewhat, similar to XSS attacks, it involves . Eg. The backend code might have ; then the query that runs is `SELECT FROM `.

== Patterns

- Session ID ---
- CSRF Token ---
- Refresh Token --- Longer, must be more secure
- Access Token --- Short period.
- OAuth ---
- SSO ---

- JWT --- Actual token. Signed.
