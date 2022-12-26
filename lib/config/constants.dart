String baseBackgroundImageURL(String supabaseProjectID) =>
    "https://$supabaseProjectID.supabase.co/storage/v1/object/public/backgrounds";

String appRatingURLiOS =
    'https://itunes.apple.com/us/app/apple-store/id1065379512?mt=8';

String appRatingURLAndroid =
    'https://play.google.com/store/apps/details?id=com.manninglabs.steady';

// WARNING do not remove any of these, only add new ones
List<String> backgrounds = [
  'adventures-begin-mug@3x.png',
  'apple-and-juice@3x.png',
  'apples-on-tree@3x.png',
  'arizona@3x.png',
  'asparagus@3x.png',
  'baby-feet@3x.png',
  'baby-touching-star@3x.png',
  'baby-toys@3x.png',
  'bamboo@3x.png',
  'bible-and-glasses@3x.png',
  'bicycle-with-flower-basket@3x.png',
  'big-ben-top@3x.png',
  'big-dog-toung@3x.png',
  'bikes-on-cobblestone@3x.png',
  'blossoms@3x.png',
  'blueberries@3x.png',
  'bodybuilder-girl@3x.png',
  'book-shelf@3x.png',
  'books@3x.png',
  'bowl-of-strawberries@3x.png',
  'budda-statues@3x.png',
  'champagne-cheers@3x.png',
  'change-money@3x.png',
  'cherry-blossom-tree@3x.png',
  'cherry-blossoms@3x.png',
  'china-building@3x.png',
  'couple-holding-flower@3x.png',
  'couple-on-beach@3x.png',
  'dad-walking-with-child@3x.png',
  'dancing-girl@3x.png',
  'darts@3x.png',
  'design-sticky-notes@3x.png',
  'dial-phones@3x.png',
  'dog-yawning@3x.png',
  'dog@3x.png',
  'doing-dishes@3x.png',
  'effel-tower-and-bird@3x.png',
  'esb-from-broadway@3x.png',
  'esb@3x.png',
  'evergreen-trees-winter-forest@3x.png',
  'farm-house@3x.png',
  'fireworks@3x.png',
  'fit-girl@3x.png',
  'fit-guy-climbing@3x.png',
  'fresh-juice@3x.png',
  'fruit-bowl@3x.png',
  'geometric-corridor@3x.png',
  'germany-castle@3x.png',
  'girl-calling-someone@3x.png',
  'girl-holding-iphone@3x.png',
  'guitar-girl@3x.png',
  'guitarist-on-stage@3x.png',
  'guy-holding-iphone@3x.png',
  'happy-throwing-leaves@3x.png',
  'holding-cup-of-tea@3x.png',
  'hot-tea@3x.png',
  'ice-cream@3x.png',
  'inspirational-quote@3x.png',
  'into-the-mountains@3x.png',
  'italian-flag@3x.png',
  'japanese-lanterns@3x.png',
  'kid-parent-hand@3x.png',
  'kids-abc@3x.png',
  'kitchen-shelves@3x.png',
  'kitten-2@3x.png',
  'kitten@3x.png',
  'kiwi@3x.png',
  'knife-and-fork@3x.png',
  'knitting@3x.png',
  'laptop-coffee@3x.png',
  'laptop-on-lap@3x.png',
  'law-books@3x.png',
  'lazy-cat@3x.png',
  'lego-man@3x.png',
  'lighter@3x.png',
  'making-coffee@3x.png',
  'man-writing@3x.png',
  'map-new-york@3x.png',
  'map-on-iphone@3x.png',
  'marathon@3x.png',
  'mic@3x.png',
  'mom-and-girl@3x.png',
  'moon@3x.png',
  'mountain-lake@3x.png',
  'mountains@3x.png',
  'murral@3x.png',
  'music-notes-glasses@3x.png',
  'musli-strawberries@3x.png',
  'newspaper@3x.png',
  'night-city-skyline@3x.png',
  'night-sky@3x.png',
  'old-books@3x.png',
  'old-car@3x.png',
  'old-cell-phone@3x.png',
  'old-piano@3x.png',
  'paint-brushes@3x.png',
  'pastel-colored-heart@3x.png',
  'photo-cameras@3x.png',
  'photographing-pattern@3x.png',
  'piano@3x.png',
  'pink-plants@3x.png',
  'pisa@3x.png',
  'pouring-tea@3x.png',
  'pug-in-blanket@3x.png',
  'pug-toung@3x.png',
  'puppy-in-grass@3x.png',
  'puppy-on-grass@3x.png',
  'puppy-with-rope@3x.png',
  'reading-bible@3x.png',
  'reading-girl@3x.png',
  'room@3x.png',
  'rose@3x.png',
  'runner-girl@3x.png',
  'runner-man@3x.png',
  'running-on-brooklyn-bridge@3x.png',
  'sea-seagulls@3x.png',
  'sitting-on-edge@3x.png',
  'sony-phone@3x.png',
  'spices-herbs@3x.png',
  'stacked-change@3x.png',
  'statue-of-liberty@3x.png',
  'suburban-house@3x.png',
  'suitcases@3x.png',
  'sunflowers@3x.png',
  'sunset-bird@3x.png',
  'sushi@3x.png',
  'tall-coffee-glass@3x.png',
  'tangerines-in-cup@3x.png',
  'tea-at-sunrise@3x.png',
  'tea-pot@3x.png',
  'tea-with-spoon@3x.png',
  'teddy-bear-in-sweater@3x.png',
  'time@3x.png',
  'trees-sunlight@3x.png',
  'two-flowers@3x.png',
  'two-kid-friends@3x.png',
  'two-white-cherry-blossoms@3x.png',
  'typing@3x.png',
  'venus-gondola@3x.png',
  'violinist@3x.png',
  'walk-in-snowy-mountains@3x.png',
  'walking-on-beach@3x.png',
  'washing-face@3x.png',
  'water-in-glass@3x.png',
  'wave@3x.png',
  'wedding@3x.png',
  'weight-lifting@3x.png',
  'wine-glass@3x.png',
  'working-with-clay@3x.png',
  'writing-girl@3x.png',
  'yogurt-musli-blueberries@3x.png'
];