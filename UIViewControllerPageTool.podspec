Pod::Spec.new do |s|
s.name                  = 'UIViewControllerPageTool'
s.version               = '1.0'
s.summary               = '方便快速定位最上层页面，前一个页面以及页面层级'
s.homepage              = 'https://github.com/heroims/UIViewControllerPageTool'
s.license               = { :type => 'MIT'}
s.author                = { 'heroims' => 'heroims@163.com' }
s.source                = { :git => 'https://github.com/heroims/UIViewControllerPageTool.git', :tag => "#{s.version}" }
s.platform              = :ios, '6.0'
s.source_files          = 'UIViewControllerPageTool/*.{h,m}'
end
