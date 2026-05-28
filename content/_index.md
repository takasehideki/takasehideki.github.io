---
# Leave the homepage title empty to use the site title
title: ''
summary: ''
date: 2022-10-24
type: landing

sections:
  - block: resume-biography-3
    content:
      username: me
      text: ''
      headings:
        about: プロフィール
        education: 学位
        interests: 研究分野
    design:
      # Use the new Gradient Mesh which automatically adapts to the selected theme colors
      background:
        gradient_mesh:
          enable: true

      # Name heading sizing to accommodate long or short names
      name:
        size: md # Options: xs, sm, md, lg (default), xl

      # Avatar customization
      avatar:
        size: medium # Options: small (150px), medium (200px, default), large (320px), xl (400px), xxl (500px)
        shape: circle # Options: circle (default), square, rounded
        gallery:
          - /media/profile/takasehideki-majime.jpg
          - /media/profile/takasehideki-aloha.jpg
          - /media/profile/takasehideki-twitter.jpg
  - block: markdown
    content:
      title: 所属・連絡先
      subtitle: ''
      text: |-
        **本務**: [東京大学](https://www.u-tokyo.ac.jp/) 准教授

        - [大学院情報理工学系研究科](http://www.i.u-tokyo.ac.jp/) > [システム情報学専攻](https://www.i.u-tokyo.ac.jp/edu/course/ipc/)
        - 兼担: [工学部計数工学科](https://www.keisu.t.u-tokyo.ac.jp/) > [システム情報工学コース](https://www.keisu.t.u-tokyo.ac.jp/lab/ipc/)

        **兼務**

        - 一般社団法人 ROSCon JP 理事
        - 特定非営利活動法人 TOPPERS プロジェクト 運営委員

        **連絡先**

        - 〒113-8656 東京都文京区本郷7-3-1 東京大学工学部6号館2階254号室
        - TEL: 03-5841-0495
        - E-mail: takasehideki (at) hal.ipc.i.u-tokyo.ac.jp
    design:
      columns: '1'
  - block: markdown
    content:
      title: Community / 略歴 / 研究分野 / 担当講義 / 趣味
      subtitle: ''
      text: |-
        ### Community

        - [NervesJP](https://nerves-jp.connpass.com/)<br><img src="/media/community/NCJP.png" alt="NervesJP" width="200">
        - [ROS Japan Users Group (rosjp)](https://rosjp.connpass.com/)<br><img src="/media/community/rosjp.png" alt="rosjp" width="120">
        - [IoT ALGYAN](https://algyan.connpass.com/)<br><img src="/media/community/algyan.jpg" alt="IoT ALGYAN" width="280">
        - [SWEST](https://swest.toppers.jp/)<br><img src="/media/community/swest.png" alt="SWEST" width="330">

        ### 略歴

        - 1984年9月 愛知県生まれ
        - 2003年3月 愛知県立一宮高等学校普通科 卒業
        - 2007年3月 名古屋大学 工学部電気電子情報工学科 卒業（学士）
        - 2009年3月 名古屋大学 大学院情報科学研究科 博士課程前期課程 修了（修士）
        - 2009年4月 日本学術振興会 特別研究員DC1（〜2012年3月）
        - 2012年3月 名古屋大学 大学院情報科学研究科 博士課程後期課程 修了・博士（情報科学）取得
        - 2012年4月 京都大学 大学院情報学研究科 助教
        - 2015年10月 東京海洋大学 非常勤講師（〜2016年3月）
        - 2018年10月 科学技術振興機構 さきがけ研究者（〜2022年3月）
        - 2019年11月 理化学研究所 計算科学研究センター 客員研究員（〜2021年3月）
        - 2019年11月 京都大学 大学院情報学研究科 准教授（〜2021年3月）
        - 2021年4月 東京大学 大学院情報理工学系研究科 准教授

        ### 研究分野

        - 組込みシステム向けの消費エネルギー最適化技術とシステムレベル設計技術
        - ROS (Robot Operating System) を活用したロボットシステムの開発手法
        - [mROS 2: agent-less and lightweight communication library compatible with rclcpp for embedded devices](https://github.com/mROS-base/mros2)
        - 関数型言語 Elixir による IoT システム開発環境
        - [Rclex: ROS 2 Client Library for Elixir](https://github.com/rclex/rclex)
        - [箱庭: IoT/クラウドロボティクス時代の仮想シミュレーション環境](https://toppers.github.io/hakoniwa/)

        ### 担当講義

        - 学部: 3年S1S2 計算システム論第一 / 3年A1A2 計算システム論第二 / 4年S1S2 システム情報工学演習第三
        - 大学院: 奇数年度開講 計算システム特論
        - 過去の担当: 京都大学 学部3回生前期 オペレーティングシステム / 学部2回生後期 計算機科学実験及演習2（ハードウェア実習担当） / 学部3回生前期 [計算機科学実験及演習3（ハードウェア実習担当）](http://lab3.kuis.kyoto-u.ac.jp/~takase/le3a/) / 大学院前期 並列計算機アーキテクチャ / 大学院後期 ハードウェアアルゴリズム

        ### 趣味

        - Rock & Rock
        - Rock: Whiskey やら Spirits やら焼酎やらを氷で割って
        - Rock: 8ビートの音楽を地下室とか山奥とかで爆音で浴びて
    design:
      columns: '1'
  - block: markdown
    content:
      title: 研究内容
      subtitle: ''
      text: |-
        **『組込み / IoT コンピューティング基盤を支えるプラットフォーム技術と設計方法論』**について研究しています。

        組込みシステムや IoT コンピューティングを主な研究対象として、あらゆるモノ・コトとヒトを繋げる設計基盤の確立を目指しています。システムレベルの最適化や設計技術に関する研究開発に取り組んでおり、モットーは「**良いモノ**を**誰でも楽に**つくることができる世界へ」です。

        詳細は [研究内容](/research/) をご覧ください。
    design:
      columns: '1'
---
