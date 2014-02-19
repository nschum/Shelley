Pod::Spec.new do |s|
  s.name = 'Shelley'
  s.version = '1.0.1'
  s.summary = 'View selection engine used in Frank.'
  s.homepage = 'https://github.com/testingwithfrank/Shelley'
  s.license = 'Apache2'
  s.authors = {
    'Pete Hodgson' => 'github@thepete.net'
  }
  s.source = {
    :git => 'https://github.com/TestingWithFrank/Shelley.git',
    :tag => "#{s.version}"
  }

  s.framework = 'CoreGraphics'

  s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
    core.source_files = 'Source/Shared/**/*.{h,m}'
    core.ios.source_files = 'Source/iOS/**/*.{h,m}'
    core.osx.source_files = 'Source/Mac/**/*.{h,m}'
  end

  # Subspec that registers itself with Frank
  s.subspec 'Frank' do |frank|
    frank.dependency 'Shelley/Core'
    frank.source_files = 'Source/Frank/**/*.{h,m}'
  end

end
