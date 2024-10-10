//
//  ViewController.swift
//  Login
//
//  Created by hyejeong im on 9/23/24.
//

import UIKit

final class ViewController: UIViewController {
    
    private let loginView = LoginView()
    
    override func loadView() {
        view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print()
        setupAddTarget()
    }
    
    func setupAddTarget() {
        loginView.loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        loginView.passwordResetButton.addTarget(self, action: #selector(resetButtonTapped), for: .touchUpInside)
    }

    // 로그인 버튼 누르면 동작하는 함수
    @objc func loginButtonTapped() {
        print("다음 화면으로 넘어가기")
    }
    
    // 리셋버튼이 눌리면 동작하는 함수
    @objc func resetButtonTapped() {
        let alert = UIAlertController(title: "비밀번호 바꾸기", message: "비밀번호를 바꾸시겠습니까?", preferredStyle: .alert)
        let confirm = UIAlertAction(title: "확인", style: .default)
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        
        alert.addAction(confirm)
        alert.addAction(cancel)
        
        self.present(alert, animated: true, completion: nil)
    }
}

