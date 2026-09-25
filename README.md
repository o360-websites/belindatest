# Noor Health Clinic — website handoff

Approved designs for the Noor Health Clinic site, ready to rebuild in WordPress / Elementor.

## Contents
All files sit in one folder. Each page is an HTML file that loads `support.js` plus the images and icons beside it — open any page in a browser (needs internet for fonts). Images are resized to max 1920px wide for web use.

## Pages
| File | Page |
|---|---|
| index.html | Home |
| about-us.html | About Us |
| memberships.html | Membership |
| primary-care.html | How We Can Help → Primary Care |
| chronic-disease-management.html | How We Can Help → Chronic Disease Management |
| remote-monitoring.html | How We Can Help → Remote Monitoring |
| patient-education.html | How We Can Help → Patient Education |
| insurance.html | Insurance |
| contact-us.html | Contact Us |
| careers.html | Careers (footer only, not in main menu) |

## Icons
- icon-1 … icon-6: client-provided
- icon-7 heart / cardiology, icon-8 book / education, icon-9 bandage / wound care
- icon-10 blood pressure monitor, icon-11 smart scale, icon-12 glucometer

## Notes for the build
- Keep all copy verbatim — it is client-approved.
- Contact and Careers forms are front-end only; wire them to a real form handler (e.g. Elementor Forms).
- "Download PDF" links on Contact Us are placeholders (`href="#"`) until the PDFs are supplied.
- Patient Education article tiles use lorem ipsum until articles are written.

---

# Design rules


Nurse Practitioner-led primary care practice. Seattle.
Approved direction: **Home Page.dc.html** (formerly "Version A"). Match it for all new pages.

## Contact (use verbatim)
- Phone: 206-984-7603 (`tel:2069847603`)
- Address: 9238 Rainier Ave S, Suite B / Seattle, WA 98118
- Email: info@noorhealthclinic.com
- Booking: https://waitwhile.com/locations/noor-health-clinic
- Services/membership: https://waitwhile.com/locations/noor-health-clinic/services

## Palette
- Page background: `#FAF7F2`; alternate band: `#F3F5F0`
- Sage sections: `linear-gradient(180deg, #EDEFE7 0%, #E4E6DB 100%)`, `#E7EDE4`
- Deep green (dark bands, headings): `#1F3A2E`, `#24382C`
- Body text: `#5E564B` / `#6B6257`; headings `#2A2621`
- Eyebrow labels: `#6E6046`, `#7A5F22`, `#3C5B49`
- Gold accent: `#A9823C`, deep `#8A6B28`
- Max 1–2 background colors per view.

## Buttons
Primary pill:
`padding: 17px 34px; border-radius: 999px; background: linear-gradient(180deg, #F0C74E 0%, #D2A83B 100%); color: #2A2621; font-weight: 500; box-shadow: 0 1px 2px rgba(122,92,38,0.3), 0 18px 34px -16px rgba(122,92,38,0.6);`
Hover: `linear-gradient(180deg, #E6B93C 0%, #BE942F 100%)`
Secondary pill: `background: rgba(252,254,250,0.92); border: 1px solid rgba(31,58,46,0.28); color: #1F3A2E;`

## Type
- Headings: **Poppins** 600 (sections), **DM Sans** 700 (membership / CTA / team)
- Body: **DM Sans** 400
- Eyebrow labels: 15–16px, uppercase, letter-spacing 0.16–0.18em, weight 500. IBM Plex Mono for the membership + book eyebrows.
- Never below 14.5px body text.
- Type scale (use only these):
  - H1 page titles + Book a Visit heading: `clamp(38px, 5.6vw, 68px)` (home hero is custom `clamp(40px, 6.4vw, 76px)`)
  - H2 main section: `clamp(32px, 4vw, 52px)`
  - H3 sub-section / in-box / prices / big phone: `clamp(28px, 3.4vw, 40px)`
  - H4 large card titles: `clamp(22px, 2.2vw, 28px)`
  - H5 small card titles: `18px`
  - H6 eyebrow labels (uppercase): `15px`
  - Paragraph (all body, bullets, fine print): `16.5px`

## Navigation
- Main menu: About Us · How We Can Help ▾ (Primary Care, Chronic Disease Management, Remote Monitoring, Patient Education) · Insurance · Membership · Contact Us · phone · Book a Visit. No Careers.
- Footer Explore: About Us, How We Can Help, Insurance, Membership, Contact Us, Careers.

## Components
- Cards: `border-radius: 22px`, `linear-gradient(180deg, #FDFDFA 0%, #F1F1EA 100%)`, 1px hairline border, soft long shadow.
- Large containers/callouts: `border-radius: 28–32px`.
- Icons: SVGs at 72px (`icon-1.svg` … `icon-6.svg` client-provided; `icon-7` heart/cardiology, `icon-8` book/education, `icon-9` bandage/wound care drawn to match).
- Provider photos: rounded squares (`border-radius: 18px`), 4px `#F7FAF4` border, side by side, never overlapping.
- Accordions (FAQ): question in a raised box, +/− circle placed directly after the question text (not pushed to the far right); answer opens flat on the section background below.
- Full-bleed photo bands with a dark green overlay for section headers; heading left-aligned to the 1060px content gutter.

## Layout rules
- Content max-width 1060px (900px for centered text sections).
- Grids must stay symmetrical at every width — use explicit tracks, not `auto-fit`, so no row is ever left with one orphaned card (4-up → 2×2 → 1; 6-up → 3 → 2 → 1). Breakpoints: 861px, 440px.
- Header collapses to a hamburger below 1120px (`.nav-burger` / `.nav-desktop`).
- Footer: three centered columns.

## Working notes
- Do not rewrite client copy. Format only.
- I cannot generate photographic images — ask for real assets or use placeholders.
- Deliverables are usually packaged as standalone HTML (`super_inline_html` after inserting the `__bundler_thumbnail` template).
- Client reviews as PNG screenshots first, then the HTML.
