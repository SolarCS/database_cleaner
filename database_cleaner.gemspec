require 'yaml'
version = YAML.load_file 'VERSION.yml'

Gem::Specification.new do |s|
  s.name = "database_cleaner"
  s.version = "#{version[:major]}.#{version[:minor]}.#{version[:patch]}"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.required_ruby_version = ">= 1.9.3"
  s.require_paths = ["lib"]
  s.authors = ["Ben Mabey"]
  s.description = "Strategies for cleaning databases. Can be used to ensure a clean state for testing."
  s.email = "ben@benmabey.com"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.markdown",
    "TODO"
  ]
  s.files = [
    "CONTRIBUTE.markdown",
    "Gemfile.lock",
    "History.rdoc",
    "README.markdown",
    "Rakefile",
    "VERSION.yml",
    "cucumber.yml",
    "examples/Gemfile",
    "examples/Gemfile.lock",
    "examples/config/database.yml.example",
    "examples/config/redis.yml",
    "examples/db/sqlite_databases_go_here",
    "examples/features/example.feature",
    "examples/features/example_multiple_db.feature",
    "examples/features/example_multiple_orm.feature",
    "examples/features/step_definitions/activerecord_steps.rb",
    "examples/features/step_definitions/couchpotato_steps.rb",
    "examples/features/step_definitions/datamapper_steps.rb",
    "examples/features/step_definitions/mongoid_steps.rb",
    "examples/features/step_definitions/mongomapper_steps.rb",
    "examples/features/step_definitions/neo4j_steps.rb",
    "examples/features/step_definitions/translation_steps.rb",
    "examples/features/support/env.rb",
    "examples/lib/activerecord_models.rb",
    "examples/lib/couchpotato_models.rb",
    "examples/lib/datamapper_models.rb",
    "examples/lib/mongoid_models.rb",
    "examples/lib/mongomapper_models.rb",
    "examples/lib/neo4j_models.rb",
    "examples/lib/ohm_models.rb",
    "examples/lib/redis_models.rb",
    "examples/lib/sequel_models.rb",
    "features/cleaning.feature",
    "features/cleaning_default_strategy.feature",
    "features/cleaning_multiple_dbs.feature",
    "features/cleaning_multiple_orms.feature",
    "features/step_definitions/database_cleaner_steps.rb",
    "features/step_definitions/ohm_steps.rb",
    "features/step_definitions/redis_steps.rb",
    "features/support/env.rb",
    "features/support/feature_runner.rb",
    "lib/database_cleaner.rb",
    "lib/database_cleaner/active_record/base.rb",
    "lib/database_cleaner/active_record/deletion.rb",
    "lib/database_cleaner/active_record/transaction.rb",
    "lib/database_cleaner/active_record/truncation.rb",
    "lib/database_cleaner/base.rb",
    "lib/database_cleaner/configuration.rb",
    "lib/database_cleaner/couch_potato/base.rb",
    "lib/database_cleaner/couch_potato/truncation.rb",
    "lib/database_cleaner/cucumber.rb",
    "lib/database_cleaner/data_mapper/base.rb",
    "lib/database_cleaner/data_mapper/transaction.rb",
    "lib/database_cleaner/data_mapper/truncation.rb",
    "lib/database_cleaner/generic/base.rb",
    "lib/database_cleaner/generic/transaction.rb",
    "lib/database_cleaner/generic/truncation.rb",
    "lib/database_cleaner/mongo/base.rb",
    "lib/database_cleaner/mongo/truncation.rb",
    "lib/database_cleaner/mongo/truncation_mixin.rb",
    "lib/database_cleaner/mongo_mapper/base.rb",
    "lib/database_cleaner/mongo_mapper/truncation.rb",
    "lib/database_cleaner/mongoid/base.rb",
    "lib/database_cleaner/mongoid/truncation.rb",
    "lib/database_cleaner/moped/base.rb",
    "lib/database_cleaner/moped/truncation.rb",
    "lib/database_cleaner/moped/truncation_base.rb",
    "lib/database_cleaner/neo4j/base.rb",
    "lib/database_cleaner/neo4j/deletion.rb",
    "lib/database_cleaner/neo4j/transaction.rb",
    "lib/database_cleaner/neo4j/truncation.rb",
    "lib/database_cleaner/null_strategy.rb",
    "lib/database_cleaner/ohm/truncation.rb",
    "lib/database_cleaner/redis/base.rb",
    "lib/database_cleaner/redis/truncation.rb",
    "lib/database_cleaner/sequel/base.rb",
    "lib/database_cleaner/sequel/deletion.rb",
    "lib/database_cleaner/sequel/transaction.rb",
    "lib/database_cleaner/sequel/truncation.rb",
    "spec/database_cleaner/active_record/base_spec.rb",
    "spec/database_cleaner/active_record/transaction_spec.rb",
    "spec/database_cleaner/active_record/truncation/mysql2_spec.rb",
    "spec/database_cleaner/active_record/truncation/mysql_spec.rb",
    "spec/database_cleaner/active_record/truncation/postgresql_spec.rb",
    "spec/database_cleaner/active_record/truncation/shared_fast_truncation.rb",
    "spec/database_cleaner/active_record/truncation/sqlite3_spec.rb",
    "spec/database_cleaner/active_record/truncation_spec.rb",
    "spec/database_cleaner/base_spec.rb",
    "spec/database_cleaner/configuration_spec.rb",
    "spec/database_cleaner/couch_potato/truncation_spec.rb",
    "spec/database_cleaner/data_mapper/base_spec.rb",
    "spec/database_cleaner/data_mapper/transaction_spec.rb",
    "spec/database_cleaner/data_mapper/truncation/sqlite3_spec.rb",
    "spec/database_cleaner/data_mapper/truncation_spec.rb",
    "spec/database_cleaner/generic/base_spec.rb",
    "spec/database_cleaner/generic/truncation_spec.rb",
    "spec/database_cleaner/mongo/mongo_examples.rb",
    "spec/database_cleaner/mongo/truncation_spec.rb",
    "spec/database_cleaner/mongo_mapper/base_spec.rb",
    "spec/database_cleaner/mongo_mapper/mongo_examples.rb",
    "spec/database_cleaner/mongo_mapper/truncation_spec.rb",
    "spec/database_cleaner/moped/moped_examples.rb",
    "spec/database_cleaner/moped/truncation_spec.rb",
    "spec/database_cleaner/neo4j/base_spec.rb",
    "spec/database_cleaner/neo4j/transaction_spec.rb",
    "spec/database_cleaner/ohm/truncation_spec.rb",
    "spec/database_cleaner/redis/base_spec.rb",
    "spec/database_cleaner/redis/truncation_spec.rb",
    "spec/database_cleaner/sequel/base_spec.rb",
    "spec/database_cleaner/sequel/deletion_spec.rb",
    "spec/database_cleaner/sequel/transaction_spec.rb",
    "spec/database_cleaner/sequel/truncation/sqlite3_spec.rb",
    "spec/database_cleaner/sequel/truncation_spec.rb",
    "spec/database_cleaner/shared_strategy.rb",
    "spec/rcov.opts",
    "spec/spec_helper.rb",
    "spec/support/active_record/database_setup.rb",
    "spec/support/active_record/mysql2_setup.rb",
    "spec/support/active_record/mysql_setup.rb",
    "spec/support/active_record/postgresql_setup.rb",
    "spec/support/active_record/schema_setup.rb",
    "spec/support/active_record/sqlite3_setup.rb",
    "spec/support/data_mapper/schema_setup.rb",
    "spec/support/data_mapper/sqlite3_setup.rb"
  ]
  s.homepage = "http://github.com/DatabaseCleaner/database_cleaner"
  s.license = 'MIT'

  s.rubygems_version = "2.4.5"
  s.summary = "Strategies for cleaning databases.  Can be used to ensure a clean state for testing."

  s.add_development_dependency "rake"
  s.add_development_dependency "bundler"
  s.add_development_dependency "json_pure"
  s.add_development_dependency "activerecord-mysql2-adapter" unless RUBY_PLATFORM =~ /java/
  s.add_development_dependency "activerecord"
  s.add_development_dependency "datamapper"
  s.add_development_dependency "dm-migrations"
  s.add_development_dependency "dm-sqlite-adapter"
  s.add_development_dependency "mongoid"
  s.add_development_dependency "tzinfo"
  s.add_development_dependency "mongoid-tree"
  s.add_development_dependency "mongo_mapper"
  s.add_development_dependency "moped"
  s.add_development_dependency "neo4j-core"
  s.add_development_dependency "couch_potato"
  s.add_development_dependency "sequel", "~> 3.21.0"
  s.add_development_dependency 'ohm', '~> 0.1.3'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency "rspec-rails", "~> 2.11.0"
  s.add_development_dependency "cucumber"

  unless RUBY_PLATFORM =~ /java/
    s.add_development_dependency "mongo_ext"
    s.add_development_dependency "bson_ext"
    s.add_development_dependency 'mysql', '~> 2.9.1'
    s.add_development_dependency 'mysql2'
    s.add_development_dependency 'pg'
    s.add_development_dependency "sqlite3-ruby" if RUBY_VERSION < "1.9"
    s.add_development_dependency "sqlite3" if RUBY_VERSION >= "1.9"
  else
    s.add_development_dependency "activerecord-jdbc-adapter"
  end
end
