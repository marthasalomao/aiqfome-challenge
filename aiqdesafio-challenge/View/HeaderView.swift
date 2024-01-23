import UIKit
import SnapKit

class HeaderView: UIView {
    
    private lazy var brandIcon: UIImageView = {
        let icon = UIImageView(image: UIImage(named: "aiq-branding"))
        icon.contentMode = .scaleAspectFit
        return icon
    }()
    
    private lazy var locationIcon: UIImageView = {
        let icon = UIImageView(image: UIImage(named: "ic-location"))
        icon.contentMode = .scaleAspectFit
        return icon
    }()
    
    private lazy var deliveryLabel: UILabel = {
        let label = UILabel()
        label.text = "entregando em"
        label.textColor = Colors.light
        label.font = UIFont.NunitoBold(size: 14)
        return label
    }()
    
    private lazy var addressLabel: UILabel = {
        let label = UILabel()
        label.text = "Rua Mandaraguari, 198"
        label.textColor = Colors.white
        label.font = UIFont.NunitoBold(size: 16)
        label.textColor = .white
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var arrowIcon: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "arrow"))
        imageView.tintColor = .white
        return imageView
    }()
    
    private lazy var perfilIcon: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "ic-perfil"))
        imageView.tintColor = .white
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
        setupConstraints()
    }
    
    private func setupView() {
        addSubview(brandIcon)
        addSubview(locationIcon)
        addSubview(deliveryLabel)
        addSubview(addressLabel)
        addSubview(arrowIcon)
        addSubview(perfilIcon)
    }
    
    private func setupConstraints() {
        brandIcon.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.top.equalToSuperview().offset(16)
            $0.leading.equalToSuperview().offset(16)
            $0.height.equalTo(32)
            $0.width.equalTo(32)
        }
        
        locationIcon.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.equalTo(brandIcon.snp.trailing).offset(24)
            $0.height.equalTo(24)
            $0.width.equalTo(24)
        }
        
        deliveryLabel.snp.makeConstraints {
            $0.leading.equalTo(locationIcon.snp.trailing).offset(10)
            $0.centerY.equalTo(locationIcon.snp.centerY)
        }
        
        addressLabel.snp.makeConstraints {
            $0.leading.equalTo(deliveryLabel.snp.leading)
            $0.top.equalTo(deliveryLabel.snp.bottom).offset(2)
            $0.bottom.equalToSuperview().inset(16)
        }
        
        arrowIcon.snp.makeConstraints {
            $0.leading.equalTo(addressLabel.snp.trailing).offset(4)
            $0.centerY.equalTo(addressLabel.snp.centerY)
        }
        
        perfilIcon.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.trailing.equalToSuperview().offset(-16)
            $0.height.equalTo(32)
            $0.width.equalTo(32)
        }
    }
}
