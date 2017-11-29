Pod::Spec.new do |s|
s.name                  = 'UIViewControllerPageTool'
s.version               = '1.2'
s.summary               = '方便快速定位最上层页面，前一个页面以及页面层级'
s.homepage              = 'https://github.com/heroims/UIViewControllerPageTool'
s.license               = { :type => 'MIT' , :file => 'README.md'}
s.author                = { 'heroims' => 'heroims@163.com' }
s.source                = { :git => 'https://github.com/heroims/UIViewControllerPageTool.git', :tag => "#{s.version}" }
s.platform              = :ios, '6.0'
s.source_files          = 'UIViewControllerPageTool/*.{h,m}'
s.subspec 'PageViewLevel' do |ss|
ss.source_files = 'UIViewControllerPageTool/PageViewLevel/*.{h,m}'
end
s.subspec 'PreviousController' do |sss|
sss.source_files = 'UIViewControllerPageTool/PreviousController/*.{h,m}'
end
s.subspec 'TopViewController' do |ssss|
ssss.source_files = 'UIViewControllerPageTool/TopViewController/*.{h,m}'
end

end
