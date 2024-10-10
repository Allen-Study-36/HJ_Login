# MVC

#### Model
데이터와 관련된 내용과 데이터를 관리하는 로직이 포함되어 있다.

- 구조체, 네트워크 로직, Manager 객체, Util, Extension, Constant 등

#### View
유저들에게 데이터를 보여주고, 어떻게 보여줄지 화면을 구성하는 코드들이 포함되어 있다.

- UIView를 상속해 만들어진 subclass, Core Animation, Core Graphics 등

#### Controller
앱의 핵심 로직이 포함되어 있으며, Model과 View 사이의 중재자 역할

---

#### View & Controller
- Controller는 View에 대해서 outlet을 이용해 View에게 직접 접근할 수 있다.
- View는 target - Action 구조로 사용자의 행위에 따라 필요한 함수를 호출 할 수 있다. 또한 미리 정해진 방식으로 행위에 대한 요청 (delegate), 데이터에 대한 요청(data-source)을 할 수 있다.

#### Model & Controller
- Controller는 Model에 직접적으로 접근할 수 있다.
- Model은 Notification & KVO(Key-Value Observing) 방식을 통해 Controller에게 Model의 변화를 알린다.

#### View & Model
서로 독립적이며 소통할 수 없다.

