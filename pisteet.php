<?php
if(isset($_POST['nimi']) && isset($_POST['pisteet'])){
  $f = simplexml_load_file("pisteet.xml");
  $tulos = $f->addChild('tulos');
  $tulos->addChild('nimi',$_POST['nimi']);
  $tulos->addChild('pisteet',$_POST['pisteet']);
  $dom = new DOMDocument("1.0");
  $dom->preserveWhiteSpace = false;
  $dom->formatOutput = true;
  $dom->loadXML($f->asXML());
  $dom->save("pisteet.xml");
  header("Location:pisteet.xml");
}else{
  echo "Jokin meni nyt pahan kerran mönkään.... :/";
}

?>
