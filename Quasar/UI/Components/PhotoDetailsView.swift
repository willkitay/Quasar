//
//  POTDExplanation.swift
//  Quasar
//
//  Created by Will on 4/19/21.
//
import SwiftUI
import Kingfisher

struct DetailView2: View {
    var url: String
    var title: String
    var explanation: String
    var date: String

    var body: some View {
        ZStack {
            Color.background.edgesIgnoringSafeArea(.all)
            ScrollView {
                NavigationLink(destination: FullScreenView(url: url, title: title)) {
                    ImageView(title: "", url: url)
                }
                PhotoDetailsView(explanation: explanation, date: date, title: title)
            }
        }
    }
}

struct DetailView: View {
    var url: String
    var title: String
    var explanation: String
    var date: String

    var body: some View {
        ZStack {
            Color.background.edgesIgnoringSafeArea(.all)
            ScrollView {
                NavigationLink(destination: FullScreenView(url: url, title: title)) {
                    ImageView(title: "", url: url)
                }
                PhotoDetailsView(explanation: explanation, date: date, title: title)
            }
        }
    }
}

struct ImageView: View {
    var title: String
    var url: String
    
    var body: some View {

        KFImage(URL(string: url))
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(10)
            .padding([.leading, .trailing], 10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 0.1)
                    .padding([.leading, .trailing], 10)
            )
            .overlay(TitleOverlay(text: title).padding(.trailing, 10), alignment: .bottomTrailing)
    }
}

struct PhotoDetailsView: View {
    var explanation: String
    var date: String
    var title: String
    
    var body: some View {
        VStack {
            PhotoTitle(title: title)
            Explanation(text: explanation)
            PhotoDate(date: date)
        }
        .background(Color.background2)
        .cornerRadius(5)
        .padding(10)
        .foregroundColor(.white)
    }
}
    
struct PhotoCopyright: View {
    var copyright: String
    var body: some View {
        VStack(alignment: .center) {
            Text(copyright)
                .padding(.bottom)
        }
    }
}

struct Explanation: View {
    var text: String
    var body: some View {
        VStack {
            Text(text)
                .padding()
                .multilineTextAlignment(.leading)
                .lineSpacing(8)
                .cornerRadius(5)
        }
    }
}

struct PhotoDate: View {
    var date: String
    var body: some View {
        Text(date)
            .foregroundColor(.white)
//            .padding(.bottom)
    }
}

struct PhotoTitle: View {
    var title: String
    var body: some View {
        HStack {
            Text(title)
                .font(.title)
                .lineLimit(nil)
                .padding([.top, .leading, .trailing])
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var url = "https://apod.nasa.gov/apod/image/1509/TexasEclipse_Westlake_2642.jpg"
    static var title = "A Partial Solar Eclipse over Texas"
    static var previews: some View {
        ScrollView {
            ImageView(title: title, url: url)
            ImageView(title: title, url: url)
            ImageView(title: title, url: url)
            ImageView(title: title, url: url)
        }
    }
}

struct PhotoDetailsView_Previews: PreviewProvider {
    static var url = "https://imgsrc.hubblesite.org/hvi/uploads/feed_post/thumbnail/25112/MATLAS2021.jpg"
    static var explanation = "It was a typical Texas sunset except that most of the Sun was missing.  The location of the missing piece of the Sun was not a mystery -- it was behind the Moon.  Featured here is one of the more interesting images taken of a partial solar eclipse that occurred in 2012, capturing a temporarily crescent Sun setting in a reddened sky behind brush and a windmill. The image was taken about 20 miles west of Sundown, Texas, USA, just after the ring of fire effect was broken by the Moon moving away from the center of the Sun.  Today a new partial solar eclipse of the Sun will be visible from Earth.  Unfortunately for people who live in Texas, today's eclipse can only be seen from southern Africa and Antarctica."
    static var date = "2015-09-13"
    static var title = "A Partial Solar Eclipse over Texas"
    static var previews: some View {
        ZStack {
            Color.background.edgesIgnoringSafeArea(.all)
            ScrollView {
                ZStack(alignment: .bottomTrailing) {
                    ImageView(title: title, url: url)
                }
                PhotoDetailsView(explanation: explanation, date: date, title: title)
            }
        }
    }
}
