Pod::Spec.new do |s|
  s.name         = "GEGIntegrationKit"
  s.version      = "0.0.3"
  s.ios.deployment_target = '11.0'
  s.license = 'MIT'
  s.summary      = "a Integration of GEG's kit."
  s.homepage     = "gegapps@vs-ssh.visualstudio.com:v3/gegapps/GPC%20Kiosk/GEGIntegrationKit"
  s.author             = { "HuaChen" => "chen.hua1@pactera.com" }
  s.source       = { :git => "gegapps@vs-ssh.visualstudio.com:v3/gegapps/GPC%20Kiosk/GEGIntegrationKit", :tag => s.version}

  s.description  = <<-DESC
                   a Integration of GEG's kit.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.requires_arc = true
  
  s.source_files =  'SQLHelper'

#s.default_subspec = 'SQLHelp'

  s.subspec 'SQLHelp' do |sp|
        sp.source_files = 'SQLHelper' 
        sp.dependency 'SQLite.swift', '~> 0.12.2'
  end

end

