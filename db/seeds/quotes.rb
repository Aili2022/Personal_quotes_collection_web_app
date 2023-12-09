# 1. Socrates
Quote.create!(
  text: "An unexamined life is not worth living.",
  is_public: true,
  comment: "study hard, work hard, play harder.",
  user_id: 1, 
  philosopher_id: 1,
)

Quote.create!(
  text: "True wisdom comes to each of us when we realize how little we understand about life, ourselves, and the world.",
  is_public: true,
  user_id: 1, 
  philosopher_id: 1,
)

Quote.create!(
  text: "I know that I am intelligent because I know that I know nothing.",
  is_public: true,
  user_id: 1,  
  philosopher_id: 1, 
)

# 2. Plato
Quote.create!(
  text: "We can easily forgive a child who is afraid of the dark; the real tragedy of life is when men are afraid of the light.",
  is_public: true,
  comment: "life like this.",
  user_id: 2,  
  philosopher_id: 2,
)

Quote.create!(
  text: "The measure of a man is what he does with power.",
  is_public: true,
  comment: "Or how he treats others",
  user_id: 2, 
  philosopher_id: 2, 
)

Quote.create!(
  text: "One of the penalties for refusing to participate in politics is that you end up being governed by your inferiors.",
  is_public: true,
  user_id: 2, 
  philosopher_id: 2,
)

# 3. Aristotle
Quote.create!(
  text: "The more you know, the more you realize you don't know.",
  is_public: true,
  comment:"Nver stop study.",
  user_id: 3, 
  philosopher_id: 3,
)

Quote.create!(
  text: "It is the mark of an educated mind to be able to entertain a thought without accepting it.",
  publication_year: 123,
  is_public: true,
  user_id: 3,  
  philosopher_id: 3,
)

Quote.create!(
  text: "Happiness is the meaning and the purpose of life, the whole aim and end of human existence.",
  publication_year: 124,
  is_public: true,
  comment: nil,
  user_id: 3, 
  philosopher_id: 3, 
)

# 4. Immanuel Kant
Quote.create!(
  text: "Two things fill the mind with ever-increasing wonder and awe, the more often and the more intensely the mind of thought is drawn to them: the starry heavens above me and the moral law within me.",
  publication_year: 200,
  is_public: true,
  user_id: 4, 
  philosopher_id: 4, 
)

Quote.create!(
  text: "Act only according to that maxim by which you can at the same time will that it should become a universal law.",
  publication_year:209,
  is_public: true,
  comment:"Very smartly said.",
  user_id: 4, 
  philosopher_id: 4,
)

Quote.create!(
  text: "Enlightenment is man's emergence from his self-imposed nonage.",
  is_public: true,
  comment: nil,
  user_id: 4,  
  philosopher_id: 4,
)

# 5. Friedrich Nietzsche
Quote.create!(
  text: "That which does not kill us makes us stronger.",
  publication_year: 222,
  is_public: true,
  user_id: 5,
  philosopher_id: 5,
)

Quote.create!(
  text: "He who fights with monsters should be careful lest he thereby become a monster. And if you gaze long enough into an abyss, the abyss will gaze back into you.",
  publication_year: 322,
  is_public: true,
  comment:"Or learn it the hard way",
  user_id: 5, 
  philosopher_id: 5,
)

Quote.create!(
  text: "In individuals, insanity is rare; but in groups, parties, nations, and epochs, it is the rule.",
  is_public: true,
  user_id: 5, 
  philosopher_id: 5,
)

# 6. Jean-Jacques Rousseau
Quote.create!(
  text: "Man is born free, and everywhere he is in chains.",
  publication_year: 345,
  is_public: true,
  comment: "Power!",
  user_id: 6, 
  philosopher_id: 6,
)

Quote.create!(
  text: "The first person who, having enclosed a plot of land, took it into his head to say this is mine and found people simple enough to believe him was the true founder of civil society.",
  publication_year: 223,
  is_public: true,
  user_id: 6, 
  philosopher_id: 6,
)

Quote.create!(
  text: "As long as several men in assembly regard themselves as a single body, they have only a single will which is concerned with their common preservation and general well-being.",
  publication_year: 444,
  is_public: true,
  user_id: 6, 
  philosopher_id: 6,
)

# 7. John Locke
Quote.create!(
  text: "The only fence against the world is a thorough knowledge of it.",
  publication_year: 1455,
  is_public: true,
  comment: "Is it true?",
  user_id: 7,
  philosopher_id: 7
)

Quote.create!(
  text: "Where there is no property, there is no injustice.",
  publication_year: 1422,
  is_public: true,
  user_id: 7,
  philosopher_id: 7
)

Quote.create!(
  text: "New opinions are always suspected, and usually opposed without any other reason but because they are not common.",
  publication_year: 233,
  is_public: true,
  user_id: 7,
  philosopher_id: 7
)

# 8. Thomas Hobbes
Quote.create!(
  text: "The condition of man... is a condition of war of everyone against everyone.",
  publication_year:445,
  is_public: true,
  user_id: 8,
  philosopher_id: 8
)

Quote.create!(
  text: "The reputation of power is power.",
  publication_year: 446,
  is_public: true,
  user_id: 8,
  philosopher_id: 8
)

Quote.create!(
  text: "The right of nature... is the liberty each man hath to use his own power as he will himself for the preservation of his own nature.",
  publication_year: 450,
  is_public: true,
  user_id: 8,
  philosopher_id: 8
)

# 9. Confucius
Quote.create!(
  text: "Our greatest glory is not in never falling, but in rising every time we fall.",
  publication_year: 2020,
  is_public: true,
  user_id: 9,
  philosopher_id: 9
)

Quote.create!(
  text: "Ignorance is the night of the mind, but a night without moon and star.",
  publication_year: 2000,
  is_public: true,
  user_id: 9,
  philosopher_id: 9
)

Quote.create!(
  text: "Real knowledge is to know the extent of one ignorance.",
  publication_year: 1900,
  is_public: true,
  user_id: 9,
  philosopher_id: 9
)

# 10. Albert Camus
Quote.create!(
  text: "Don't walk in front of me… I may not follow. Don't walk behind me… I may not lead. Walk beside me… just be my friend.",
  publication_year:1050,
  is_public: true,
  user_id: 10,
  philosopher_id: 10
)

Quote.create!(
  text: "In the depth of winter, I finally learned that there was in me an invincible summer.",
  publication_year: 1060,
  is_public: true,
  user_id: 10,
  philosopher_id: 10
)

Quote.create!(
  text: "Life is a sum of all your choices.",
  publication_year: 1070,
  is_public: true,
  user_id: 11,
  philosopher_id: 10
)