Pod::Spec.new do |s|
  s.name = 'CombineCombineLatestArity'
  s.version = '1.0.2'
  s.license = 'MIT'
  s.summary = 'Combine extension allowing to use `combineLatest` with up-to 26 other publishers'
  s.homepage = 'https://github.com/clementpadovani/Combine-CombineLatestArity'
  s.author = 'Clement Padovani'
  s.source = { :git => 'https://github.com/clementpadovani/Combine-CombineLatestArity.git', :tag => s.version }

  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '10.15'
  s.tvos.deployment_target = '13.0'
  s.watchos.deployment_target = '6.0'

  s.source_files = 'Sources/CombineCombineLatestArity/*.swift'

  s.frameworks = 'Combine'

  s.swift_version = '5.0'

  s.static_framework = true
end
