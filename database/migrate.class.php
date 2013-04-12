<?php namespace database; if(!defined("DS")) die('no direct script access');

	class Migrate
	{
		public function __construct()
		{
			new \core\build\Sourjelly;

			//\core\build\Sourjelly::getDb()->createDatabase('cms');

			$this -> table_users();
			$this -> table_images();
			$this -> table_content();
			$this -> table_modules();
			$this -> table_settings();
			$this -> table_themes();
			$this -> table_ip();
			$this -> table_google_api();
		}

		protected function table_users()
		{
			\core\build\Sourjelly::getDb()->createTable("table_users",
				array(
					'firstname' => 'string',
					'lastname' => 'string',
					'username' => 'string',
					'email' => 'string',
					'password' => 'string',
					'DoB' => 'date',
					'registered_at' => 'string',
					'active' => 'int',
					'dev' => 'int',
					'premission' => 'int',
					'lang' => 'string'
				)
			);
		}

		protected function table_images()
		{
			\core\build\Sourjelly::getDb()->createTable("table_images",
				array(
					'name' => 'string',
					'ext' => 'string',
					'image' => 'blob',
				)
			);
		}

		protected function table_content()
		{
			\core\build\Sourjelly::getDb()->createTable("table_content",
				array(
					'title' => 'string',
					'content' => 'text',
					'has_parent' => 'int',
					'parent_id' => 'int',
					'menu_order' => 'int',
					'deprecated' => 'int',
					'public' => 'int',
					'visable' => 'int',
					'meta_tags' => 'string',
					'meta_description' => 'string',
					'content_class' => 'string',
					'content_id' => 'string',
					'created_at' => 'timestamp',
					'updated_at' => 'timestamp',
				)
			);
		}

		protected function table_modules()
		{
			\core\build\Sourjelly::getDb()->createTable("table_modules",
				array(
					'title' => 'string',
					'description' => 'text',
					'pages' => 'string',
					'active' => 'int',
					'position' => 'string',
					'deprecated' => 'int',
					'created_at' => 'timestamp',
					'updated_at' => 'timestamp',
				)
			);
		}

		protected function table_settings()
		{
			\core\build\Sourjelly::getDb()->createTable("table_settings",
				array(
					'displayErrors' => 'int',
					'displayStartupErrors' => 'int',
					'logErrors' => 'int',
					'trackErrors' => 'int',
					'htmlErrors' => 'int',
					'maxExecutionTime' => 'int',
					'memoryLimit' => 'int',
					'postMaxSize' => 'int',
					'uploadMaxFilesize' => 'int',
					'maxFileUploads' => 'int',
					'embeddedHtml' => 'int',
					'ipMonitoring' => 'int',
					'timezone' => 'string',
				)
			);
		}

		protected function table_themes()
		{
			\core\build\Sourjelly::getDb()->createTable("table_themes",
				array(
					'themeName' => 'string',
					'active' => 'int',
					'post' => 'text',
					'deprecated' => 'int',
				)
			);
		}

		protected function table_ip()
		{
			\core\build\Sourjelly::getDb()->createTable("table_ip",
				array(
					'remoteIp' => 'string',
					'lastOnline' => 'timestamp',
					'blacklist' => 'int'
				)
			);
		}

		protected function table_google_api()
		{
			\core\build\Sourjelly::getDb()->createTable("table_google_api",
				array(
					'uId' => 'int',
					'authToken' => 'string',
					'clientId' => 'string',
					'clientSecret' => 'string',
					'refreshToken' => 'string',
				)
			);
		}

		protected function down()
		{
			\core\build\Sourjelly::getDb()->dropTable("table_content");
			\core\build\Sourjelly::getDb()->dropTable("table_images");
			\core\build\Sourjelly::getDb()->dropTable("table_users");
			\core\build\Sourjelly::getDb()->droptable("table_modules");
		}
	}
