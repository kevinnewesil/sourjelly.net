<?php namespace database; if(!defined("DS")) die('no direct script access');

	final class Migrate
	{
		final public function __construct()
		{
			new \core\build\Sourjelly;

			//\core\build\Sourjelly::getDb()->createDatabase('cms');

			$this -> table_users();
			$this -> table_images();
			$this -> table_content();
			$this -> table_permissions();
			$this -> table_modules();
			$this -> table_settings();
			$this -> table_themes();
			$this -> table_ip();
			$this -> table_google_api();
			$this -> table_layout();
		}

		final protected function table_users()
		{
			\core\build\Sourjelly::getDb()->createTable("table_users",
				array(
					'firstname'     => 'string',
					'lastname'      => 'string',
					'username'      => 'string',
					'email'         => 'string',
					'password'      => 'string',
					'DoB'           => 'date',
					'registered_at' => 'string',
					'active'        => 'int',
					'dev'           => 'int',
					'permissions'   => 'int',
					'lang'          => 'string'
				)
			);
		}

		final protected function table_images()
		{
			\core\build\Sourjelly::getDb()->createTable("table_images",
				array(
					'name'  => 'string',
					'ext'   => 'string',
					'image' => 'blob',
				)
			);
		}

		final protected function table_content()
		{
			\core\build\Sourjelly::getDb() -> createTable("table_content",
				array(
					'front'          => 'int',
					'back'           => 'int',
					'public'         => 'int',
					'menuVisibility' => 'int',
					'deprecated'     => 'int',
					'created_at'     => 'datetime',
					'updated_at'     => 'datetime',
				)
			);

			\core\build\Sourjelly::getDb() -> createTable("table_content_properties",
				array(
					'cId'             => 'int',
					'title'           => 'string',
					'content'         => 'text',
					'hasParent'       => 'int',
					'parentId'        => 'int',
					'menuOrder'       => 'int',
					'metaTags'        => 'string',
					'metaDescription' => 'string',
					'contentClass'    => 'string',
					'contentId'       => 'string',
				)
			);

			\core\build\Sourjelly::getDb() -> createTable("table_content_layout",
				array(
					'cId'              => 'int',
					// Content styling
					'contentTextAlign' => 'string',
					// Title styling
					'titleVisibility'  => 'int',
					'titleTextAlign'   => 'string',
					'titleFontSize'    => 'int',
				)
			);

			\core\build\Sourjelly::getDb() -> createTable("table_content_roles",
				array(
					'cId'    => 'int',
					'roleId' => 'int',
				)
			);
		}

		final protected function table_permissions()
		{
			\core\build\Sourjelly::getDb()->createTable("table_roles",
				array(
					'roleId'      => 'int',
					'permissions' => 'int',
				)
			);

			\core\build\Sourjelly::getDb()->createTable("table_roles_description",
				array(
					'title'       => 'string',
					'description' => 'text',
				)
			);

			\core\build\Sourjelly::getDb()->createTable("table_roles_description",
				array(
					'title' => 'string',
					'level' => 'int',
				)
			);
		}

		final protected function table_modules()
		{
			\core\build\Sourjelly::getDb()->createTable("table_modules",
				array(
					'title'       => 'string',
					'description' => 'text',
					'pages'       => 'string',
					'active'      => 'int',
					'position'    => 'string',
					'deprecated'  => 'int',
					'created_at'  => 'timestamp',
					'updated_at'  => 'timestamp',
				)
			);
		}

		final protected function table_settings()
		{
			\core\build\Sourjelly::getDb()->createTable("table_settings",
				array(
					'displayErrors'        => 'int',
					'displayStartupErrors' => 'int',
					'logErrors'            => 'int',
					'trackErrors'          => 'int',
					'htmlErrors'           => 'int',
					'maxExecutionTime'     => 'int',
					'memoryLimit'          => 'int',
					'postMaxSize'          => 'int',
					'uploadMaxFilesize'    => 'int',
					'maxFileUploads'       => 'int',
					'embeddedHtml'         => 'int',
					'ipMonitoring'         => 'int',
					'timezone'             => 'string',
				)
			);
		}

		final protected function table_themes()
		{
			\core\build\Sourjelly::getDb()->createTable("table_themes",
				array(
					'themeName'  => 'string',
					'active'     => 'int',
					'post'       => 'text',
					'deprecated' => 'int',
				)
			);
		}

		final protected function table_ip()
		{
			\core\build\Sourjelly::getDb()->createTable("table_ip",
				array(
					'remoteIp'   => 'string',
					'lastOnline' => 'timestamp',
					'blacklist'  => 'int'
				)
			);
		}

		final protected function table_google_api()
		{
			\core\build\Sourjelly::getDb()->createTable("table_google_api",
				array(
					'uId'          => 'int',
					'authToken'    => 'string',
					'clientId'     => 'string',
					'clientSecret' => 'string',
					'refreshToken' => 'string',
				)
			);
		}

		final protected function table_layout()
		{
			\core\build\Sourjelly::getDb() -> createTable("table_layout_navigation",
				array(
					'alwaysVisible'			=> 'int',
					'dynamicNavigation'     => 'int',
					'zIndex'                => 'int',
					'positionFromHeader'    => 'string',
					'jsFunction'            => 'string',
					'toggleAnimationStyle'  => 'string',
					'toggleTrigger'         => 'string',
					'slideInAnimationStyle' => 'string',
				)
			);
		}

		final protected function down()
		{
			\core\build\Sourjelly::getDb()->dropTable("table_content");
			\core\build\Sourjelly::getDb()->dropTable("table_images");
			\core\build\Sourjelly::getDb()->dropTable("table_users");
			\core\build\Sourjelly::getDb()->droptable("table_modules");
		}
	}
