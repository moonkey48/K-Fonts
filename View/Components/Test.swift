import SwiftUI

struct Drag: View {
    // 📍 넣고싶은 이미지 이름
    let imageList: [String] = ["avocado", "chocolate"]
    // 📍 기본 이미지 => 밥그릇이미지 이름
    @State var imageName = "white"

    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                ForEach(self.imageList, id: \.self, content: { img in
                    Image(img)
                        .font(.title)
                        .onDrag { NSItemProvider(object: img as NSString) }
                })
            }

            Spacer()
            
            // 📍 여기가 drop 받는 이미지 위치, 밥그릇을 여기 두시면 됩니다.
            Image(imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .shadow(color: ColorHelper.shadow, radius: 4, x: 0 , y: 0)
                .onDrop(of: ["public.text"], delegate: DropDelegateObject(imageName: $imageName))
            
            Spacer()
            
        }

    }
}

struct DropDelegateObject: DropDelegate {
    @Binding var imageName: String

    func dropUpdated(info: DropInfo) -> DropProposal? {
        if self.imageName == "" {
            return DropProposal(operation: .forbidden)
        } else {
            return nil
        }
    }

    
    func performDrop(info: DropInfo) -> Bool {
        
        if let item = info.itemProviders(for: ["public.text"]).first {
            
            item.loadItem(forTypeIdentifier: "public.text", options: nil) { (text, err) in
                if let data = text as? Data {
                    
                    // 📍 여기서 드래그한 이미지 이름을 받아서
                    let inputStr = String(decoding: data, as: UTF8.self)

                    // 📍 Binding한 image에 이 입력을 하면 위에 @State로 설정한 이미지 이름 변경
                    self.imageName = inputStr
                }
            }
        } else {
            return false
        }

        return true
    }
}


// 1과학논문 메인 페이지를 만들어야 한다. 아래 두개의 폰트중 적절한 것은? I have to make the main page of the scientific paper. Which of the two fonts below is appropriate?
//사이언스 means “Science” in Korean


//2 아이들을 위한 동화책을 제작하려고 한다. 본문 폰트로 적절한 것은? I'm going to make a children's storybook. What is appropriate as a text font?
//미녀와공주 미녀와 공주 means a Beauty and Princess


//3 20대 청년을을 대상으로 이탈리안 레스토랑을 내려고 한다. 간판에 어울리는 폱트는? We are planning to open an Italian restaurant for young people in their 20s. What's the perfect spot for the sign?
//이탈리안 이탈리안 means Italian in Korean


//4 도시에 관한 발표 자료를 만드려고 한다. 도시에 어울리는 폰트는? I'm going to make a presentation about the city. Which font fits the city?
//도시 도시 means a city in Korean


//4 베이킹 게임을 만드려고 한다. 타이틀로 적절한 폰트는? I'm going to make a baking game. Which font is appropriate for the title?
//베이커리 베이커리 means bakery in Korean.


//5 블록체인과 관련한 웹사이트를 제작하는 중이다. 한글로 번역되었을 때 적절한 폰트 굵기는? We are creating a website related to blockchain. What is the appropriate font thickness when translated into Korean? 블록체인 means blockchain in Korean


//6 한국으로 교환학생을 온 Austin은 아카데미에서 자신만의 트렌디한 로고를 만드려고 한다. 어떤 것이 좋을까? Austin, who came to Korea as an exchange student, is trying to make his own trendy logo at the academy. What would be good?
//오스틴 is Austin in Korean


//7한국의 전통옷 한복은 그 우아함으로 유명하다. 한복을 소개하는 포스터를 만들기 위해 적절한 폰트는? Korean traditional clothes Hanbok is famous for its elegance. Which font is appropriate to make a poster that introduces Hanbok?
//한복 means the Hanbok in Korean 



//8제임스는 한글을 좋아해서 “강한남자”라는 글이 적힌 티셔츠를 제작해서 입으려고 한다. James likes Hangul, so he wants to make a T-shirt with the words "Strong Man" written on it. 강항남자 means String Man in Korean

//안나는 오는 K-POP 아이돌 콘서트에 응원 슬로건을 만드려고 한다. 어떤 슬로건을 사용하는게 더 좋을까? Anna is going to make a cheer slogan for the upcoming K-pop idol concert. Which slogan is better to use? 아이돌 means Idol in Korean
