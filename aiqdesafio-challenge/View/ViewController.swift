import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var headerView: HeaderView = {
        let view = HeaderView()
        view.backgroundColor = Colors.brand
        return view
    }()
    
    private lazy var infoView: InfoView = {
        let view = InfoView()
        return view
    }()
    
    private lazy var sizeInfoView: SizeInfoView = {
        let view = SizeInfoView()
        return view
    }()
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .white
        return scrollView
    }()
    
    private lazy var contentStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .fill
        return stackView
    }()
    
    private lazy var footerView: UIView = {
        let view = UIView()
        view.backgroundColor = Colors.neutrals100
        return view
    }()
    
    private lazy var footerLabel: UILabel = {
        let label = UILabel()
        label.text = "feito com 💜 em Maringá-PR"
        label.textColor = Colors.brand
        label.font = UIFont.NunitoBold(size: 14)
        return label
    }()
    
    private lazy var copyrightLabel: UILabel = {
        let label = UILabel()
        label.textColor = Colors.brand
        label.font = UIFont.NunitoBold(size: 16)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.textAlignment = .center
        label.text = "aiqfome.com © 2007-2023 aiqfome LTDA. \n CNPJ: 09.186.786/0001-58"
        return label
    }()
    
    private lazy var infoContainerView: UIView = {
        let view = UIView()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupConstraints()
    }
    
    private func setupView() {
        view.addSubview(headerView)
        view.addSubview(scrollView)
        view.addSubview(footerView)
        
        footerView.addSubview(footerLabel)
        footerView.addSubview(copyrightLabel)
        scrollView.addSubview(contentStackView)
        
        contentStackView.addArrangedSubview(infoView)
        contentStackView.addArrangedSubview(sizeInfoView)
    }
    
    private func setupConstraints() {
        
        headerView.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.height.equalTo(115)
        }
        
        scrollView.snp.makeConstraints {
            $0.top.equalTo(headerView.snp.bottom)
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.bottom.equalTo(footerView.snp.top)
        }
        
        contentStackView.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.bottom.equalToSuperview()
            $0.width.equalToSuperview()
        }
        
        footerView.snp.makeConstraints {
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.bottom.equalToSuperview()
            $0.height.equalTo(119)
        }
        
        footerLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalTo(copyrightLabel.snp.top).offset(-8)
        }
        
        copyrightLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalToSuperview().inset(24)
        }
    }
    
}
