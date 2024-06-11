# PX_FFLs
Original source: https://www.atf.gov/firearms/listing-federal-firearms-licensees
Methods: Using ATF's Federal Firearms Listings for January of the years 2018, 2021, and 2024, I first combed through the information to understand how AAFES and other Military 
Exchanges were referred to in the ATF data. I concluded the best key terms to search for were "AAFES", "ARMY & AIR FORCE EXCHANGE SERVICE", "MARINE CORPS", "AIR FORCE", and "COAST GUARD".
Using R, I searched through the license names of the FFLs to see if they contained any of these key terms which would identify an FFL associated with a Military Exchange. I replicated 
this search in each dataset varying by year, accounting for changing variable names across each iteration of the Federal Firearms Listing.
The Data: These data represent those FFLs which passed through the filtering process intended to filter the data down to strictly FFLs that are Military Exchanges.
