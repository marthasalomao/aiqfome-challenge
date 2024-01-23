import UIKit
import SnapKit

class SizeInfoView: UIView {
    
    private lazy var questionSizeLabel: UILabel = {
        let label = UILabel()
        label.text = "qual o tamanho?"
        label.font = UIFont.NunitoBold(size: 20)
        label.textColor = Colors.neutrals700
        return label
    }()
    
    private lazy var chooseSizeLabel: UILabel = {
        let label = UILabel()
        label.text = "escolha 1"
        label.font = UIFont.NunitoBold(size: 12)
        label.textColor = Colors.neutrals500
        return label
    }()
    
    private lazy var mandatoryButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("obrigatório", for: .normal)
        button.backgroundColor = Colors.neutrals700
        button.layer.cornerRadius = 8
        button.setTitleColor(Colors.white, for: .normal)
        button.titleLabel?.font = UIFont.NunitoBold(size: 12)
        return button
    }()
    
    private lazy var checkIcon: UIImageView = {
        let icon = UIImageView(image: UIImage(named: "empty-check"))
        icon.contentMode = .scaleAspectFit
        return icon
    }()
    
    private lazy var secondCheckIcon: UIImageView = {
        let icon = UIImageView(image: UIImage(named: "empty-check"))
        icon.contentMode = .scaleAspectFit
        return icon
    }()
    
    private lazy var discountPriceIcon: UIImageView = {
        let icon = UIImageView(image: UIImage(named: "ic-price"))
        icon.contentMode = .scaleAspectFit
        return icon
    }()
    
    private lazy var mediumSizeLabel: UILabel = {
        let label = UILabel()
        label.text = "médio"
        label.font = UIFont.NunitoRegular(size: 14)
        label.textColor = Colors.neutrals500
        return label
    }()
    
    private lazy var bigSizeLabel: UILabel = {
        let label = UILabel()
        label.text = "grande"
        label.font = UIFont.NunitoRegular(size: 14)
        label.textColor = Colors.neutrals500
        return label
    }()
    
    private lazy var discountPriceLabel: UILabel = {
        let label = UILabel()
        label.text = "de R$ 22,90 por R$ 19,90"
        label.font = UIFont.NunitoRegular(size: 14)
        label.textColor = Colors.neutrals500
        return label
    }()
    
    private lazy var bigSizePriceLabel: UILabel = {
        let label = UILabel()
        label.text = "R$ 28,90"
        label.font = UIFont.NunitoBold(size: 14)
        label.textColor = Colors.brand
        return label
    }()
    
    private lazy var secondDividerView: UIView = {
        let view = UIView()
        view.backgroundColor = Colors.neutrals100
        return view
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
        addSubview(questionSizeLabel)
        addSubview(chooseSizeLabel)
        addSubview(mandatoryButton)
        addSubview(checkIcon)
        addSubview(secondCheckIcon)
        addSubview(discountPriceIcon)
        addSubview(mediumSizeLabel)
        addSubview(bigSizeLabel)
        addSubview(discountPriceLabel)
        addSubview(bigSizePriceLabel)
        addSubview(secondDividerView)
    }
    
    private func setupConstraints() {
        
        questionSizeLabel.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.leading.equalToSuperview().offset(16)
        }
        
        mandatoryButton.snp.makeConstraints {
            $0.top.equalToSuperview().inset(22)
            $0.trailing.equalToSuperview().offset(-16)
            $0.width.equalTo(78)
        }
        
        chooseSizeLabel.snp.makeConstraints {
            $0.top.equalTo(questionSizeLabel.snp.bottom).offset(2)
            $0.leading.equalToSuperview().offset(16)
        }
        
        checkIcon.snp.makeConstraints {
            $0.top.equalTo(chooseSizeLabel.snp.bottom).offset(22)
            $0.leading.equalToSuperview().offset(16)
        }
        
        discountPriceIcon.snp.makeConstraints {
            $0.leading.equalTo(checkIcon.snp.trailing)
            $0.centerY.equalTo(checkIcon.snp.centerY)
        }
        
        mediumSizeLabel.snp.makeConstraints {
            $0.leading.equalTo(discountPriceIcon.snp.trailing)
            $0.centerY.equalTo(discountPriceIcon.snp.centerY)
        }
        
        discountPriceLabel.snp.makeConstraints {
            $0.centerY.equalTo(mediumSizeLabel.snp.centerY)
            $0.trailing.equalToSuperview().inset(32)
        }
        
        secondCheckIcon.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(16)
            $0.top.equalTo(checkIcon.snp.bottom).offset(20)
        }
        
        bigSizeLabel.snp.makeConstraints {
            $0.leading.equalTo(secondCheckIcon.snp.trailing).offset(4)
            $0.centerY.equalTo(secondCheckIcon.snp.centerY)
        }
        
        bigSizePriceLabel.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(32)
            $0.centerY.equalTo(bigSizeLabel.snp.centerY)
        }
        
        secondDividerView.snp.makeConstraints {
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.top.equalTo(secondCheckIcon.snp.bottom).inset(-20)
            $0.height.equalTo(4)

        }
        
    }
}
