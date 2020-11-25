# Cloudflare DDNS
[Github]("https://github.com/timothymiller/cloudflare-ddns")

## Setup
1. Create an API Token in Cloudflare with "Edit DNS" access.
2. Run `cp config-example.json config.json`
3. Edit *config.json* with personal values.
> "api_token": "The secret token created in step 1."
"zone_id": "The ID of the zone that will get the records. From your dashboard click into the zone. Under the overview tab, scroll down and the zone ID is listed in the right rail"
"subdomains": "Array of subdomains you want to update the A & where applicable, AAAA records. IMPORTANT! Only write subdomain name. Do not include the base domain name. (e.g. foo or an empty string to update the base domain)"
"proxied": false (defaults to false. Make it true if you want CDN/SSL benefits from cloudflare. This usually disables SSH)
5. Update path of config file in docker-compose yaml if necessary.
6. Run `docker-compose up -d`