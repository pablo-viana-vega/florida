<?php

$mailto = 'pabloviana.webmaster@gmail.com';
$subject = 'Florida test';
$body = 'Florida Florida Florida Florida Florida Florida Florida';
$headers = 'From: site@site.com';

if (mail($mailto, $subject, $body, $headers)) {
    echo "foi";
} else {
    echo "erro";
}
