//
//  Quotes.swift
//  AwakenMe
//
//  Created by ForTheImam on 3/6/25.
//

import Foundation

var favoriteQuoteList: [Quotes] = []

let quotesList = [
    
    // spiritual --------------------------------------------------------------
    Quotes(type: .spiritual,
           quote: "A person’s intellect becomes apparent through his dealings, and a man’s character is known by the way he exercises authority.",
           author: "Imam Ali (AS)",
           shortDescription: "Wisdom in dealing with others."),
    
    Quotes(type: .spiritual,
           quote: "Surely, hearts find peace in the remembrance of Allah.",
           author: "Qur'an (13:28)",
           shortDescription: "Inner peace through God's remembrance."),
    
    Quotes(type: .spiritual,
           quote: "The best way to defeat someone is to be better than him in morals and ethics.",
           author: "Imam Ali (AS)",
           shortDescription: "Overcoming others through good character."),
    
    Quotes(type: .spiritual,
           quote: "He who has a thousand friends has not a friend to spare, and he who has one enemy will meet him everywhere.",
           author: "Imam Ali (AS)",
           shortDescription: "The value of friendship and avoiding enmity."),
    
    Quotes(type: .spiritual,
           quote: "Beware of being merciless, for one who shows no mercy will not be shown mercy.",
           author: "Imam Jafar al-Sadiq (AS)",
           shortDescription: "The importance of mercy."),
    
    Quotes(type: .spiritual,
           quote: "With God all things are possible.",
           author: "Matthew 19:26",
           shortDescription: "Faith enables everything."),
    
    Quotes(type: .spiritual,
           quote: "Faith does not make things easy, it makes them possible.",
           author: "Luke 1:37",
           shortDescription: "Faith helps overcome challenges."),
    
    Quotes(type: .spiritual,
           quote: "Do unto others as you would have them do unto you.",
           author: "Luke 6:31",
           shortDescription: "The golden rule of kindness."),
    
    Quotes(type: .spiritual,
           quote: "When meditation is mastered, the mind is unwavering like the flame of a lamp in a windless place.",
           author: "Bhagavad Gita (6:19)",
           shortDescription: "The power of meditation."),
    
    Quotes(type: .spiritual,
           quote: "Do your duty without expecting rewards.",
           author: "Bhagavad Gita (2:47)",
           shortDescription: "Selfless duty."),
    
    Quotes(type: .spiritual,
           quote: "Peace comes from within. Do not seek it without.",
           author: "Buddha",
           shortDescription: "Inner peace is self-created."),
    
    Quotes(type: .spiritual,
           quote: "All that we are is the result of what we have thought.",
           author: "Buddha",
           shortDescription: "Our thoughts shape our reality."),
    
    Quotes(type: .spiritual,
           quote: "The soul of man is the lamp of the Lord.",
           author: "Proverbs 20:27",
           shortDescription: "The soul’s connection to God."),
    
    Quotes(type: .spiritual,
           quote: "Do not be wise in your own eyes; fear the Lord and shun evil.",
           author: "Proverbs 3:7",
           shortDescription: "True wisdom is humility."),
    
    Quotes(type: .spiritual,
           quote: "When I let go of what I am, I become what I might be.",
           author: "Lao Tzu",
           shortDescription: "Growth through detachment."),
    
    Quotes(type: .spiritual,
           quote: "A journey of a thousand miles begins with a single step.",
           author: "Lao Tzu",
           shortDescription: "Every great achievement starts small."),
    
    // motivational --------------------------------------------------------------
    Quotes(type: .motivational,
           quote: "Success is not final, failure is not fatal: it is the courage to continue that counts.",
           author: "Winston Churchill",
           shortDescription: "Persistence leads to success."),
    
    Quotes(type: .motivational,
           quote: "Believe you can and you're halfway there.",
           author: "Theodore Roosevelt",
           shortDescription: "Belief is key to success."),
    
    Quotes(type: .motivational,
           quote: "Doubt kills more dreams than failure ever will.",
           author: "Suzy Kassem",
           shortDescription: "Overcome doubt to succeed."),
    
    Quotes(type: .motivational,
           quote: "The only way to do great work is to love what you do.",
           author: "Steve Jobs",
           shortDescription: "Passion fuels excellence."),
    
    Quotes(type: .motivational,
           quote: "Do not lose hope, nor be sad.",
           author: "Qur'an (3:139)",
           shortDescription: "Stay hopeful and strong."),

    Quotes(type: .motivational,
           quote: "Act as if what you do makes a difference. It does.",
           author: "William James",
           shortDescription: "Your actions matter."),

    Quotes(type: .motivational,
           quote: "The best way to predict the future is to create it.",
           author: "Peter Drucker",
           shortDescription: "Shape your own future."),

    Quotes(type: .motivational,
           quote: "Difficulties in life are intended to make us better, not bitter.",
           author: "Dan Reeves",
           shortDescription: "Grow through challenges."),

    Quotes(type: .motivational,
           quote: "Success is not final, failure is not fatal: It is the courage to continue that counts.",
           author: "Winston Churchill",
           shortDescription: "Keep going despite failures."),

    Quotes(type: .motivational,
           quote: "Verily, with hardship comes ease.",
           author: "Qur'an (94:6)",
           shortDescription: "Ease follows difficulties."),

    Quotes(type: .motivational,
           quote: "You are never too old to set another goal or to dream a new dream.",
           author: "C.S. Lewis",
           shortDescription: "It's never too late to start."),

    Quotes(type: .motivational,
           quote: "Opportunities don’t happen, you create them.",
           author: "Chris Grosser",
           shortDescription: "Make your own opportunities."),

    Quotes(type: .motivational,
           quote: "Hardships often prepare ordinary people for an extraordinary destiny.",
           author: "C.S. Lewis",
           shortDescription: "Struggles lead to greatness."),

    Quotes(type: .motivational,
           quote: "A river cuts through rock not because of its power, but because of its persistence.",
           author: "James Watkins",
           shortDescription: "Persistence leads to success."),

    
    // gratitude --------------------------------------------------------------
    
    Quotes(type: .gratitude,
           quote: "Gratitude turns what we have into enough.",
           author: "Melody Beattie",
           shortDescription: "Contentment through gratitude."),

    Quotes(type: .gratitude,
           quote: "When you arise in the morning, think of what a precious privilege it is to be alive—to breathe, to think, to enjoy, to love.",
           author: "Marcus Aurelius",
           shortDescription: "Appreciating life’s gift."),

    Quotes(type: .gratitude,
           quote: "The more you practice gratitude, the more you see how much there is to be grateful for.",
           author: "Oprah Winfrey",
           shortDescription: "Gratitude reveals abundance."),

    Quotes(type: .gratitude,
           quote: "He is not a wise man who does not see by his own sight and feel by his own heart.",
           author: "Imam Ali (AS)",
           shortDescription: "True wisdom includes gratitude."),

    Quotes(type: .gratitude,
           quote: "Give thanks for a little, and you will find a lot.",
           author: "Hausa Proverb",
           shortDescription: "Gratitude multiplies blessings."),

    Quotes(type: .gratitude,
           quote: "Silent gratitude isn’t much use to anyone.",
           author: "G.B. Stern",
           shortDescription: "Express your thankfulness."),

    Quotes(type: .gratitude,
           quote: "Let us be grateful to the people who make us happy; they are the charming gardeners who make our souls blossom.",
           author: "Marcel Proust",
           shortDescription: "Appreciating those who uplift us."),

    Quotes(type: .gratitude,
           quote: "Wear gratitude like a cloak, and it will feed every corner of your life.",
           author: "Rumi",
           shortDescription: "Gratitude nourishes the soul."),

    Quotes(type: .gratitude,
           quote: "Feeling gratitude and not expressing it is like wrapping a present and not giving it.",
           author: "William Arthur Ward",
           shortDescription: "Gratitude should be shared."),
    
    // knowledge --------------------------------------------------------------
    
    Quotes(type: .knowledge,
           quote: "The seeking of knowledge is obligatory upon every Muslim.",
           author: "Prophet Muhammad (PBUH)",
           shortDescription: "Knowledge is a duty for all."),

    Quotes(type: .knowledge,
           quote: "Knowledge is not what is memorized. Knowledge is what benefits.",
           author: "Imam Al-Shafi’i",
           shortDescription: "True knowledge is useful."),

    Quotes(type: .knowledge,
           quote: "A fool thinks himself to be wise, but a wise man knows himself to be a fool.",
           author: "William Shakespeare",
           shortDescription: "Wisdom lies in humility."),

    Quotes(type: .knowledge,
           quote: "Read! In the name of your Lord who created.",
           author: "Qur'an (96:1)",
           shortDescription: "The first revelation encourages learning."),

    Quotes(type: .knowledge,
           quote: "The greatest enemy of knowledge is not ignorance, it is the illusion of knowledge.",
           author: "Stephen Hawking",
           shortDescription: "Beware of false knowledge."),

    Quotes(type: .knowledge,
           quote: "The ink of the scholar is more sacred than the blood of the martyr.",
           author: "Prophet Muhammad (PBUH)",
           shortDescription: "The value of scholarly work."),

    Quotes(type: .knowledge,
           quote: "An investment in knowledge pays the best interest.",
           author: "Benjamin Franklin",
           shortDescription: "Knowledge is the best investment."),

    Quotes(type: .knowledge,
           quote: "Knowledge speaks, but wisdom listens.",
           author: "Jimi Hendrix",
           shortDescription: "Wisdom comes from listening."),

    Quotes(type: .knowledge,
           quote: "Education is the most powerful weapon which you can use to change the world.",
           author: "Nelson Mandela",
           shortDescription: "Education brings change."),

    Quotes(type: .knowledge,
           quote: "To acquire knowledge, one must study; but to acquire wisdom, one must observe.",
           author: "Marilyn Vos Savant",
           shortDescription: "Observation leads to wisdom."),
    
    // wisdom --------------------------------------------------------------
    
    Quotes(type: .wisdom,
           quote: "A wise man first thinks and then speaks, and a fool speaks first and then thinks.",
           author: "Imam Ali (AS)",
           shortDescription: "Think before you speak."),

    Quotes(type: .wisdom,
           quote: "Knowing yourself is the beginning of all wisdom.",
           author: "Aristotle",
           shortDescription: "Self-awareness leads to wisdom."),

    Quotes(type: .wisdom,
           quote: "Silence is the best reply to a fool.",
           author: "Imam Ali (AS)",
           shortDescription: "Silence is wisdom in certain situations."),

    Quotes(type: .wisdom,
           quote: "Wisdom begins in wonder.",
           author: "Socrates",
           shortDescription: "Curiosity leads to wisdom."),

    Quotes(type: .wisdom,
           quote: "Do not dwell in the past, do not dream of the future, concentrate the mind on the present moment.",
           author: "Buddha",
           shortDescription: "Live wisely in the present."),

    Quotes(type: .wisdom,
           quote: "The only true wisdom is in knowing you know nothing.",
           author: "Socrates",
           shortDescription: "Wisdom comes with humility."),

    Quotes(type: .wisdom,
           quote: "It is not the man who has too little, but the man who craves more, that is poor.",
           author: "Seneca",
           shortDescription: "Wisdom in contentment."),

    Quotes(type: .wisdom,
           quote: "Wise men speak because they have something to say; fools because they have to say something.",
           author: "Plato",
           shortDescription: "Speak with purpose."),

    Quotes(type: .wisdom,
           quote: "Patience is the companion of wisdom.",
           author: "Saint Augustine",
           shortDescription: "Wisdom requires patience."),

    Quotes(type: .wisdom,
           quote: "A moment of patience in a moment of anger saves a thousand moments of regret.",
           author: "Ali ibn Abi Talib (AS)",
           shortDescription: "Wisdom in controlling anger.")


]


class Quotes {
    
    enum `Type`: String{
        case spiritual       = "Spiritual"
        case motivational   = "Motivational"
        case gratitude      = "gratitude"
        case knowledge      = "knowledge"
        case wisdom         = "wisdom"
    }
    
    var type: Type
    var quote: String
    var author: String
    var length: Int
    var shortDescription: String
    
    init(type: Type, quote: String, author: String, shortDescription: String){
        
        self.type = type
        self.quote = quote
        self.author = author
        self.shortDescription = shortDescription
        length = quote.count
        
    }

}
