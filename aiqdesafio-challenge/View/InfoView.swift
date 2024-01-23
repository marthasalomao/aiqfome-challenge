import UIKit
import SnapKit

class InfoView: UIView {
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "food-image")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private lazy var foodInfoStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.spacing = 16
        return stackView
    }()
    
    private lazy var foodNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Ceviche de salmão"
        label.font = UIFont.NunitoBold(size: 20)
        label.textColor = Colors.neutrals700
        return label
    }()
    
    private lazy var startingFromPriceLabel: UILabel = {
        let label = UILabel()
        label.text = "a partir de R$19,90"
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "salmão temperado com limão, cebola e pimenta"
        label.font = UIFont.NunitoSemiBold(size: 14)
        label.textColor = Colors.neutrals500
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var addButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("adicionar", for: .normal)
        button.backgroundColor = Colors.neutrals500
        button.layer.cornerRadius = 8
        button.setTitleColor(Colors.white, for: .normal)
        button.titleLabel?.font = UIFont.NunitoBold(size: 14)
        return button
    }()
    
    private lazy var questionLabel: UILabel = {
        let label = UILabel()
        label.text = "quantos?"
        label.font = UIFont.NunitoBold(size: 16)
        label.textColor = Colors.neutrals700
        return label
    }()
    
    private lazy var dividerView: UIView = {
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
        addSubview(imageView)
        addSubview(foodInfoStackView)
        
        foodInfoStackView.addArrangedSubview(foodNameLabel)
        foodInfoStackView.addArrangedSubview(startingFromPriceLabel)
        foodInfoStackView.addArrangedSubview(descriptionLabel)
        
        addSubview(questionLabel)
        addSubview(addButton)
        addSubview(dividerView)
    }
    
    private func setupConstraints() {
        
        imageView.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
        }
        
        foodInfoStackView.snp.makeConstraints {
            $0.top.equalTo(imageView.snp.bottom).inset(-16)
            $0.leading.equalToSuperview().inset(16)
            $0.trailing.equalToSuperview().inset(16)
        }
        
        questionLabel.snp.makeConstraints {
            $0.top.equalTo(foodInfoStackView.snp.bottom).inset(-33)
            $0.leading.equalToSuperview().offset(16)
        }
        
        addButton.snp.makeConstraints {
            $0.top.equalTo(foodInfoStackView.snp.bottom).inset(-24)
            $0.trailing.equalToSuperview().offset(-16)
            $0.width.equalTo(100)
            $0.height.equalTo(40)
        }
        
        dividerView.snp.makeConstraints {
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.top.equalTo(questionLabel.snp.bottom).inset(-33)
            $0.height.equalTo(4)
            $0.bottom.equalToSuperview().inset(16)            
        }
        
    }
}

