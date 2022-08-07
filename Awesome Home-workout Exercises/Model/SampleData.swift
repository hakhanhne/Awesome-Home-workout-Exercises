/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Tran Nguyen Ha Khanh
  ID: s3877707
  Created  date: 26/07/2022
  Last modified: 06/08/2022
*/
//
//  SampleData.swift
//  Awesome Home-workout Exercises
//

import Foundation


//sample data: authors
var pamela_reif: Author = Author(name: "Pamela Reif", authorImg: "https://p77-va.tiktokcdn.com/tos-maliva-avt-0068/4e3b640f1222badc6c12664c33145a1c~c5_720x720.jpeg", youtube: "https://www.youtube.com/c/PamelaRf1")
var chloe_ting: Author = Author(name: "Chloe Ting", authorImg: "https://biographyninja.com/wp-content/uploads/2021/04/does-chloe-ting-work-for-guys.jpg", youtube: "https://www.youtube.com/c/ChloeTing")
var madfit: Author = Author(name: "MadFit", authorImg: "https://yt3.ggpht.com/qIZlFAxnyGZ6NI0Vlk7l1hiYU6OcrmthrU0y9xvh6goHl5EO4sdsPxUzhBvuXuSonxqYYdqVKTU=s176-c-k-c0x00ffffff-no-rj", youtube: "https://www.youtube.com/c/MadFit")
var growingannanas: Author = Author(name: "growingannanas", authorImg: "https://yt3.ggpht.com/ytc/AMLnZu-L2l-gGiIXksMxtsq2jf4V8MeZ75cwOf30vXzj0g=s176-c-k-c0x00ffffff-no-rj", youtube: "https://www.youtube.com/c/growingannanas")
var caroline_girvan: Author = Author(name: "Caroline Girvan", authorImg: "https://yt3.ggpht.com/Y-D_T2ypbS0TZBcNO9I6DzsLY0pKBgtlsOpjZ5TXL2tzum5cZz8wIeQIo-cEvXZaAPulCmCADQ=s176-c-k-c0x00ffffff-no-rj", youtube: "https://www.youtube.com/c/CarolineGirvan")


