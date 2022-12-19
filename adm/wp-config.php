<?php

/**

 * The base configuration for WordPress

 *

 * The wp-config.php creation script uses this file during the

 * installation. You don't have to use the web site, you can

 * copy this file to "wp-config.php" and fill in the values.

 *

 * This file contains the following configurations:

 *

 * * MySQL settings

 * * Secret keys

 * * Database table prefix

 * * ABSPATH

 *

 * @link https://wordpress.org/support/article/editing-wp-config-php/

 *

 * @package WordPress

 */



// ** MySQL settings - You can get this info from your web host ** //

/** The name of the database for WordPress */

define( 'DB_NAME', 'floridaluxuryma' );



/** MySQL database username */

define( 'DB_USER', 'floridaluxuryma' );



/** MySQL database password */

define( 'DB_PASSWORD', '2000@Andre@2022' );



/** MySQL hostname */

define( 'DB_HOST', '127.0.0.1' );



/** Database Charset to use in creating database tables. */

define( 'DB_CHARSET', 'utf8mb4' );



/** The Database Collate type. Don't change this if in doubt. */

define( 'DB_COLLATE', '' );



/**#@+

 * Authentication Unique Keys and Salts.

 *

 * Change these to different unique phrases!

 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}

 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.

 *

 * @since 2.6.0

 */

define( 'AUTH_KEY',         '`(&;=@7&=vuZ~L;gt8CCD_g)[fg>#k*,ID8tcB<k7aDNa,@USa ]sX<PX~Xq6734' );

define( 'SECURE_AUTH_KEY',  '#,iY=C%5m8]m~V7WDf?oTVS%RlJWf:@$}umB<1,9wDAiJ`Qc`Ri},eV%#1vn`p`B' );

define( 'LOGGED_IN_KEY',    'WR|4bq2j%273T_ Ut>$UuirxknB`bCQL(RQt2w4jYhT2u8X(tg0QA2{aX:z!C,.C' );

define( 'NONCE_KEY',        '`(Y!*_ >paGLKnQXI]^zp#,*)%^%126UN9,gVA<^ww^PgDwg|o2,.^%#@Fd62Ub@' );

define( 'AUTH_SALT',        'IA+U$eBuK<e|fKev,b*PMvSs0[`?P)b(!c~9bY^v<S@cxyG`>2>Ix$`@cUApD4G&' );

define( 'SECURE_AUTH_SALT', 'uT4&9+&m3G0tO{X.$86<8Njs!2NGn2#FYIGBV0^DkYRiO7h1O56KGB&e*wCd=KRg' );

define( 'LOGGED_IN_SALT',   'RK~,j!*jD=aF{e</]n).Io?NiE]naf@*`n;GFL$`Qa`Spa+Hggb*oJtAcMlCx4>Z' );

define( 'NONCE_SALT',       'zCW<+Ka K:z{]Z^`HGSd[L?6nrQ9$[_x#6d,F/vEFCry$?@z?Z_piAt2V~SBne)#' );



/**#@-*/



/**

 * WordPress Database Table prefix.

 *

 * You can have multiple installations in one database if you give each

 * a unique prefix. Only numbers, letters, and underscores please!

 */

$table_prefix = 'wp_';



/**

 * For developers: WordPress debugging mode.

 *

 * Change this to true to enable the display of notices during development.

 * It is strongly recommended that plugin and theme developers use WP_DEBUG

 * in their development environments.

 *

 * For information on other constants that can be used for debugging,

 * visit the documentation.

 *

 * @link https://wordpress.org/support/article/debugging-in-wordpress/

 */

define( 'WP_DEBUG', false );



/* That's all, stop editing! Happy publishing. */



/** Absolute path to the WordPress directory. */

if ( ! defined( 'ABSPATH' ) ) {

	define( 'ABSPATH', __DIR__ . '/' );

}

@ini_set( 'upload_max_filesize' , '128M' );
@ini_set( 'post_max_size', '128M');
@ini_set( 'memory_limit', '256M' );
@ini_set( 'max_execution_time', '300' );
@ini_set( 'max_input_time', '300' );


/** Sets up WordPress vars and included files. */

require_once ABSPATH . 'wp-settings.php';
