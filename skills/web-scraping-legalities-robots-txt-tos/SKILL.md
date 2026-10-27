---
name: web-scraping-legalities-robots-txt-tos
description: Use this skill when designing web scrapers, respecting robots.txt, adhering to terms of service, and navigating legal boundaries (hiQ v. LinkedIn).
---
# Web Scraping Legalities, Robots.txt & Terms of Service

## When to use
Use this skill when developing automated web spiders, gathering dataset training corpora, harvesting competitor pricing data, or indexing public web content.

## Core principles
- **Public Data vs. Authenticated Data (hiQ v. LinkedIn)**: Scraping publicly available data that does not require a login generally does not violate the Computer Fraud and Abuse Act (CFAA), but can still violate state contract law (Terms of Service) or copyright law.
- **Robots.txt is an Ethical & Normative Standard**: While not a formal criminal statute, ignoring `robots.txt` disallow directives demonstrates bad faith and can support civil trespass to chattels claims if servers are burdened.
- **The Trespass to Chattels Threshold**: Sending aggressive scraping requests that degrade server performance, spike infrastructure bills, or cause denial of service constitutes illegal property interference.
- **Copyright and Fair Use in Data Scraping**: Scraping factual data (stock prices, phone numbers) is permissible; scraping creative expression (full articles, artwork, novels) for commercial redistribution is copyright infringement.

## Step-by-step workflow
1. **Inspect `robots.txt`**: Query `https://example.com/robots.txt` to identify disallowed paths and crawl-delay directives.
2. **Review site Terms of Service (ToS)**: Check for explicit automated access prohibitions, especially if scraping behind an authenticated session.
3. **Implement polite rate limiting & concurrency caps**:
   - Set maximum 1 request per second per domain.
   - Use randomized backoff delays.
4. **Identify your bot transparently**: Set a descriptive `User-Agent` header including a contact email or URL explaining the scraper's purpose.
5. **Cache retrieved pages locally**: Never scrape the identical page twice in a short window; cache responses to minimize target server load.

## Behavioral guidelines & dialogue examples
- **Ethical Scraper Headers & Rate Limiting (Python)**:
  ```python
  import time
  import urllib.robotparser
  import requests
  
  # 1. Verify robots.txt permission
  rp = urllib.robotparser.RobotFileParser()
  rp.set_url("https://example.com/robots.txt")
  rp.read()
  
  can_fetch = rp.can_fetch("ResearchBot/1.0", "https://example.com/data")
  if not can_fetch:
      raise PermissionError("Path disallowed by robots.txt")
      
  # 2. Transparent User-Agent and polite crawl
  headers = {
      "User-Agent": "ResearchBot/1.0 (+https://example.org/bot; bot@example.org)"
  }
  response = requests.get("https://example.com/data", headers=headers, timeout=10)
  time.sleep(2.0)  # Polite crawl delay
  ```

## Common mistakes & pitfalls
- Firing 50 concurrent headless browser instances against a small independent website, crashing their database.
- Bypassing login paywalls, CAPTCHAs, or authentication barriers to scrape gated content (direct CFAA violation).
- Forging mobile browser User-Agent strings while hammering APIs at 100 RPS.

## Verification checklist
- [ ] `robots.txt` permissions are inspected and respected.
- [ ] Scraper User-Agent clearly identifies the organization and provides a contact email.
- [ ] Concurrency and rate limits protect target servers from performance degradation.
- [ ] Gated, authenticated, and copyrighted creative content is excluded from automated harvesting.

## Related skills
- intellectual-property-copyright-code-fair-use
- consulting-qualified-legal-counsel-boundaries
- safe-handling-of-personally-identifiable-information
- application-and-api-security