//sample data: exercises list (12 exercises)
var exercises: [Exercise] =
[
    Exercise(
        author: pamela_reif,
        title: "15 MIN ABS + WEIGHT, Circuit Style, Weight Lifting inspired, for extra strong abs I Pamela Reif",
        description: """
        For super strong ab lines! Includes classical gym exercises & is weight lifting inspired ♥︎ You need a weight or a heavy bottle of water & a something elevated (bench or chair) / Werbung

        Bodyweight vs. Weights:
        ▸ I love & do both. I think the combination of both types gives the best results!
        ▸ You can grow stronger and bigger muscles with Weight Training. You basically handle more weight during the exercise, than you usually carry around on your body all day. That’s why your body needs to adapt and create „extra“ muscle fibers, that you usually don’t need. If you stop seeing progress with bodyweight training, you should consider getting some dumbbells.
        ▸ Those exercises also ask for a lot of stability (e.g. the Ab Slide), making sure we train our entire torso, waist, back & arms.
        ▸ However, weight exercises usually don’t burn so much for me. I like to combine them with bodyweight movements so I can really target the little muscles, exhaust them and train until they burn like fireeee.
         
        Muscles:
        We train everything from upper to lower & side abs. I also included a lot of twisting movements for the waist line, which helps to get the 11 ab lines :)

        PS: YES this workout includes breaks :D
        __

        Equipment: 8kg dumbbell
        Feel free to take something lighter or even a big bottle of water.
        If 8kg start to get too easy, feel free to take heavier weights :)

        The video is in full length which means you can just follow whatever I’m doing 30s for each exercise.

        __
        
        ▸ You can always find ALL SONGS in my workout playlist. I update it weekly & it's available on Spotify, Apple Music, etc. ♥︎
        http://wmg.click/GetActive

        1. Jason Derulo - Slidin‘ feat. Kodak Black
        2. Lizzo - About Damn Time
        3. HUGEL, Benjamin Ingrosso - Black & Blue
        4. Nathan Dawe - 21 Reasons feat. Ella Henderson
        5. Charli XCX – Used To Know Me
        6. Phil The Beat – YOU
        7. Ed Sheeran – 2step feat. Lil Baby
        __
        """,
        thumbnail: "https://img.youtube.com/vi/_hwvmGZuBeY/maxresdefault.jpg",
        video: "https://youtu.be/_hwvmGZuBeY",
        category: "Abs",
        publishedDate: "May 25, 2022"),
    
    Exercise(
        author: madfit,
        title: "30 MIN BOOTY /LEG WORKOUT (dumbbell, at home)",
        description: """
        A dumbbell leg and booty workout you can do AT HOME! Use whatever weights you have access to at home and let's get to it!
        #HomeWorkout #MadFit #Fitness

        👉🏼 DOWNLOAD YOUR MADFIT APP FREE TRIAL HERE: https://madfit.app.link/e/store

        ⭐️ DO THIS WARM UP FIRST: http://bit.ly/2riv8T6
        ⭐️ APARTMENT FRIENDLY WARM UP: https://youtu.be/CSrBaHX3HxQ
        ⭐️ DO THIS COOL DOWN AFTER (5 min): https://bit.ly/3zywpCu

        👉🏼THE MAT I USE (Exercise 6X4): http://gorillamats.com?aff=19  (MADFIT10 for 10% off)

        ✘ I N S T A G R A M: @madfit.ig
        ✘ T W I T T E R: @maddielymburner
        ✘ F A C E B O O K: facebook.com/madfit.ig
        ✉ C O N T A C T (business inquiries): madfit95@gmail.com
        """,
        thumbnail: "https://img.youtube.com/vi/ccUElj0LB5A/maxresdefault.jpg",
        video: "https://youtu.be/ccUElj0LB5A",
        category: "Lowerbody",
        publishedDate: "Dec 23, 2021"),
    
    Exercise(
        author: pamela_reif,
        title: "10 MIN HIGH INTENSITY WORKOUT - burn lots of calories, HIIT / No Equipment I Pamela Reif",
        description: """
        .. Ready for a KILLER routine? on a positive note: it's only 10 minutes & the music is amazing! ♥︎ / Werbung

        I know, we have a love-hate relationship to my 15min HIIT workout. Me too, I admit that.
        A 10min routine was definitely missing on my channel! Still a killer, still burning lots of calories, still breaking a sweat.. but: it's only 10 minutes :D

        This workout is:
        1. FILLED WITH BASICS.
        Nothing too fancy, nothing too dancy. Ask your male partner to join! They won't need to shake their hips for this one.
        2. a mix out of "QUICK MOVEMENTS" and "ACTIVE BREAKS".
        You will find Dolphin Holds & Planks in between all the quick movements. Almost feels like a break, but don't forget to keep the core strength :D
        3. HIGH ENERGY.
        For some reason it doesn't drag me down - but rather gives me MORE energy! Might also be the music though.

        by the way: NO LUNGES.

        __

        If you struggle or need a break: don't worry about it. Take a small rest, get something to drink & continue once you're ready :) most important is that you don't quit and push yourself.

        ▸ Depending on your fitness level, height and weight you will burn between 70-130 kcal.
        I burned about 80kcal in those 10min (which is a lot for me, I'm a small human and I normally burn about 250kcal in a 1h session).

        __
        
        1. Jason Derulo - Take You Dancing 0:00 - 3:07
        2. Hyperclap - Cry for you 3:08 - 5:31
        3. Wave Wave (feat. Joel Crouse) - Broke (Alle Farben Remix) 5:32 - 8:25
        4. Robin Schulz - Alane (Yves V Remix) 8:26 - 10:45

        __
        """,
        thumbnail: "https://img.youtube.com/vi/zr08J6wB53Y/maxresdefault.jpg",
        video: "https://youtu.be/zr08J6wB53Y",
        category: "HIIT",
        publishedDate: "Aug 19, 2020"),
    
    Exercise(
        author: pamela_reif,
        title: "10 MIN HEARTBREAK AB WORKOUT - with Benson Boone, love & heartbreak songs I Pamela Reif",
        description: """
        Suffer with Benson & enjoy his BEAUTIFUL live performance in the end! / Werbung

        Who says you need hardcore music to work out? In this video, we train our sixpack to love songs, embracing the pain of our abs (or our heart) in a dramatic way :D

        ▸ as Benson says, it burns „furchtbar“.  That’s the German word for „horrible“ haha
        ▸ slower, concentrated, abs burning like fire
        ▸ Live Singing for Song 3!︎ Soooo beautiful, I can’t get enough

        Benson was such a wonderful guest, we got along so well! My mom felt sorry for him, saying I went too hard for the workout lol. But I think he did amazing and… maybe the pain can count as input for a new song? :D

        __

        ▸ I burned about 60kcal in those 10min.
        Depending on your height, weight and fitness level, it may differ from 50-100kcal.

        __
        
        1. Benson Boone - ROOM FOR 2
        2. Benson Boone - GHOST TOWN
        3. Benson Boone - In the Stars

        __
        """,
        thumbnail: "https://img.youtube.com/vi/btCBYtUPEVU/maxresdefault.jpg",
        video: "https://youtu.be/btCBYtUPEVU",
        category: "Abs",
        publishedDate: "Jul 15, 2022"),
    
    Exercise(
        author: caroline_girvan,
        title: "20 MIN SOLID ARMS & SHOULDER WORKOUT with Dumbbells",
        description: """
        Let’s strengthen the shoulders, triceps and biceps in this 20 minute upper body workout!

        I have included shoulders in this arm workout as for me, I love training shoulders!

        The timer will be on for 40 seconds of work, 20 seconds rest!

        All you will need is your mat and a pair of dumbbells. The dumbbells I am using for your reference are 8kg each.

        There will be tips throughout, during the rest period. However please ensure you get the most out of this workout by performing full range each movement, controlling the lowering portion and elbows by sides during tricep push ups/presses and curls!

        SHOULDER PRESS
        FACING HOLD (x10 sec) TO PRESS
        ALT PRESS90° AT ELBOW OPEN TO CLOSEALT HAMMER FRONTAL RAISES
        BOTTOM/TOP/FULL RANGE RAISES
        LATERAL RAISESHAMMER HOLD TO EXTERNAL ROTATE
        PALMS UP HOLD W/ALT CURL
        EXTERNAL ROTATE CURLS
        CURL PULSES
        SKULL CRUSHERS
        OVERHEAD EXTENSION
        TATE PRESS
        DIAMOND PRESS (slow eccentric)
        FASTER TEMPO TRICEP PRESS
        COBRA DIAMOND PUSH UPUNEVEN PUSH UP
        UNEVEN PUSH UP (switch)
        SLOW TRICEP PUSH UP
        HAMMER CURL TO PALMS FACING PRESS

        Aim to really push that extra bit more, those 2 more reps! Take a rest when you aren’t able to maintain form perfectly!

        """,
        thumbnail: "https://img.youtube.com/vi/ME0cj3FTbms/maxresdefault.jpg",
        video: "https://youtu.be/ME0cj3FTbms",
        category: "Upperbody",
        publishedDate: "Dec 5, 2020"),
    
    Exercise(
        author: pamela_reif,
        title: "10 MIN BADASS HIIT - sweaty workout to Hip Hop Music, lots of punches & kicks I Pamela Reif",
        description: """
        Want to feel like a proper Gangster & burn lots of calories… let’s gooooo! / Werbung

        Uuuhhh that will switch up our workout life!
        Let’s feel super BADASS & make those High Intensity Sessions more fun! Kick, Box, Punch - in all kinds of variations. And to elevate the coolness, I chose some good old Hip Hop / Rap songs. Hope you likeeeeee it!

        ▸ HIIT: This will get your heart rate up, burn calories, burn fat, increase your metabolism, benefit your cardio & tone your muscles at the same time :)

        __

        Depending on your fitness level, height and weight you will burn between 70-110 kcal.
        I burned about 70kcal in those 10min (remember, I'm a small human and my body is already adapted to plank jumps and burpees haha).

        If you struggle or need a break: don't worry about it. Take a small rest, get something to drink & continue once you're ready :) most important is that you don't quit and push yourself.

        __
        
        1. Bad Boy For Life – P.Diddy, Black Rob, Mark Curry
        2. Belly Dancer - Imanbek, BYOR
        3. Nail Tech – Jack Harlow
        4. Shimmy Shimmy Ya – Ol’ Dirty Bastard

        __
        """,
        thumbnail: "https://img.youtube.com/vi/8MgyyEFxrNw/maxresdefault.jpg",
        video: "https://youtu.be/8MgyyEFxrNw",
        category: "HIIT",
        publishedDate: "Feb 23, 2022"),
    
    Exercise(
        author: chloe_ting,
        title: "Get Abs in 2 WEEKS | Abs Workout Challenge",
        description: """
        Abs Abs Abs! Everyone seems to be asking for a QUICK and short schedule, so I put together a 2 weeks schedule to help you get closer to those defined abs and to lose weight. A 2 weeks program is easier to commit to, and you can always do it again after you finish it!

        Enjoy the abs workout guys!

        ☆Music by☆
        Dylan Locke - Johnny Johnny Instrumental
        https://spoti.fi/3tIzSMZ
        https://www.youtube.com/user/RadialCr...

        Track: Ascence - Places Like That [NCS Release]
        Music provided by NoCopyrightSounds.
        Watch: https://youtu.be/jmpRflEHdqs
        Free Download / Stream: http://ncs.io/PlacesLikeThat

        Track: Dominic Strike - Heartbeat
        Music Provided by Magic Records
        Listen To The Original: https://youtu.be/Mc_f1j5u0y4
        Free Download: https://fanlink.to/o9ha

        Party in Backyard - Bitch Lasagna Instrumental
        """,
        thumbnail: "https://img.youtube.com/vi/2pLT-olgUJs/maxresdefault.jpg",
        video: "https://youtu.be/2pLT-olgUJs",
        category: "Abs",
        publishedDate: "Aug 12, 2019"),
    
    Exercise(
        author: pamela_reif,
        title: "20 MIN BOOTY + THIGHS - with weights I build your booty & tone your thighs",
        description: """
        Yaaaaay - our first workout WITH WEIGHTS! If you don't have any weights home - don't worry! I got you ♥︎ / Werbung

        I use a 10kg / 22 lbs dumbbell. Choose a weight that feels good for you!
        Weights help us to increase the intensity of a workout, build rounder muscles (booty alarm) and make us stronger!

        Your home-made weight:
        1. Take a bag
        2. Search for dense + heavy food in your kitchen. For example: packs of flour, rice, oats, etc.
        3. You can easily put 6 to 10 packs into one bag. That makes 6 to 10 kg :)

        This workout is structured like this:
        - a Booty Activation, without equipment
        - 6 Supersets, including 1-2 weighted exercise(s) and a bodyweight burner
        - a Burnout with 6min of Glute Bridges, to make those butt cheeks buuuuurn

        Things to keep in mind:
        ▸ bodyweight focusses on your HEELS, don't shift your bodyweight onto your toes
        ▸ your BACK stays STRAIGHT. Don't round it!
        ▸ keep your KNEES stable. Never collapse them inwards, rather push them a bit outwards
        ▸ squeeze your BOOTY as hard as possible and hold the tension as long as possible, if you have troubles with only growing your thighs.

        The routine includes breaks! Yes, that's correct. BREAKS! :D
        The video is in full length which means you can just follow whatever I’m doing.

        __
        """,
        thumbnail: "https://img.youtube.com/vi/-CWPIgK4G-k/maxresdefault.jpg",
        video: "https://youtu.be/-CWPIgK4G-k",
        category: "Lowerbody",
        publishedDate: "Oct 20, 2020"),
    
    Exercise(
        author: madfit,
        title: "15 MIN TONED LEGS & ROUND BOOTY WORKOUT (Dumbbell, At Home)",
        description: """
        Dumbbell booty & leg workout you can do at home! A great beginner style workout.

        👉🏼THE MAT I USE (Exercise 6X4): http://gorillamats.com?aff=19  (MADFIT10 for 10% off)
        ⭐️SHOP MY COOKBOOKS! 100+ RECIPES: https://goo.gl/XHwUJg ⭐️


        👉🏼SUBSCRIBE TO MY MAIN CHANNEL (what i eat, recipes, vlogs): https://goo.gl/WTpDQk
        OTHER VIDEOS:
        ➤ PREVIOUS VIDEO (LOOK AT HER NOW Workout): http://bit.ly/2p5PnT2
        ➤ AT HOME WORKOUTS: http://bit.ly/2p5PnT2
        ➤ DUMBBELL WORKOUTS: http://bit.ly/2qzPKpj

        📷 GEAR I USE:
        CAMERA: https://goo.gl/rVQzXd
        42.5mm LENS: https://goo.gl/oLRc2u
        TRIPOD: https://goo.gl/ihp5br
        MICROPHONE: https://goo.gl/fPzkRN
        GOPRO: https://goo.gl/D6eMwL

        ✘ I N S T A G R A M: @madfit.ig
        ✘ T W I T T E R: @maddielymburner
        ✘ F A C E B O O K: facebook.com/madfit.ig
        ✉ C O N T A C T (business inquiries): madfit95@gmail.com
        """,
        thumbnail: "https://img.youtube.com/vi/oqaoE2cvbYg/maxresdefault.jpg",
        video: "https://youtu.be/oqaoE2cvbYg",
        category: "Lowerbody",
        publishedDate: "Aug 12, 2019"),
    
    Exercise(
        author: pamela_reif,
        title: "10 MIN UPPER BODY + WEIGHTS - Alternative: Big Bottles / for back, chest, arms & shoulders",
        description: """
        Grab some weights, grab your male partner & let’s build this sexy upper body! Don't worry if you don't have weights, alternative listed below ♥︎ / Werbung
        I used 2x 3.5kg / 7.7 lbs dumbbells.
        Those are rather light weights. The workout only gets heavy because we train for 10min = 600 seconds non stop :)))

        Your home-made weight:
        1. Take a empty, big bottles
        2. Search for dense + heavy food in your kitchen. For example rice.
        3. Fill up the bottles with rice & make sure close them (lol).

        Weights help us to increase the intensity of a workout & build stronger muscles! This is super helpful in your daily life:
        ▸ strong back = bye bye back pain
        ▸ strong arms = carry your groceries or lift a heavy suitcase without any help
        ▸ strong chest = if life throws you to the ground… get up with a pretty push up haha

        _

        The video is in full length which means you can just follow whatever I’m doing.

        Depending on your fitness level, height and weight you will burn between 60-110 kcal.

        If you struggle or need a break: don't worry about it. Take a small rest, get something to drink & continue once you're ready :) most important is that you don't quit and push yourself.
        """,
        thumbnail: "https://img.youtube.com/vi/GJiEUi92-xE/maxresdefault.jpg",
        video: "https://youtu.be/GJiEUi92-xE",
        category: "Upperbody",
        publishedDate: "Mar 16, 2022"),
    
    Exercise(
        author: pamela_reif,
        title: "10 MIN BUBBLE BUTT - Glute Bridge Burnout / no squats, no jumps, knee-friendly I with Equipment",
        description: """
        Lay down on the floor & set your booty on fire ♥︎ low-impact, no squats, no lunges or jumps - but very efficient! / Werbung

        Can I fill 10min with ONLY Glute Bridges? HELL YES.
        We isolate the butt muscles & train them without using a lot of thigh strength. This way we can grow our booty, not the legs :)

        You will like this workout, if you...
        - like glute bridges :D we do them in ALL kinds of variations today!
        - want to grow your bubble butt
        - need a routine to ACTIVATE your glutes in the beginning of your leg day. This makes sure you use them properly during all the exercises following afterwards (squats, ..)
        - want to END your leg day with a BANG and totally kill your booty :D
        - have bad joints or knee pain
        - don't feel like jumping or sweating. Everything is down on the floor :)

        __

        Equipment:

        ▸ I am using a 10kg / 22 lbs dumbbell. Please choose a weight that feels good for you.
        Weights help us to increase the intensity of a workout, build rounder muscles (booty alarm) and make us stronger!

        Your home-made weight:
        1. Take a bag
        2. Search for dense + heavy food in your kitchen. For example: packs of flour, rice, oats, etc.
        3. You can easily put 6 to 10 packs into one bag. That makes 6 to 10 kg :)

        ▸ I also added a resistance band. This is definitely helpful to put more focus on the booty. I can especially recommend it, if you want to target the sides of your butt. In case you don't have a booty band yet - don't worry! You can still do this workout :)

        __
        """,
        thumbnail: "https://img.youtube.com/vi/vtD5nGoNMu8/maxresdefault.jpg",
        video: "https://youtu.be/vtD5nGoNMu8",
        category: "Lowerbody",
        publishedDate: "Mar 23, 2021"),
    
    Exercise(
        author: growingannanas,
        title: "30 MIN CALORIE KILLER HIIT Workout - Full body Cardio, No Equipment, No Repeat",
        description: """
        Here's a killer post-Christmas Cookie Burner workout for you all! Time to get the heart pumping, burn some calories and sweat it out. Grab your mat, a bottle of water and let's do it team!
        ♡ Find more workouts & challenges in my Grow with Anna APP: https://growwithanna.page.link/GetGro...

        Please remember that we all are different and that you can make this your OWN workout... take a longer break when you need to.

        WORKOUT DETAILS

        👉🏼 Duration: 30 Min plus 5 mins of Cool Down Stretches
        👉🏼 No Equipment
        👉🏼 50 Sec Work, 10 Sec Rest
        👉🏼 Level: Medium to Advanced
        👉🏼 No Repeat

        Music: https://www.epidemicsound.com
        """,
        thumbnail: "https://img.youtube.com/vi/jpizoUy4K9s/maxresdefault.jpg",
        video: "https://youtu.be/jpizoUy4K9s",
        category: "HIIT",
        publishedDate: "Dec 25, 2020")
]


//sample data: favorite list
var favList: [Exercise] = [exercises[0], exercises[4], exercises[6], exercises[7], exercises[11]]
