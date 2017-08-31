# -*- encoding: utf-8 -*-
# stub: instagram 0.3.2 ruby lib

Gem::Specification.new do |s|
  s.name = "instagram".freeze
  s.version = "0.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Mislav Marohni\u00C4\u0087".freeze]
  s.date = "2011-01-28"
  s.description = "Ruby library for consuming the Instagram public API.".freeze
  s.email = "mislav.marohnic@gmail.com".freeze
  s.homepage = "http://github.com/mislav/instagram".freeze
  s.rubygems_version = "2.6.8".freeze
  s.summary = "Instagram API client".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<addressable>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<yajl-ruby>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<nibbler>.freeze, [">= 1.2.0"])
    else
      s.add_dependency(%q<addressable>.freeze, [">= 0"])
      s.add_dependency(%q<yajl-ruby>.freeze, [">= 0"])
      s.add_dependency(%q<nibbler>.freeze, [">= 1.2.0"])
    end
  else
    s.add_dependency(%q<addressable>.freeze, [">= 0"])
    s.add_dependency(%q<yajl-ruby>.freeze, [">= 0"])
    s.add_dependency(%q<nibbler>.freeze, [">= 1.2.0"])
  end
end
