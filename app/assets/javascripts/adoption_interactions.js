catArray = []
dogArray = []

$(function() {
 reply_click() 
});

function reply_click() {
  var img = document.getElementById("animal");
  var adoptionAlt = $("img").first().attr("alt");
  adoptionAlt = adoptionAlt.substring(8, 12);

  if(adoptionAlt.trim() == "dog") {
    console.log("adoptionAlt is Dog");
    getRandomDogGif();
  } else {
    console.log("adoptionAlt is Cat");
    getRandomCatGif();
  }
}

function getRandomCatGif() {
  var interactionGif = document.getElementById("interaction-gif");
  var catArray = new Array();

  catArray[0] = new Image();
  catArray[0] = "http://31.media.tumblr.com/71db1b216bec057522e1802531672943/tumblr_n573toVwW41trrowpo1_500.jpg";
  catArray[1] = new Image();
  catArray[1] = "http://31.media.tumblr.com/71db1b216bec057522e1802531672943/tumblr_n573toVwW41trrowpo1_500.jpg";
  catArray[2] = new Image();
  catArray[2] = "http://33.media.tumblr.com/5f2710dd59d8b5a4c3526eeefe12f943/tumblr_n6b4ellgP81qb6v6ro1_250.gif";
  catArray[3] = new Image();
  catArray[3] = "http://37.media.tumblr.com/62cbd9a3e2e44f8998181ea9c4e4add5/tumblr_n8verbglHJ1ttjwiao1_250.gif";
  catArray[4] = new Image();
  catArray[4] = "http://37.media.tumblr.com/c5d3c5ec3d6f9f04ee22bfcbaaf6c492/tumblr_n8tkd1ymOU1skdqfxo1_500.gif";
  catArray[5] = new Image();
  catArray[5] = "http://37.media.tumblr.com/285da56886cd29e03be3287e15f0a4c3/tumblr_n97zqeqKju1rt5dgyo1_400.gif";
  catArray[6] = new Image();
  catArray[6] = "http://33.media.tumblr.com/c3c0a24f764a2fef7dcae73c50dd2876/tumblr_na97ko6Zv01s0xjvpo1_500.gif";
  catArray[7] = new Image();
  catArray[7] = "http://37.media.tumblr.com/73de5f5be453bae47bee29f72c535a0f/tumblr_n86e6saCbg1s46wyqo1_400.gif";
  catArray[8] = new Image();
  catArray[8] = "http://38.media.tumblr.com/d9baf4764585af87beaa9c1a95343a8c/tumblr_n8ntuoPdsD1s0xjvpo1_250.gif";
  catArray[9] = new Image();
  catArray[9] = "http://33.media.tumblr.com/1ba6ee467a7afb31c6e281239cc0199a/tumblr_n99q51HpoH1svxaato1_400.gif";
  catArray[10] = new Image();
  catArray[10] = "http://31.media.tumblr.com/a50817892da1e4e308f706dd46718fa5/tumblr_n9zubjtVMj1s2ugglo1_400.gif";
  catArray[11] = new Image();
  catArray[11] = "http://31.media.tumblr.com/c3244cad880f029f4597cbf6141ce7b9/tumblr_n9kyrf774W1s2ugglo1_500.gif";
  catArray[12] = new Image();
  catArray[12] = "http://31.media.tumblr.com/13de3ad3a1d8f6dd7f0a6801ef3aa881/tumblr_n9j676WfYa1s2ugglo1_400.gif";
  catArray[13] = new Image();
  catArray[13] = "http://31.media.tumblr.com/666e6deb56dad2abc652ef60803a8824/tumblr_n8t563x7U51s2ugglo1_400.gif";
  catArray[14] = new Image();
  catArray[14] = "http://38.media.tumblr.com/f19245fb848457c9c84e1709563e34e3/tumblr_n8k7moWBsN1s2ugglo1_500.gif";
  catArray[15] = new Image();
  catArray[15] = "http://31.media.tumblr.com/45da0f7d522a9062a6814fce3a98d03a/tumblr_n8k2zsofGO1s2ugglo1_400.gif";
  catArray[16] = new Image();
  catArray[16] = "http://31.media.tumblr.com/463d288bcc1766514c80e56f60fdf200/tumblr_n8i2ouWZ081s2ugglo1_400.gif";
  catArray[17] = new Image();
  catArray[17] = "http://31.media.tumblr.com/b5c615e2965e91aacc0517060bf74464/tumblr_n8eqrwTuT31s2ugglo1_400.gif";
  catArray[18] = new Image();
  catArray[18] = "http://37.media.tumblr.com/d5b5b0199e5e73a691eb8ed8435a2f3e/tumblr_n8chnuwRjO1s2ugglo1_400.gif";
  catArray[19] = new Image();
  catArray[19] = "http://33.media.tumblr.com/323247f4fdf2cc14831bb7980bb432af/tumblr_n7zqizcvrP1s2ugglo1_400.gif";
  catArray[20] = new Image();
  catArray[20] = "http://38.media.tumblr.com/a17aa76c61ba41f51ea3b58f521db40e/tumblr_n7zqb9bTtJ1s2ugglo1_400.gif";

  var num = Math.floor( Math.random() * catArray.length );
  var gif = catArray[ num ];
  
  var img = document.getElementById("animal");
  img.src=gif;
}

