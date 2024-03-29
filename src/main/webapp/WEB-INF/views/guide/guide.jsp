<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <title>가이드</title>
  <link href="https://fonts.googleapis.com/css?family=Abril+Fatface|Libre+Baskerville:400,400i,700,700i|Playfair+Display:400,700" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css'>
<link rel="stylesheet" href="${path}/resources/css/guide.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>                                         
<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css' rel='stylesheet'>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">       
<script src='https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js'></script>  
<%@ include file="../bar/bar.jsp" %>
</head>
<body>
<!-- partial:index.partial.html -->
<main>
  <div class="page__wrapper magazine">
    <div class="page page-cover active">
      <div class="controls">
        <div class="controls__name"></div><a class="next js-next">다음</a>
      </div><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/magazinecover.jpg"/>
      <h1>
         A Tribute <br/>to the Avengers<small>Exploring Avengers: Endgame, the highest-grossing movie worldwide and the future of the Marvel Cinematic Universe</small></h1>
    </div>
    <div class="page page-timer">
      <div class="title">Let's Talk Screentime<small>With more than 50 reprising roles in Endgame and only 180 minutes to spare, here are the top 10 characters who appeared on screen the most often.</small></div>
      <div class="timer">
        <div class="timer__image"></div><span>1</span>
        <div class="timer__hero">
          <h5 class="name">Ironman</h5>
          <p>1997 seconds</p>
        </div>
      </div>
      <div class="timer">
        <div class="timer__image"></div><span>2</span>
        <div class="timer__hero">
          <h5 class="name">Capt America</h5>
          <p>1688 seconds</p>
        </div>
      </div>
      <div class="timer">
        <div class="timer__image"></div><span>3</span>
        <div class="timer__hero">
          <h5 class="name">Thor</h5>
          <p>1105 seconds</p>
        </div>
      </div>
      <div class="timer">
        <div class="timer__image"></div><span>4</span>
        <div class="timer__hero">
          <h5 class="name">Hulk</h5>
          <p>970 seconds</p>
        </div>
      </div>
      <div class="timer">
        <div class="timer__image"></div><span>5</span>
        <div class="timer__hero">
          <h5 class="name">Hawkeye</h5>
          <p>966 seconds</p>
        </div>
      </div>
      <div class="timer">
        <div class="timer__image"></div><span>6</span>
        <div class="timer__hero">
          <h5 class="name">Ant-Man</h5>
          <p>881 seconds</p>
        </div>
      </div>
      <div class="timer">
        <div class="timer__image"></div><span>7</span>
        <div class="timer__hero">
          <h5 class="name">Nebula</h5>
          <p>866 seconds</p>
        </div>
      </div>
      <div class="timer">
        <div class="timer__image"></div><span>8</span>
        <div class="timer__hero">
          <h5 class="name">Black Widow</h5>
          <p>839 seconds</p>
        </div>
      </div>
      <div class="timer">
        <div class="timer__image"></div><span>9</span>
        <div class="timer__hero">
          <h5 class="name">Thanos</h5>
          <p>724 seconds</p>
        </div>
      </div>
      <div class="timer">
        <div class="timer__image"></div><span>10</span>
        <div class="timer__hero">
          <h5 class="name">Rocket</h5>
          <p>524 seconds</p>
        </div>
      </div>
      <div class="controls">
        <div class="controls__name"><strong>03</strong><span>A Tribute to the Avengers</span></div><a class="next js-prev">이전</a><a class="next js-next">다음</a>
      </div>
    </div>
    <div class="page page-easter">
      <div class="controls">
        <div class="controls__name"><strong>04</strong><span>A Tribute to the Avengers</span></div><a class="next js-prev">이전</a><a class="next js-next">다음</a>
      </div>
      <div class="title">Movie Details, Easter Eggs & More<small>It is known that Marvel loves their details and Easter eggs. Here are some that you may have missed, including fan theories and possible blunders.</small></div>
      <div class="easter__item"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/detail-zola.jpg"/>
        <div class="easter__text">Dr. Zola's computer can be seen when Tony sneaks into the bunker. Zola was probably preparing it to transfer his consciousness as his death would come only 2 years later.</div>
      </div>
      <div class="easter__item"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/detail-mjolnir.png"/>
        <div class="easter__text">During the big battle, Thanos holds Captain America's hand and not the Mjölnir hammer because he knows he is not worthy and can't lift it.</div>
      </div>
      <div class="easter__item"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/detail-hulk.png"/>
        <div class="easter__text">Hulk uses a pencil to flick the switches in the scene where they are trying to send Scott back in time, because his fingers are too big.</div>
      </div>
      <div class="easter__item"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/detail-tonsberg.png"/>
        <div class="easter__text">Tønsberg, Norway has been an important setting in the MCU. It is where the Asgardians fought armies centuries ago, where the Tesseract was stolen in WW2, where Odin dies in <em>Thor: Ragnarok</em>, and where Thor builds New Asgard in <em>Endgame</em>.</div>
      </div>
      <div class="easter__item"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/detail-jarvis.jpg"/>
        <div class="easter__text">After Tony Stark bids farewell to his father in 1970, Howard Stark is driven away by his butler, Edwin Jarvis (played by James D'Arcy, who also starred in the TV series, <em>Agent Carter</em>. This is the first ever crossover from the TV series into the movies.</div>
      </div>
      <div class="easter__item"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/detail-a113.jpg"/>
        <div class="easter__text">The words “A-113” appear on Dr Banner’s HUD. This is an obvious reference to the classroom for character animation and graphic design at the California Institute of Arts, which has made its way into various TV shows, movies and media.</div>
      </div>
      <div class="easter__item"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/detail-inverted.jpg"/>
        <div class="easter__text">Tony Stark cracks the time travel model after seeing a picture of him and Peter Parker holding an 'inverted' diploma.</div>
      </div>
      <div class="easter__item"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/detail-hotwire.png"/>
        <div class="easter__text">You can see Giant-Man pushing a Chitauri in the background even though his character is supposedly in the van with Wasp during this scene.</div>
      </div>
      <div class="easter__item"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/detail-russos.jpg"/>
        <div class="easter__text">In a Reddit AMA, the Russos have revealed that there are Easter eggs that have not been discovered yet. So get watching!</div>
      </div>
    </div>
    <div class="page page-diagonal">
      <div class="controls">
        <div class="controls__name"><strong>05</strong><span>A Tribute to the Avengers</span></div><a class="next js-prev">이전</a><a class="next js-next">다음</a>
      </div>
      <h1 class="title">
         Food: Much Importance<small>Avengers: Endgame has more scenes with food on screen or in dialogue than any other MCU movie.</small></h1>
      <div class="diagonal"><img class="show-img-1 diagonal__image" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/pez.jpg"/>
        <div class="show-text-1 diagonal__text"> 
          <h5>Pez</h5>
          <p>These Pez candies were not explicitly mentioned or even remotely obvious. However, some detectives managed to spot the Hulk and Iron Man Pez on a table in Thor's house during Rocket and Hulk's visit to New Asgard.</p>
        </div><img class="show-img-2 diagonal__image" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/avengerbenjerry.png"/>
        <div class="show-text-2 diagonal__text"> 
          <h5>Hulk-inspired Ben &amp; Jerry's</h5>
          <p>Wong names 'Hunka-Hulka Burning Fudge' as his favorite Ben & Jerry's flavor, preferring it over 'Stark Raving Hazelnuts' in <em>Infinity War</em>. In <em>Endgame</em>, Hulk is spotted eating a very large tub of 'Hunka-Hulka Burning Fudge' while discussing the location of the infinity stones with the Avengers.</p>
        </div><img class="show-img-3 diagonal__image" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/shawarma.png"/>
        <div class="show-text-3 diagonal__text"> 
          <h5>Shawarma</h5>
          <p>During the time heist back to New York 2012, Thor mentions that they're heading to lunch. It is not mentioned, but we all know that they are planning to have shawarma, as seen in the post-credits scene in <em>The Avengers</em> movie.</p>
        </div><img class="show-img-4 diagonal__image" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/asgardale.jpg"/>
        <div class="show-text-4 diagonal__text"> 
          <h5>Asgardian Ale</h5>
          <p>In the scene where Valkyrie explains that Thor only comes around once a month for supplies, we catch a glimpse of a barrell of <em>Asgardian Ale</em>. Although something tells us that it's not the only alcohol that Bro Thor drinks exclusively...</p>
        </div><img class="show-img-5 diagonal__image" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/hulktaco.jpg"/>
        <div class="show-text-5 diagonal__text"> 
          <h5>More than 25 food items mentioned!</h5>
          <p>The first mention? In the opening scene of <em>Endgame</em>, Hawkeye and his family were planning to eat hot dogs! Other examples include Nat and her peanut butter sandwich, Hulk eating at a diner, Frigga sending soup to Loki and of course, tacos and juice pops!</p>
        </div>
        <div class="free-space-1"></div>
        <div class="free-space-2"></div>
        <div class="free-space-3"></div>
        <div class="free-space-4"></div>
      </div>
    </div>
    <div class="page page-thor">
      <div class="controls">
        <div class="controls__name"><strong>06</strong><span>A Tribute to the Avengers</span></div><a class="next js-prev">이전</a><a class="next js-next">다음</a>
      </div>
      <div class="product-name">
        <h1 class="title">
           Asgard's #1 <br/>Weight-Gain Regiment<small>Clinically proven anti-workout plan to help you gain up to 4.5 times the weight. Why even diet and exercise?</small></h1>
      </div>
      <div class="photo-combo"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/thorcombo.png" alt="Weight Gain Regiment"/></div>
      <div class="window">
        <div class="window__left"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/thorhot.png"/><span>Before</span></div>
        <div class="window__right"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/thorfat.png"/><span>After</span></div>
      </div>
      <div class="persuader"> 
        <div class="testi">
          <div class="testi__text">
            <p>
               Reviewed by health expert, <strong>Dr. Stephen Strange, M.D., Ph.D.</strong>: "No amount of sorcery can fix this thing." Individual results may vary. Please consult your doctor if you experience discomfort or if you show symptoms of heart disease, stroke, high blood pressure or diabetes.</p>
          </div>
        </div>
      </div>
    </div>
    <div class="page page-gauntlet">
      <div class="controls">
        <div class="controls__name"><strong>07</strong><span>A Tribute to the Avengers</span></div><a class="next js-prev">이전</a><a class="next js-next">다음</a>
      </div>
      <div class="title">
         Know Your Gauntlets<small>When all the Infinity Stones are united in the Gauntlet, the wearer wields unlimited power.</small></div>
      <div class="gauntlet__wrapper">
        <div class="gauntlet">
          <div class="gauntlet__image"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/gauntlet-infinity.png"/></div>
          <div class="gauntlet__text"> 
            <h5>Infinity Gauntlet</h5>
            <p>The Infinity Gauntlet was a powerful metallic glove that was designed to channel the power of all six Infinity Stones. It was made by the ruler of Nidavellir, King Eitri. We don't know  what it is made of, but our best guess is Uru - a metal unique to Nidavellir and the same metal used to forge Mjölnir and Stormbreaker.</p>
          </div>
        </div>
        <div class="gauntlet">
          <div class="gauntlet__image"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/gauntlet-nano.png"/></div>
          <div class="gauntlet__text"> 
            <h5>Nano Gauntlet</h5>
            <p>The Nano Gauntlet was a glove made of nano-technology created by Stark, Banner and Rocket Raccoon in 2023. It was designed to allow the user to channel the powers of the Infinity Stones in a manner similar to the Infinity Gauntlet, although the effects of wielding it were far more damaging to the user than the Infinity Gauntlet.</p>
          </div>
        </div>
      </div>
    </div>
    <div class="page page-stones">
      <div class="controls">
        <div class="controls__name"><strong>08</strong><span>A Tribute to the Avengers</span></div><a class="next js-prev">이전</a><a class="next js-next">다음</a>
      </div>
      <div class="title">Know Your Stones<small>A brief introduction to all the stones and who have held the stones. * indicates that the holder held the stone barehanded.</small></div>
      <div class="quote">With all six stones, I can simply snap my fingers, they would all cease to exist. I call that mercy.</div>
      <div class="column-1">
        <p>Tessarect: a blue cube which holds the Space Stone. This stone gives the user power over space and can create a portal from one part of the universe to another. The Space Stone has been held by: Odin, the Norwegian priest, Red Skull, Howard Stark, Mar-vell, Captain Marvel, Michelle Rambeau, Goose, Nick Fury, Hawkeye, Dr Selvig, Tony Stark, Bruce Banner, Loki, Thor, Ebony Maw, Thanos*</p>
        <p>Hurling Gamora off the cliff (or anyone whom you love) nets you the Soul Stone. It’s unclear what the Soul Stone’s powers are in the film universe. In the comics, the gem allows the holder to capture and control others’ souls. Only two have held the Soul Stone: Thanos*, Hawkeye*.</p>
      </div>
      <div class="column-2">
        <p>Aether: a manifestation of The Reality Stone which grants the user power to manipulate matter. The Reality Stone has been held by: Malekith, Bor, Jane Foster, Sif the Collector, Thanos* and Rocket Raccoon</p>
      </div>
      <div class="column-3">
        <p>Necklace called the Eye of Agomoto is where the Time Stone is hidden. The Time Stone grants its owner the power to re-wind or fast-forward time. The Time Stone was only held by the Ancient One and Doctor Strange before Thanos got his hands on it.</p>
        <p>Orb that contains the Power Stone seems to be a popular item across the universe. The Power Stone bestows upon its holder a lot of energy — the sort that you could use to destroy an entire planet. The Celestial, Star-Lord*, Korath, the broker, Gamora, Drax, the Collector, the Collector's assistant*, Nebula, Ronan*, Nova Prime, Thanos*, and War Machine have all held the Power Stone.</p>
        <p>Scepter. Loki's Scepter which could counter the immense enery of the Tessarect. Turns out, it's the Mind Stone! This yellow stone allows the user to control the minds of others and have been held by: Thanos*, Loki, Bruce Banner, Black Widow, Agent Sitwell, Agent Crossbones, Baron Strucker, Tony Stark, Ultron*, Vision, Captain America, Ant-Man</p>
      </div>
      <!--img.image-2(src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/pezmovie.jpg")-->
      <div class="all-holders"> 
        <h5>Besides Thanos, who has held all six stones? </h5>
        <div>The participants of the "gauntlet hot potato" (as the MCU writers cutely call it): Professor Hulk, Hawkeye, Nebula, Black Panther, Spider-Man, Captain Marvel and Iron Man. Captain America has also carried all six stones to return them to their original timelines in what we'll call the Infinity Briefcase.</div><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/stoneholders.png" alt="Infinity Stones"/>
      </div>
    </div>
    <div class="page page-cap">
      <div class="controls">
        <div class="controls__name"></div><a class="next js-prev">이전</a><a class="next js-next">다음</a>
      </div><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/captwp.jpg"/>
      <h2>
         I<br/>can do this all day.</h2>
    </div>
    <div class="page page-contributor">
      <div class="title">
         Missing The Avengers?<small>Me too. But not to worry, our overloards at Disney have graced us with upcoming movies and series featuring most of the Avengers. </small></div>
      <div class="contributor"><img class="contributor__image" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/blackwidowmovie.png" alt="Black Widow Movie"/>
        <div class="contributor__textwrap">
          <h5 class="contributor__author">
             Black Widow </h5>
          <p class="contributor__text">
             May 1, 2020. Following the events of the Civil War, Natasha Romanoff is on the run from the government, and finds herself on her own, forced to deal with "some of the red in her ledger".</p>
        </div>
      </div>
      <div class="contributor"><img class="contributor__image" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/falconwintersoldier.png" alt="Falcon &amp; The Winter Soldier"/>
        <div class="contributor__textwrap">
          <h5 class="contributor__author">The Falcon & The Winter Soldier </h5>
          <p class="contributor__text"> August 2020. The Falcon wields the Captain America shield and fights alongside the Winter Soldier.</p>
        </div>
      </div>
      <div class="contributor"><img class="contributor__image" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/wandavision.png" alt="WandaVision"/>
        <div class="contributor__textwrap">
          <h5 class="contributor__author">WandaVision</h5>
          <p class="contributor__text">Spring 2021. Speculation: To be set in the 1950s, Wanda plays with different realities to carve out a perfect life with Vision.</p>
        </div>
      </div>
      <div class="contributor"><img class="contributor__image" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/doctorstrangemovie.png" alt="Doctor Strange in the Multiverse of Universe"/>
        <div class="contributor__textwrap">
          <h5 class="contributor__author">
             Doctor Strange in the Multiverse of Universe </h5>
          <p class="contributor__text">May 7 2021. Anndddd Wanda messes up and now the magician is here to save the day.</p>
        </div>
      </div>
      <div class="contributor"><img class="contributor__image" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/lokishow.png" alt="Loki"/>
        <div class="contributor__textwrap">
          <h5 class="contributor__author">Loki </h5>
          <p class="contributor__text">
             Spring 2021. The series would be exploring what Loki did after he stole the Tesseract during the Time Heist in <em>Avengers: Endgame </em>and created a new timeline.</p>
        </div>
      </div>
      <div class="contributor"><img class="contributor__image" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/hawkeyeshow.png" alt="Hawkeye"/>
        <div class="contributor__textwrap">
          <h5 class="contributor__author">
             Hawkeye</h5>
          <p class="contributor__text">Fall 2021. Hawkeye returns and takes on the responsibility to train Kate Bishop to become the next Hawkeye. </p>
        </div>
      </div>
      <div class="contributor"><img class="contributor__image" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/thorlovethunder.png" alt="Thor Love &amp; Thunder"/>
        <div class="contributor__textwrap">
          <h5 class="contributor__author">
             Thor: Love & Thunder</h5>
          <p class="contributor__text">November 5 2021. We don't know much, except that there will be the first Female Thor.</p>
        </div>
      </div>
      <div class="credits"> <strong>Special Mention. </strong><span>Black Panther 2 is set to release on May 6, 2022.</span></div>
      <div class="controls">
        <div class="controls__name"><strong>10</strong><span>A Tribute to the Avengers</span></div><a class="next js-prev">이전</a><a class="next js-next">다음</a>
      </div>
    </div>
    <div class="page page-circle">
      <div class="controls">
        <div class="controls__name"><strong>11</strong><span>A Tribute to the Avengers</span></div><a class="next js-prev">이전</a><a class="next js-next">다음</a>
      </div>
      <div class="stark-center">
        <div class="title">A Shout-out to the Ones We Will Miss the Most</div>
        <div class="stark-left">
          <div class="shape-human"></div>
          <div class="text"> 
            <h5>Iron Man/Tony Stark</h5>
            <p>
               In <em>Endgame</em>, we had to say goodbye to the most important Avenger. Even though he wasn't the leader of the Avengers, Iron Man has always been the team's driving force. His charisma and savvy helped the team bond, and he was instrumental in giving the Avengers a good public face. Tony was also the one bankrolling the Avengers — he built the tower they used as a home base, and he built their new upstate headquarters. Tony is literally giving them a place to assemble.</p>
            <p>There's perhaps no greater endorsement of Iron Man's status as the most important Avenger than Captain America's word. Cap called Tony "Earth's best defender." It's not hyperbolic, as over a ten-year career as a superhero, Tony truly has cemented himself as the greatest hero around. </p>
          </div><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/tony-ironman.png"/>
        </div>
        <div class="stark-right">
          <div class="shape-human"></div>
          <div class="text"> 
            <p>
               What will we miss the most? Honestly? His quips and memorable quotes. From the iconic "Genius, billionaire, playboy, philanthropist" line to coming up with fitting names — Lebowski for Bro Thor and Build-A-Bear for Rocket immediately come to mind — we are not convinced that there will be another character who can pull off throwing insults so flawlessly.</p>
            <p>
               Our only consolation is that there is hope that Morgan Stark will grow up and follow in the footsteps of her father. Until then, we'll just have to watch YouTube compilations of Tony Stark's best moments. Here's to Iron Man and Robert Downey Jr, the anchor of the Marvel Cinematic Universe. </p>
          </div>
        </div>
      </div>
      <div class="character-other">
        <div class="character-other__image"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/blackwidow.png" alt="Black Widow"/></div>
        <div class="character-other__text"> 
          <h5>Black Widow </h5>
          <p>We didn't care much for Black Widow and had very little emotional attachment to her character. Turns out, all it needed to make her death the hardest for us was her complete dedication to the Avengers for 5 years post Thanos-snap and a tear-jerking sacrificial jump, with her best friend unwillingly sending her off.</p>
        </div>
        <div class="character-other__image"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/corvusproxima.jpg" alt="Corvus Glaive and Proxima Midnight"/></div>
        <div class="character-other__text"> 
          <h5>Proxima Midnight & Corvus Glaive</h5>
          <p>
             Wait, hear us out. Proxima Midnight & Corvus Glaive were actually married. Joe Russo <a href="https://comicbook.com/marvel/2018/08/03/avengers-infinity-black-order-proxima-midnight-corvus-glaive-married/">mentioned that they did have plans to explore their relations but the plot threads were ultimately cut for time.</a>. We're just lowkey disappointed that we didn't get that story.</p>
        </div>
        <div class="character-other__image"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/cassielang.jpg" alt="Cassie Lang"/></div>
        <div class="character-other__text"> 
          <h5>Young Cassie </h5>
          <p>
             We are glad she wasn't snapped and we know teenage Cassie is important to pave the way to the <a href="https://marvel.fandom.com/wiki/Cassandra_Lang_(Earth-616)">Young Avengers</a>. But man, Abby Ryder Johnson is the best child actor we've seen and we sure will miss this little peanut.</p>
        </div>
      </div>
    </div>
    <div class="page page-more">
      <div class="controls">
        <div class="controls__name"><strong>12</strong><span>A Tribute to the Avengers</span></div><a class="next js-prev">이전</a><a class="next js-next">다음</a>
      </div>
      <h5 class="title-mini">Captain America/ Steve Rogers</h5><img class="image" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/captwp2.jpg" alt="Captain America Wallpaper"/>
      <div class="text">
         Oh boy, we have so many questions. Perhaps the most hotly debated <em>Endgame</em> plot point is the fate of Captain America, who travels back in time to live out his life with Peggy Carter. It is established that Peggy had a husband and two kids, and some fans have theorized that Steve Rogers secretly was this husband all along. Others have stated that Steve created an alternate timeline when he went back to live with Peggy, and somehow got back to the mainline MCU as an old man. In conclusion, we are unsure. All we know is that the shield has been passed onto the Falcon (but he will not take on the name like in the comics, as the name of a new Disney+ show is <em>The Falcon and the Winter Soldier</em>) and Chris Evans is done with the MCU. So maybe we won't have to say goodbye to Captain America, but we'll unfortunately have to bid farewell to our favorite Chris.</div>
      <div class="quote">
         If there’s one thing I’ve learned about working with Marvel, they don’t leave stones unturned. They really don’t.<br/>
        <p>– Chris Evans</p>
      </div>
      <div class="title">Consolation Videos<small>For when you're missing your favorite actors, we've got some YouTube videos for nostalgia.</small></div>
      <div class="more">
        <div class="more__item"><img class="more__image" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/show1.jpg" alt="Image for Show"/>
          <h5 class="more__headline">50 Marvel Questions</h5>
          <div class="more__subtext">Endgame stars answer 50 of the most Googled questions about Marvel. The questions are weird, but the video is 7 minutes of charisma.</div><a href="https://youtu.be/IEr_yj-8MmM" target="_blank">Watch video</a>
        </div>
        <div class="more__item"><img class="more__image" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/show2.jpg" alt="Image for Show"/>
          <h5 class="more__headline">Most Likely To...</h5>
          <div class="more__subtext">Watch the OG6 Avengers answer questions in this terribly short video (but it's the only one we got).</div><a href="https://www.youtube.com/watch?v=JWYPT4r9kLU" target="_blank">Watch video</a>
        </div>
        <div class="more__item"><img class="more__image" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/show3.jpg" alt="Image for Show"/>
          <h5 class="more__headline">The Thanos Snap</h5>
          <div class="more__subtext">The cast takes a meaningless Buzzfeed quiz to  learn what their fates would be if faced with a real life snap from Thanos.</div><a href="https://youtu.be/7XLd9zX6PqU" target="_blank">Watch video</a>
        </div>
        <div class="more__item"><img class="more__image" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/show4.jpg" alt="Image for Show"/>
          <h5 class="more__headline">Netflix's <em>The Chef Show</em></h5>
          <div class="more__subtext">Watch Jon Favreau taste food with RDJ, Tom Holland, and the Russo brothers. Only available on Netflix, sorry.</div><a href="https://youtu.be/A9bcFSNB25U" target="_blank">Watch teaser</a>
        </div>
      </div>
    </div>
    <div class="page page-ironman">
      <div class="controls">
        <div class="controls__name"><a class="js-back-to-1">처음</a></div><a class="next js-prev">이전</a>
      </div>
      <div class="image">
        <h2 class="top">That's the hero gig.</h2><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/567707/ironmanwp.jpg"/>
      </div>
      <h2 class="bottom">Part of the journey is the end.</h2>
    </div>
  </div>
</main>
<footer>
  <a href="index.do">메인으로</a>
</footer>
<!-- partial -->
  <script src="${path}/resources/js/guide.js"></script>

</body>
</html>