Pod::Spec.new do |s|
  s.name                      = "ModelMapper"
  s.version                   = "11.0.0"
  s.summary                   = "A JSON deserialization library for Swift"
  s.homepage                  = "https://github.com/lyft/mapper"
  s.license                   = "Apache License, Version 2.0"
  s.author                    = { "Keith Smiley" => "keithbsmiley@gmail.com" }
  s.ios.deployment_target     = "9.0"
  s.osx.deployment_target     = "10.10"
  s.tvos.deployment_target    = "9.0"
  s.watchos.deployment_target = "2.0"
  s.source                    = { :git => "https://github.com/lyft/mapper.git",
                                  :tag => s.version.to_s }
  s.requires_arc              = true
  s.module_name               = "Mapper"
  s.default_subspec           = "Core"

  s.subspec "Core" do |core|
    core.source_files = "Sources/**/*.swift"
  end

  s.subspec "NoConvertibles" do |noconvertibles|
    noconvertibles.source_files = "Sources/**/*.swift"
    noconvertibles.exclude_files = "Sources/**/*+Convertible.swift"
  end
end