function getRandomDogGif() {
  var interactionGif = document.getElementById("interaction-gif");
  var dogArray = new Array();

  dogArray[0] = new Image();
  dogArray[0] = "http://38.media.tumblr.com/663c9cfdc549e7c30b925b721f619ce1/tumblr_navczl6f4x1r5fs3uo1_400.gif";
  dogArray[1] = new Image();
  dogArray[1] = "http://38.media.tumblr.com/133c423fd39ca03fda132071d82d8693/tumblr_n0j8isqnIq1si7ew2o1_400.gif";
  dogArray[2] = new Image();
  dogArray[2] = "http://38.media.tumblr.com/19f67e90f04dbe57f52677076d742522/tumblr_n61npz36HJ1svxaato1_250.gif";
  dogArray[3] = new Image();
  dogArray[3] = "http://38.media.tumblr.com/1dd496ca226132b31c5c5955afa6e97a/tumblr_mw8131q2us1t1ovc0o1_250.gif";
  dogArray[4] = new Image();
  dogArray[4] = "http://37.media.tumblr.com/1a787ade62c69ea0a07a349c71f18567/tumblr_n4pb7iDWvA1r9pc8mo1_500.gif";
  dogArray[5] = new Image();
  dogArray[5] = "http://38.media.tumblr.com/da6779c008b0d400805ff99dc00b2466/tumblr_n4p1g18ZDg1rc7zl1o1_400.gif";
  dogArray[6] = new Image();
  dogArray[6] = "http://31.media.tumblr.com/d03a71ddf7181d157d0c873a000d8d08/tumblr_n4otptV9pa1sqcxseo1_500.gif";
  dogArray[7] = new Image();
  dogArray[7] = "http://37.media.tumblr.com/e2953f2faffa05306309a16e2cdcdca3/tumblr_msqfg4BQN11qbxi45o1_500.gif";
  dogArray[8] = new Image();
  dogArray[8] = "http://38.media.tumblr.com/96ab767e961ab4990e80127aac03f46e/tumblr_mpi5akm6D21qdlh1io1_400.gif";
  dogArray[9] = new Image();
  dogArray[9] = "http://38.media.tumblr.com/bbe3203e7515a01cc5bbd9174d0596bb/tumblr_mw84sedo5h1swrby4o3_500.gif";
  dogArray[10] = new Image();
  dogArray[10] = "http://37.media.tumblr.com/9bb53db683c6b014df6484421ab3e801/tumblr_mw84sedo5h1swrby4o2_400.gif";
  dogArray[11] = new Image();
  dogArray[11] = "http://38.media.tumblr.com/7183df27b6657fb6f5d1446ee9e2a2a4/tumblr_ms0rvj5Tbn1r5ndk1o2_400.gif";
  dogArray[12] = new Image();
  dogArray[12] = "http://38.media.tumblr.com/363bdd5e957b101e7f22f6d0c2868d6c/tumblr_muo97tHQOx1qksk74o1_250.gif";
  dogArray[13] = new Image();
  dogArray[13] = "http://37.media.tumblr.com/tumblr_m4mzfdxAVp1rx2366o1_500.gif";
  dogArray[14] = new Image();
  dogArray[14] = "http://31.media.tumblr.com/3907b8aa32a2f4862104ce53ad54ba30/tumblr_mwmsq8Qhx21qdlh1io1_400.gif";
  dogArray[15] = new Image();
  dogArray[15] = "http://37.media.tumblr.com/915b3c9771489ed5f160a6cc13c794ab/tumblr_mswjk8Qc0X1sc1uzco1_400.gif";
  dogArray[16] = new Image();
  dogArray[16] = "http://33.media.tumblr.com/43e14c3fab4669f3888571ae3be54a5f/tumblr_mo7agbtiWB1rqnxbfo1_400.gif";
  dogArray[17] = new Image();
  dogArray[17] = "http://38.media.tumblr.com/7f952df7d8d8ec2a79ee256fe8801f8d/tumblr_mopm55wyNw1sqahw0o1_250.gif";
  dogArray[18] = new Image();
  dogArray[18] = "http://38.media.tumblr.com/9a7100bdbe446ad576f8379cec0f5196/tumblr_mp2bn0AwdE1s3oe2qo1_250.gif";
  dogArray[19] = new Image();
  dogArray[19] = "http://33.media.tumblr.com/b60f2a4462843a4d48d8c83054965996/tumblr_mp3sjlL6Qh1s066hwo1_250.gif";
  dogArray[20] = new Image();
  dogArray[20] = "http://33.media.tumblr.com/5eda0b0bed9483ac129a50f6f2e07ffe/tumblr_mput26ND3P1szanzeo1_500.gif";

  var num = Math.floor( Math.random() * dogArray.length );
  var gif = dogArray[ num ];

  var img = document.getElementById("animal");
  img.src=gif;
}
