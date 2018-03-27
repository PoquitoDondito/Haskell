module Test00 where

import System.Random

wisdom :: (Integer -> IO ()) -> IO ()
wisdom x = do
  num <- randomRIO (0, 19) :: IO (Integer)
  x num

ofRIm14AndThisIsDeep :: Integer -> IO ()
ofRIm14AndThisIsDeep x =
  case x of
    0 -> putStrLn ("Suicidal people are just angels that want to go home")
    1 -> putStrLn ("First you learn to read. Then you read to learn")
    2 -> putStrLn ("Remember when we used to say \"brb\" all the time when we were online? We Don't say it anymore. We no longer leave. We live here now.")
    3 -> putStrLn ("Music is the only medicine when there's no cure for the noise my mind drowns in.")
    4 -> putStrLn ("I like Twenty One Pilots Because they sound happy but the lyrics are depressing. Like me, I sound happy but if you actually listen I'm pretty broken")
    5 -> putStrLn ("We used to laugh at comedians and listen to politicians. Now we laugh at politicians and listen to comedians.")
    6 -> putStrLn ("When you clean out a vacuum cleaner. You become the vacuum cleaner.")
    7 -> putStrLn ("People think it's fun and cool to be \"woke\" lol it's actually pretty shitty and frustrating being conscious in an unconscious society.")
    8 -> putStrLn ("Curiosity didn't kill the cat, the cat committed suicide after seeing reality.")
    9 -> putStrLn ("Almost all armed conflict in the history of the world came about because opposing sides believed different things to be true.")
    10 -> putStrLn ("\"How do you kill yourself without actually dying...?\" \"you love someone who doesn't love you back.\"")
    11 -> putStrLn ("They say a cigarette takes 7 minutes off your life, but so does 7 minutes.")
    12 -> putStrLn ("I've been asked if my baby is a girl or a boy, but never if he/she is a person.")
    13 -> putStrLn ("There's a reason the rear view mirror is so small, and the windshield is so big. Where you're headed is much more important than what you've left behind")
    14 -> putStrLn ("I finally realized it. People are prisoners of their phones. That's why they are called Cell Phones.")
    15 -> putStrLn ("That awkward moment when your sarcasm is so advanced, people actually think you're stupid")
    16 -> putStrLn ("if you kill the killer....the....number of killers in the world .......remains the same")
    17 -> putStrLn ("Parallel lines have a lot in common, but they never meet. Ever. You might think that's sad. But every other pair of lines meets once and then drifts apart forever. Which is pretty sad too.")
    18 -> putStrLn ("WARNING: Reflections in this mirror may be distorted by socially constructed ideas of 'beauty'")
    19 -> putStrLn ("Life asked death, \"Death, why do people love me, but hate you?\" Death responded, \"Because you are a beautiful lie, And I am a painful truth.\"")

ofJadenSmith :: Integer -> IO ()
ofJadenSmith x =
  case x of
    0 -> putStrLn ("If I Had A Nickel For Every Time I've Cried In The Back Of An Uber, I Would Have Another Pair Of Yeezy's. -Jaden Smith")
    1 -> putStrLn ("If There Is Bread Winners, There Is Bread Losers. But You Can't Toast What Isn't Real. #BreadPeopleLives -Jaden Smith")
    2 -> putStrLn ("That Moment When Your Wearing A Dress With No Pants And You Swerve Way To Hard. -Jaden Smith")
    3 -> putStrLn ("That Moment When You, \"Whip\" So Hard, You Tear A Ligament In Your Neck. -Jaden Smith")
    4 -> putStrLn ("I Saw Owen Wilson One Time From A Distance And We Just Stared At Each Other, Then His Car Drove Off. -Jaden Smith")
    5 -> putStrLn ("How Can Mirrors Be Real If Our Eyes Aren't Real -Jaden Smith")
    6 -> putStrLn ("You Think You Get It. YOU DONT YOU DONT YOU DONT!!!!!!!")
    7 -> putStrLn ("You Can Discover Everything You Need To Know About Everything By Looking At Your Hands. -Jaden Smith")
    8 -> putStrLn ("Kanye West Is The Greatest Dancer Of Our Generation. -Jaden Smith")
    9 -> putStrLn ("Water In The Eyes And Alcohol In The Eyes Are Pretty Much The Same I Know This From First Hand Experience. -Jaden Smith")
    10 -> putStrLn ("The More Time You Spend Awake The More Time You Spend Asleep. -Jaden Smith")
    11 -> putStrLn ("Relationships Are Messed Up But Your Face Isn't. -Jaden Smith")
    12 -> putStrLn ("That Moment When Peeing Feels So Good You Start Crying. -Jaden Smith")
    13 -> putStrLn ("There Is No Dress -Jaden Smith")
    14 -> putStrLn ("HardWork Dedication Until There's Peace And Non Poverty In Every Nation, And I Isn't Patient. || -Jaden Smith")
    15 -> putStrLn ("Chemtrails. -Jaden Smith")
    16 -> putStrLn ("Whenever You Disagree With Somebody Just Remember The Dress And Accept That You Guys Are SEEING Two Different Things. -Jaden Smith")
    17 -> putStrLn ("\"Jaden, Where Can We Expect You To Be In 5 Years?\"        \" Gone.\" -Jaden Smith")
    18 -> putStrLn ("If A Cup Cake Falls From A Tree How Far Away Will It Be From Down. #Jupiter -Jaden Smith")
    19 -> putStrLn ("All Of Your Idols Are Going To Start Writing Their Own Articles, And These Uninformed \"Journalists\" Will Become Obsolete. -Jaden Smith")
    _ -> putStrLn ("Wack.")
