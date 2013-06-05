<?php namespace core\access; if(!defined("DS")) die('no direct script access!');

	/**
	 * @author Kevin Newesil <newesil.kevin@gmail.com>
	 * @version 1.1.0.0
	 * 
	 */
	final class Redirect
	{
		/**
		 * This function creates a redirect to a requested path, and sends the user there.
		 * The notice and sort variables make it possible to send a message to the user, and give the message a style
		 * eg: error, warning, success, and info
		 * @param string $path   path the user should be redirected to.
		 * @param string $notice the 'error' message for the user.
		 * @param string $sort   the sort of message that the user should see. success message, warning message etc.
		 */
		final public static function To($path = NULL,$notice = NULL,$sort = 'warning')
		{
			$path == NULL ? Redirect::Home("You have to define a path!") : '';

			$notice != NULL ? $_SESSION['notice'] = $notice : '';
			$_SESSION['notice_sort'] = $sort;
			
			header('location: ' . $path);
			exit();
		}

		/**
		 * This function redirects the user to the home page of the system, and shows them an error.
		 * very usefull if certain pages won't work, and thus give a system crash otherwhise.
		 * @param string $notice the 'error' message the user should see.
		 * @param string $sort   the sort of message that the user should see. success message, warning message etc.
		 */
		final public static function Home($notice = NULL,$sort = 'warning')
		{
			$notice != NULL ? $_SESSION['notice'] = $notice : '';
			$_SESSION['notice_sort'] = $sort;
			
			header('location:' . HOME_PATH);
			exit();
		}

		/**
		 * uses a session variable to redirect the user back to the previous page.
		 */
		final public static function Back()
		{
			header('location:' . $_SESSION['PREV_URL']);
			exit();
		}

		/**
		 * Function that gets the current page ,and reloads it.
		 * @param string $notice The message the user should see after being redirected
		 * @param string $sort   The sort of message that the user should see. success message, warning message etc.
		 */
		final public static function Refresh($notice = NULL,$sort = 'warning')
		{
			// if(isset($_SESSION['system_reset']) && $_SESSION['system_reset'] !== true)
			// {
				$notice != NULL ? $_SESSION['notice'] = $notice : '';
				$_SESSION['notice_sort'] = $sort;

				if(isset($_SESSION['system_reset']) && $_SESSION['system_reset'] == 'pre')
					$_SESSION['system_reset'] = true;

				header('location:' . $_SERVER['REQUEST_URI']);
				exit();
			// }
			// else
				// unset($_SESSION['system_reset']);
		}

		/**
		 * Redirects the user to the install path, so that the system can be installed. ONLY USED ON FIRST REQUEST.
		 * @param  string $notice The message the user should see after being redirected
		 * @param  string $sort   The sort of message that the user should see. success message, warning message etc.
		 */
		final public static function install($notice = NULL , $sort = 'warning')
		{
			$notice != NULL ? $_SESSION['notice'] = $notice : '';
			$_SESSION['notice_sort'] = $sort;
			header('location:' . INSTALL_PATH);
			exit();
		}
	}
