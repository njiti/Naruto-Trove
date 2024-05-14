# naruto_trove

This is a Flutter app aimed at taking advantage of Dattebayo's comprehensive API on Naruto's Universe at [Dattebayo](https://api-dattebayo.vercel.app/docs#clans).

## Project Structure (Rough outline).

Dattebayo provides its data in eight different collections
      - Characters
      - Clans
      - Villages
      - Kekei-Genkai
      - Tailed-Beasts
      - Teams
      - Akatsuki
      - kara
With each collection offering the option of getting the whole data or by id.
The main constant thing being the characters who are listed as IDs everywhere. Meaning that when listing characters in a normal information app that goes from village to teams within the village to the characters. You have to refer to different endpoints in order to translate the ids to actual words allowing for users to easily understand words instead of just ids.

I envision this app as a way to explore the Naruto world. where enthusiasts can start by simple things to more complex information.

How do I want my app to be structured :
  - Start by learning the different Villages existing in the Naruto universe.
  - Then get to know the different clans that exist within the different villages.
  - 
