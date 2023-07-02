<?php
/** MySQL database name */
define( 'DB_NAME', getenv('DB_NAME') );

/** MySQL database username */
define( 'DB_USER', getenv('DB_USER') );

/** MySQL database password */
define( 'DB_PASSWORD', getenv('DB_PASSWORD') );

/** MySQL hostname */
define( 'DB_HOST', getenv('DB_HOST') );


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
/* define( 'AUTH_KEY',         'aaa' ); */
/* define( 'SECURE_AUTH_KEY',  'aaa' ); */
/* define( 'LOGGED_IN_KEY',    'aaa' ); */
/* define( 'NONCE_KEY',        'aaa' ); */
/* define( 'AUTH_SALT',        'aaa' ); */
/* define( 'SECURE_AUTH_SALT', 'aaa' ); */
/* define( 'LOGGED_IN_SALT',   'aaa' ); */
/* define( 'NONCE_SALT',       'aaa' ); */


/* define( 'CONCATENATE_SCRIPTS', false ); */

$table_prefix = 'wp_';

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
    define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
