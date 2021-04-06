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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'password' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

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
define('AUTH_KEY',         '!Y0E.q?)U~*OgWN*m-O-:9!S2cBp}Q$e,RFIp+V/SXFR[{4-4u]a)U^DA<8NNvkb');
define('SECURE_AUTH_KEY',  'mrs}ko+e?*)*rR!Qlf!^2cD,+1*q=p?=3.Id~E>p5b{(UVSY*d9  pCAy5!,=#.B');
define('LOGGED_IN_KEY',    '-KXMkfGhO :XVEUc|B4@GVHR[nZLfz,_Q=0DCIHW3zC2rZgUthjaDJ6-L?T1n1)X');
define('NONCE_KEY',        '+F$$|J`dE-UT|JrX+^uVXYkoxK+!uFodrbTWYC(utj%VCZ/ g3[*+1gEijm_W&b)');
define('AUTH_SALT',        'D|Lbyy3c8XA7TAI<?){,5!@Zs9i^In*Q2l*M[#2DhK~Ib@u&GS_.7%4W]};:D1%u');
define('SECURE_AUTH_SALT', '8*ue4fda<A%#3mIj`[$dUl7`1l24X{!%`S@5hz6 M,lKOE:2{5W<H2CO++9]`A#Z');
define('LOGGED_IN_SALT',   's&Q+MS]G*_H|,A)(wVw/0ECMR7>e3|!nnQCJy{x1nt Wtd;DoQ29kQa@u^BbKv6B');
define('NONCE_SALT',       '1V^*n=u6?c}4G]|jV6:,XIwQy`N5uP0~15FLC)LzZr 5| svlQkS*j/j8dgwHJ+?');
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
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
