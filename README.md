<p align="center">
    <img src="logo.svg" alt="flutter-project-r411-banner" width="800">
</p>
<p align="center">
    <em></em>
</p>
<p align="center">
    <img src="https://img.shields.io/github/license/Fydyr/flutter-project-r411?style=flat&logo=opensourceinitiative&logoColor=white&color=0080ff" alt="license">
    <img src="https://img.shields.io/github/last-commit/Fydyr/flutter-project-r411?style=flat&logo=git&logoColor=white&color=0080ff" alt="last-commit">
    <img src="https://img.shields.io/github/languages/top/Fydyr/flutter-project-r411?style=flat&color=0080ff" alt="repo-top-language">
    <img src="https://img.shields.io/github/languages/count/Fydyr/flutter-project-r411?style=flat&color=0080ff" alt="repo-language-count">
</p>
<p align="center">Built with the tools and technologies:</p>
<p align="center">
    <img src="https://img.shields.io/badge/Swift-F05138.svg?style=flat&logo=Swift&logoColor=white" alt="Swift">
    <img src="https://img.shields.io/badge/HTML5-E34F26.svg?style=flat&logo=HTML5&logoColor=white" alt="HTML5">
    <img src="https://img.shields.io/badge/Gradle-02303A.svg?style=flat&logo=Gradle&logoColor=white" alt="Gradle">
    <img src="https://img.shields.io/badge/Dart-0175C2.svg?style=flat&logo=Dart&logoColor=white" alt="Dart">
    <img src="https://img.shields.io/badge/CMake-064F8C.svg?style=flat&logo=CMake&logoColor=white" alt="CMake">
    <img src="https://img.shields.io/badge/C-A8B9CC.svg?style=flat&logo=C&logoColor=black" alt="C">
    <img src="https://img.shields.io/badge/java-%23ED8B00.svg?style=flat&logo=openjdk&logoColor=white" alt="java">
</p>
<br>

## 🔗 Table of Contents

- [🔗 Table of Contents](#-table-of-contents)
- [📍 Overview](#-overview)
- [👾 Features](#-features)
- [📁 Project Structure](#-project-structure)
  - [📂 Project Index](#-project-index)
- [🚀 Getting Started](#-getting-started)
  - [☑️ Prerequisites](#️-prerequisites)
  - [⚙️ Installation](#️-installation)
  - [🤖 Usage](#-usage)
- [🔰 Contributing](#-contributing)
- [🙌 Acknowledgments](#-acknowledgments)

---

## 📍 Overview

This project is an application tcg pokemon that lets the user open packs of 5 cards and view the collected cards in a collection

---

## 👾 Features



---

## 📁 Project Structure

```sh
└── flutter-project-r411/
    ├── README.md
    ├── analysis_options.yaml
    ├── android
    │   ├── .gitignore
    │   ├── app
    │   │   ├── build.gradle
    │   │   └── src
    │   │       ├── debug
    │   │       ├── main
    │   │       └── profile
    │   ├── build.gradle
    │   ├── gradle
    │   │   └── wrapper
    │   │       └── gradle-wrapper.properties
    │   ├── gradle.properties
    │   └── settings.gradle
    ├── images
    │   ├── backgrounds
    │   │   ├── background_game_menu_pack.jpg
    │   │   └── background_screen_title.jpg
    │   ├── banners
    │   │   ├── banner_pack_charizard.jpg
    │   │   ├── banner_pack_mew.jpg
    │   │   └── banner_pack_pickachu.jpg
    │   ├── images_cards
    │   │   ├── Bulbizard.png
    │   │   ├── Charizard.png
    │   │   ├── Mewtwo.png
    │   │   ├── Pickachu.png
    │   │   └── Ratata.png
    │   └── types
    │       ├── Bug.png
    │       ├── Dark.png
    │       ├── Dragon.png
    │       ├── Electric.png
    │       ├── Fairy.png
    │       ├── Fighting.png
    │       ├── Fire.png
    │       ├── Flying.png
    │       ├── Ghost.png
    │       ├── Grass.png
    │       ├── Ground.png
    │       ├── Ice.png
    │       ├── Normal.png
    │       ├── Poison.png
    │       ├── Psychic.png
    │       ├── Rock.png
    │       ├── Steel.png
    │       └── Water.png
    ├── ios
    │   ├── .gitignore
    │   ├── Flutter
    │   │   ├── AppFrameworkInfo.plist
    │   │   ├── Debug.xcconfig
    │   │   └── Release.xcconfig
    │   ├── Runner
    │   │   ├── AppDelegate.swift
    │   │   ├── Assets.xcassets
    │   │   │   ├── AppIcon.appiconset
    │   │   │   └── LaunchImage.imageset
    │   │   ├── Base.lproj
    │   │   │   ├── LaunchScreen.storyboard
    │   │   │   └── Main.storyboard
    │   │   ├── Info.plist
    │   │   └── Runner-Bridging-Header.h
    │   ├── Runner.xcodeproj
    │   │   ├── project.pbxproj
    │   │   ├── project.xcworkspace
    │   │   │   ├── contents.xcworkspacedata
    │   │   │   └── xcshareddata
    │   │   └── xcshareddata
    │   │       └── xcschemes
    │   ├── Runner.xcworkspace
    │   │   ├── contents.xcworkspacedata
    │   │   └── xcshareddata
    │   │       ├── IDEWorkspaceChecks.plist
    │   │       └── WorkspaceSettings.xcsettings
    │   └── RunnerTests
    │       └── RunnerTests.swift
    ├── lib
    │   ├── api
    │   │   ├── api_helper.dart
    │   │   └── dio_provider.dart
    │   ├── app_const.dart
    │   ├── data
    │   │   ├── nb_cards_data.dart
    │   │   └── pokemon_data.dart
    │   ├── database
    │   │   ├── attack
    │   │   │   ├── attack_data.dart
    │   │   │   ├── attack_data.g.dart
    │   │   │   └── attack_database_interraction.dart
    │   │   ├── database_service.dart
    │   │   ├── pokemon_database
    │   │   │   ├── pokemon_data.dart
    │   │   │   ├── pokemon_data.g.dart
    │   │   │   └── pokemon_database_interraction.dart
    │   │   └── type_image
    │   │       ├── type_database_interraction.dart
    │   │       ├── type_image_data.dart
    │   │       └── type_image_data.g.dart
    │   ├── home_page.dart
    │   ├── main.dart
    │   ├── store
    │   │   ├── collection_store.dart
    │   │   ├── deck_store.dart
    │   │   └── pokemon_store.dart
    │   └── widgets
    │       ├── background.dart
    │       ├── button.dart
    │       ├── card_pack.dart
    │       ├── collection_page.dart
    │       ├── drawn_cards_page.dart
    │       ├── image_card_pokemon.dart
    │       └── pokemon_card.dart
    ├── linux
    │   ├── .gitignore
    │   ├── CMakeLists.txt
    │   ├── flutter
    │   │   ├── CMakeLists.txt
    │   │   ├── generated_plugin_registrant.cc
    │   │   ├── generated_plugin_registrant.h
    │   │   └── generated_plugins.cmake
    │   └── runner
    │       ├── CMakeLists.txt
    │       ├── main.cc
    │       ├── my_application.cc
    │       └── my_application.h
    ├── macos
    │   ├── .gitignore
    │   ├── Flutter
    │   │   ├── Flutter-Debug.xcconfig
    │   │   ├── Flutter-Release.xcconfig
    │   │   └── GeneratedPluginRegistrant.swift
    │   ├── Runner
    │   │   ├── AppDelegate.swift
    │   │   ├── Assets.xcassets
    │   │   │   └── AppIcon.appiconset
    │   │   ├── Base.lproj
    │   │   │   └── MainMenu.xib
    │   │   ├── Configs
    │   │   │   ├── AppInfo.xcconfig
    │   │   │   ├── Debug.xcconfig
    │   │   │   ├── Release.xcconfig
    │   │   │   └── Warnings.xcconfig
    │   │   ├── DebugProfile.entitlements
    │   │   ├── Info.plist
    │   │   ├── MainFlutterWindow.swift
    │   │   └── Release.entitlements
    │   ├── Runner.xcodeproj
    │   │   ├── project.pbxproj
    │   │   ├── project.xcworkspace
    │   │   │   └── xcshareddata
    │   │   └── xcshareddata
    │   │       └── xcschemes
    │   ├── Runner.xcworkspace
    │   │   ├── contents.xcworkspacedata
    │   │   └── xcshareddata
    │   │       └── IDEWorkspaceChecks.plist
    │   └── RunnerTests
    │       └── RunnerTests.swift
    ├── pubspec.lock
    ├── pubspec.yaml
    ├── test
    │   └── widget_test.dart
    ├── web
    │   ├── favicon.png
    │   ├── icons
    │   │   ├── Icon-192.png
    │   │   ├── Icon-512.png
    │   │   ├── Icon-maskable-192.png
    │   │   └── Icon-maskable-512.png
    │   ├── index.html
    │   └── manifest.json
    └── windows
        ├── .gitignore
        ├── CMakeLists.txt
        ├── flutter
        │   ├── CMakeLists.txt
        │   ├── generated_plugin_registrant.cc
        │   ├── generated_plugin_registrant.h
        │   └── generated_plugins.cmake
        └── runner
            ├── CMakeLists.txt
            ├── Runner.rc
            ├── flutter_window.cpp
            ├── flutter_window.h
            ├── main.cpp
            ├── resource.h
            ├── resources
            │   └── app_icon.ico
            ├── runner.exe.manifest
            ├── utils.cpp
            ├── utils.h
            ├── win32_window.cpp
            └── win32_window.h
```


### 📂 Project Index
<details open>
    <summary><b><code>FLUTTER-PROJECT-R411/</code></b></summary>
    <details> <!-- __root__ Submodule -->
        <summary><b>__root__</b></summary>
        <blockquote>
            <table>
            <tr>
                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/analysis_options.yaml'>analysis_options.yaml</a></b></td>
            </tr>
            <tr>
                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/pubspec.yaml'>pubspec.yaml</a></b></td>
            </tr>
            </table>
        </blockquote>
    </details>
    <details> <!-- ios Submodule -->
        <summary><b>ios</b></summary>
        <blockquote>
            <details>
                <summary><b>Runner.xcworkspace</b></summary>
                <blockquote>
                    <table>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/ios/Runner.xcworkspace/contents.xcworkspacedata'>contents.xcworkspacedata</a></b></td>
                    </tr>
                    </table>
                    <details>
                        <summary><b>xcshareddata</b></summary>
                        <blockquote>
                            <table>
                            <tr>
                                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/ios/Runner.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings'>WorkspaceSettings.xcsettings</a></b></td>
                            </tr>
                            <tr>
                                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/ios/Runner.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist'>IDEWorkspaceChecks.plist</a></b></td>
                            </tr>
                            </table>
                        </blockquote>
                    </details>
                </blockquote>
            </details>
            <details>
                <summary><b>Runner.xcodeproj</b></summary>
                <blockquote>
                    <table>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/ios/Runner.xcodeproj/project.pbxproj'>project.pbxproj</a></b></td>
                    </tr>
                    </table>
                    <details>
                        <summary><b>xcshareddata</b></summary>
                        <blockquote>
                            <details>
                                <summary><b>xcschemes</b></summary>
                                <blockquote>
                                    <table>
                                    <tr>
                                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/ios/Runner.xcodeproj/xcshareddata/xcschemes/Runner.xcscheme'>Runner.xcscheme</a></b></td>
                                    </tr>
                                    </table>
                                </blockquote>
                            </details>
                        </blockquote>
                    </details>
                    <details>
                        <summary><b>project.xcworkspace</b></summary>
                        <blockquote>
                            <table>
                            <tr>
                                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/ios/Runner.xcodeproj/project.xcworkspace/contents.xcworkspacedata'>contents.xcworkspacedata</a></b></td>
                            </tr>
                            </table>
                            <details>
                                <summary><b>xcshareddata</b></summary>
                                <blockquote>
                                    <table>
                                    <tr>
                                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings'>WorkspaceSettings.xcsettings</a></b></td>
                                    </tr>
                                    <tr>
                                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist'>IDEWorkspaceChecks.plist</a></b></td>
                                    </tr>
                                    </table>
                                </blockquote>
                            </details>
                        </blockquote>
                    </details>
                </blockquote>
            </details>
            <details>
                <summary><b>Flutter</b></summary>
                <blockquote>
                    <table>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/ios/Flutter/AppFrameworkInfo.plist'>AppFrameworkInfo.plist</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/ios/Flutter/Debug.xcconfig'>Debug.xcconfig</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/ios/Flutter/Release.xcconfig'>Release.xcconfig</a></b></td>
                    </tr>
                    </table>
                </blockquote>
            </details>
            <details>
                <summary><b>RunnerTests</b></summary>
                <blockquote>
                    <table>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/ios/RunnerTests/RunnerTests.swift'>RunnerTests.swift</a></b></td>
                    </tr>
                    </table>
                </blockquote>
            </details>
            <details>
                <summary><b>Runner</b></summary>
                <blockquote>
                    <table>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/ios/Runner/Runner-Bridging-Header.h'>Runner-Bridging-Header.h</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/ios/Runner/AppDelegate.swift'>AppDelegate.swift</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/ios/Runner/Info.plist'>Info.plist</a></b></td>
                    </tr>
                    </table>
                    <details>
                        <summary><b>Assets.xcassets</b></summary>
                        <blockquote>
                            <details>
                                <summary><b>LaunchImage.imageset</b></summary>
                                <blockquote>
                                    <table>
                                    <tr>
                                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/ios/Runner/Assets.xcassets/LaunchImage.imageset/Contents.json'>Contents.json</a></b></td>
                                    </tr>
                                    </table>
                                </blockquote>
                            </details>
                            <details>
                                <summary><b>AppIcon.appiconset</b></summary>
                                <blockquote>
                                    <table>
                                    <tr>
                                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/ios/Runner/Assets.xcassets/AppIcon.appiconset/Contents.json'>Contents.json</a></b></td>
                                    </tr>
                                    </table>
                                </blockquote>
                            </details>
                        </blockquote>
                    </details>
                    <details>
                        <summary><b>Base.lproj</b></summary>
                        <blockquote>
                            <table>
                            <tr>
                                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/ios/Runner/Base.lproj/Main.storyboard'>Main.storyboard</a></b></td>
                            </tr>
                            <tr>
                                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/ios/Runner/Base.lproj/LaunchScreen.storyboard'>LaunchScreen.storyboard</a></b></td>
                            </tr>
                            </table>
                        </blockquote>
                    </details>
                </blockquote>
            </details>
        </blockquote>
    </details>
    <details> <!-- lib Submodule -->
        <summary><b>lib</b></summary>
        <blockquote>
            <table>
            <tr>
                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/lib/app_const.dart'>app_const.dart</a></b></td>
            </tr>
            <tr>
                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/lib/main.dart'>main.dart</a></b></td>
            </tr>
            <tr>
                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/lib/home_page.dart'>home_page.dart</a></b></td>
            </tr>
            </table>
            <details>
                <summary><b>store</b></summary>
                <blockquote>
                    <table>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/lib/store/pokemon_store.dart'>pokemon_store.dart</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/lib/store/collection_store.dart'>collection_store.dart</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/lib/store/deck_store.dart'>deck_store.dart</a></b></td>
                    </tr>
                    </table>
                </blockquote>
            </details>
            <details>
                <summary><b>widgets</b></summary>
                <blockquote>
                    <table>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/lib/widgets/card_pack.dart'>card_pack.dart</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/lib/widgets/pokemon_card.dart'>pokemon_card.dart</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/lib/widgets/button.dart'>button.dart</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/lib/widgets/image_card_pokemon.dart'>image_card_pokemon.dart</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/lib/widgets/background.dart'>background.dart</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/lib/widgets/drawn_cards_page.dart'>drawn_cards_page.dart</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/lib/widgets/collection_page.dart'>collection_page.dart</a></b></td>
                    </tr>
                    </table>
                </blockquote>
            </details>
            <details>
                <summary><b>api</b></summary>
                <blockquote>
                    <table>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/lib/api/api_helper.dart'>api_helper.dart</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/lib/api/dio_provider.dart'>dio_provider.dart</a></b></td>
                    </tr>
                    </table>
                </blockquote>
            </details>
            <details>
                <summary><b>database</b></summary>
                <blockquote>
                    <table>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/lib/database/database_service.dart'>database_service.dart</a></b></td>
                    </tr>
                    </table>
                    <details>
                        <summary><b>attack</b></summary>
                        <blockquote>
                            <table>
                            <tr>
                                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/lib/database/attack/attack_database_interraction.dart'>attack_database_interraction.dart</a></b></td>
                            </tr>
                            <tr>
                                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/lib/database/attack/attack_data.dart'>attack_data.dart</a></b></td>
                            </tr>
                            <tr>
                                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/lib/database/attack/attack_data.g.dart'>attack_data.g.dart</a></b></td>
                            </tr>
                            </table>
                        </blockquote>
                    </details>
                    <details>
                        <summary><b>type_image</b></summary>
                        <blockquote>
                            <table>
                            <tr>
                                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/lib/database/type_image/type_database_interraction.dart'>type_database_interraction.dart</a></b></td>
                            </tr>
                            <tr>
                                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/lib/database/type_image/type_image_data.dart'>type_image_data.dart</a></b></td>
                            </tr>
                            <tr>
                                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/lib/database/type_image/type_image_data.g.dart'>type_image_data.g.dart</a></b></td>
                            </tr>
                            </table>
                        </blockquote>
                    </details>
                    <details>
                        <summary><b>pokemon_database</b></summary>
                        <blockquote>
                            <table>
                            <tr>
                                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/lib/database/pokemon_database/pokemon_data.g.dart'>pokemon_data.g.dart</a></b></td>
                            </tr>
                            <tr>
                                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/lib/database/pokemon_database/pokemon_data.dart'>pokemon_data.dart</a></b></td>
                            </tr>
                            <tr>
                                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/lib/database/pokemon_database/pokemon_database_interraction.dart'>pokemon_database_interraction.dart</a></b></td>
                            </tr>
                            </table>
                        </blockquote>
                    </details>
                </blockquote>
            </details>
        </blockquote>
    </details>
    <details> <!-- android Submodule -->
        <summary><b>android</b></summary>
        <blockquote>
            <table>
            <tr>
                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/android/build.gradle'>build.gradle</a></b></td>
            </tr>
            <tr>
                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/android/settings.gradle'>settings.gradle</a></b></td>
            </tr>
            </table>
            <details>
                <summary><b>app</b></summary>
                <blockquote>
                    <table>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/android/app/build.gradle'>build.gradle</a></b></td>
                    </tr>
                    </table>
                    <details>
                        <summary><b>src</b></summary>
                        <blockquote>
                            <details>
                                <summary><b>main</b></summary>
                                <blockquote>
                                    <details>
                                        <summary><b>java</b></summary>
                                        <blockquote>
                                            <details>
                                                <summary><b>kinator</b></summary>
                                                <blockquote>
                                                    <details>
                                                        <summary><b>fr</b></summary>
                                                        <blockquote>
                                                            <details>
                                                                <summary><b>flutter_project_r411</b></summary>
                                                                <blockquote>
                                                                    <table>
                                                                    <tr>
                                                                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/android/app/src/main/java/kinator/fr/flutter_project_r411/MainActivity.java'>MainActivity.java</a></b></td>
                                                                    </tr>
                                                                    </table>
                                                                </blockquote>
                                                            </details>
                                                        </blockquote>
                                                    </details>
                                                </blockquote>
                                            </details>
                                        </blockquote>
                                    </details>
                                </blockquote>
                            </details>
                        </blockquote>
                    </details>
                </blockquote>
            </details>
        </blockquote>
    </details>
    <details> <!-- windows Submodule -->
        <summary><b>windows</b></summary>
        <blockquote>
            <table>
            <tr>
                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/windows/CMakeLists.txt'>CMakeLists.txt</a></b></td>
            </tr>
            </table>
            <details>
                <summary><b>flutter</b></summary>
                <blockquote>
                    <table>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/windows/flutter/CMakeLists.txt'>CMakeLists.txt</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/windows/flutter/generated_plugin_registrant.cc'>generated_plugin_registrant.cc</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/windows/flutter/generated_plugin_registrant.h'>generated_plugin_registrant.h</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/windows/flutter/generated_plugins.cmake'>generated_plugins.cmake</a></b></td>
                    </tr>
                    </table>
                </blockquote>
            </details>
            <details>
                <summary><b>runner</b></summary>
                <blockquote>
                    <table>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/windows/runner/flutter_window.h'>flutter_window.h</a></b></td>
                    </tr>
                    <tr>
                        <td><b>< href='https://github.com/Fydyr/flutter-project-r411/blob/master/windows/runner/win32_window.cpp'>win32_window.cpp</
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/windows/runner/utils.h'>utils.h</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/windows/runner/resource.h'>resource.h</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/windows/runner/Runner.rc'>Runner.rc</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/windows/runner/CMakeLists.txt'>CMakeLists.txt</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/windows/runner/flutter_window.cpp'>flutter_window.cpp</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/windows/runner/win32_window.h'>win32_window.h</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/windows/runner/runner.exe.manifest'>runner.exe.manifest</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/windows/runner/main.cpp'>main.cpp</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/windows/runner/utils.cpp'>utils.cpp</a></b></td>
                    </tr>
                    </table>
                </blockquote>
            </details>
        </blockquote>
    </details>
    <details> <!-- test Submodule -->
        <summary><b>test</b></summary>
        <blockquote>
            <table>
            <tr>
                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/test/widget_test.dart'>widget_test.dart</a></b></td>
            </tr>
            </table>
        </blockquote>
    </details>
    <details> <!-- macos Submodule -->
        <summary><b>macos</b></summary>
        <blockquote>
            <details>
                <summary><b>Runner.xcworkspace</b></summary>
                <blockquote>
                    <table>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/macos/Runner.xcworkspace/contents.xcworkspacedata'>contents.xcworkspacedata</a></b></td>
                    </tr>
                    </table>
                    <details>
                        <summary><b>xcshareddata</b></summary>
                        <blockquote>
                            <table>
                            <tr>
                                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/macos/Runner.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist'>IDEWorkspaceChecks.plist</a></b></td>
                            </tr>
                            </table>
                        </blockquote>
                    </details>
                </blockquote>
            </details>
            <details>
                <summary><b>Runner.xcodeproj</b></summary>
                <blockquote>
                    <table>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/macos/Runner.xcodeproj/project.pbxproj'>project.pbxproj</a></b></td>
                    </tr>
                    </table>
                    <details>
                        <summary><b>xcshareddata</b></summary>
                        <blockquote>
                            <details>
                                <summary><b>xcschemes</b></summary>
                                <blockquote>
                                    <table>
                                    <tr>
                                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/macos/Runner.xcodeproj/xcshareddata/xcschemes/Runner.xcscheme'>Runner.xcscheme</a></b></td>
                                    </tr>
                                    </table>
                                </blockquote>
                            </details>
                        </blockquote>
                    </details>
                    <details>
                        <summary><b>project.xcworkspace</b></summary>
                        <blockquote>
                            <details>
                                <summary><b>xcshareddata</b></summary>
                                <blockquote>
                                    <table>
                                    <tr>
                                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/macos/Runner.xcodeproj/project.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist'>IDEWorkspaceChecks.plist</a></b></td>
                                    </tr>
                                    </table>
                                </blockquote>
                            </details>
                        </blockquote>
                    </details>
                </blockquote>
            </details>
            <details>
                <summary><b>Flutter</b></summary>
                <blockquote>
                    <table>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/macos/Flutter/GeneratedPluginRegistrant.swift'>GeneratedPluginRegistrant.swift</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/macos/Flutter/Flutter-Debug.xcconfig'>Flutter-Debug.xcconfig</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/macos/Flutter/Flutter-Release.xcconfig'>Flutter-Release.xcconfig</a></b></td>
                    </tr>
                    </table>
                </blockquote>
            </details>
            <details>
                <summary><b>RunnerTests</b></summary>
                <blockquote>
                    <table>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/macos/RunnerTests/RunnerTests.swift'>RunnerTests.swift</a></b></td>
                    </tr>
                    </table>
                </blockquote>
            </details>
            <details>
                <summary><b>Runner</b></summary>
                <blockquote>
                    <table>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/macos/Runner/DebugProfile.entitlements'>DebugProfile.entitlements</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/macos/Runner/AppDelegate.swift'>AppDelegate.swift</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/macos/Runner/Info.plist'>Info.plist</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/macos/Runner/MainFlutterWindow.swift'>MainFlutterWindow.swift</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/macos/Runner/Release.entitlements'>Release.entitlements</a></b></td>
                    </tr>
                    </table>
                    <details>
                        <summary><b>Assets.xcassets</b></summary>
                        <blockquote>
                            <details>
                                <summary><b>AppIcon.appiconset</b></summary>
                                <blockquote>
                                    <table>
                                    <tr>
                                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/macos/Runner/Assets.xcassets/AppIcon.appiconset/Contents.json'>Contents.json</a></b></td>
                                    </tr>
                                    </table>
                                </blockquote>
                            </details>
                        </blockquote>
                    </details>
                    <details>
                        <summary><b>Configs</b></summary>
                        <blockquote>
                            <table>
                            <tr>
                                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/macos/Runner/Configs/AppInfo.xcconfig'>AppInfo.xcconfig</a></b></td>
                            </tr>
                            <tr>
                                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/macos/Runner/Configs/Debug.xcconfig'>Debug.xcconfig</a></b></td>
                            </tr>
                            <tr>
                                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/macos/Runner/Configs/Release.xcconfig'>Release.xcconfig</a></b></td>
                            </tr>
                            <tr>
                                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/macos/Runner/Configs/Warnings.xcconfig'>Warnings.xcconfig</a></b></td>
                            </tr>
                            </table>
                        </blockquote>
                    </details>
                    <details>
                        <summary><b>Base.lproj</b></summary>
                        <blockquote>
                            <table>
                            <tr>
                                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/macos/Runner/Base.lproj/MainMenu.xib'>MainMenu.xib</a></b></td>
                            </tr>
                            </table>
                        </blockquote>
                    </details>
                </blockquote>
            </details>
        </blockquote>
    </details>
    <details> <!-- web Submodule -->
        <summary><b>web</b></summary>
        <blockquote>
            <table>
            <tr>
                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/web/index.html'>index.html</a></b></td>
            </tr>
            <tr>
                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/web/manifest.json'>manifest.json</a></b></td>
            </tr>
            </table>
        </blockquote>
    </details>
    <details> <!-- linux Submodule -->
        <summary><b>linux</b></summary>
        <blockquote>
            <table>
            <tr>
                <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/linux/CMakeLists.txt'>CMakeLists.txt</a></b></td>
            </tr>
            </table>
            <details>
                <summary><b>flutter</b></summary>
                <blockquote>
                    <table>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/linux/flutter/CMakeLists.txt'>CMakeLists.txt</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/linux/flutter/generated_plugin_registrant.cc'>generated_plugin_registrant.cc</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/linux/flutter/generated_plugin_registrant.h'>generated_plugin_registrant.h</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/linux/flutter/generated_plugins.cmake'>generated_plugins.cmake</a></b></td>
                    </tr>
                    </table>
                </blockquote>
            </details>
            <details>
                <summary><b>runner</b></summary>
                <blockquote>
                    <table>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/linux/runner/main.cc'>main.cc</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/linux/runner/my_application.cc'>my_application.cc</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/linux/runner/CMakeLists.txt'>CMakeLists.txt</a></b></td>
                    </tr>
                    <tr>
                        <td><b><a href='https://github.com/Fydyr/flutter-project-r411/blob/master/linux/runner/my_application.h'>my_application.h</a></b></td>
                    </tr>
                    </table>
                </blockquote>
            </details>
        </blockquote>
    </details>
</details>

---

## 🚀 Getting Started

### ☑️ Prerequisites

Before getting started with flutter-project-r411, ensure your runtime environment meets the following requirements:

- **Programming Language:** Dart


### ⚙️ Installation

Install flutter-project-r411 using one of the following methods:

**Build from source:**

1. Clone the flutter-project-r411 repository:
```sh
❯ git clone https://github.com/Fydyr/flutter-project-r411
```

2. Navigate to the project directory:
```sh
❯ cd flutter-project-r411
```

3. Install the project dependencies:


**Using `pub`** &nbsp; [<img align="center" src="https://img.shields.io/badge/Dart-0175C2.svg?style={badge_style}&logo=dart&logoColor=white" />](https://dart.dev/)

```sh
❯ pub get
```

### 🤖 Usage
Run flutter-project-r411 using the following command:
**Using `pub`** &nbsp; [<img align="center" src="https://img.shields.io/badge/Dart-0175C2.svg?style={badge_style}&logo=dart&logoColor=white" />](https://dart.dev/)

```sh
❯ dart {entrypoint}
```

---

## 🔰 Contributing

- **💬 [Join the Discussions](https://github.com/Fydyr/flutter-project-r411/discussions)**: Share your insights, provide feedback, or ask questions.
- **🐛 [Report Issues](https://github.com/Fydyr/flutter-project-r411/issues)**: Submit bugs found or log feature requests for the `flutter-project-r411` project.
- **💡 [Submit Pull Requests](https://github.com/Fydyr/flutter-project-r411/blob/main/CONTRIBUTING.md)**: Review open PRs, and submit your own PRs.

<details closed>
<summary>Contributing Guidelines</summary>

1. **Fork the Repository**: Start by forking the project repository to your github account.
2. **Clone Locally**: Clone the forked repository to your local machine using a git client.
   ```sh
   git clone https://github.com/Fydyr/flutter-project-r411
   ```
3. **Create a New Branch**: Always work on a new branch, giving it a descriptive name.
   ```sh
   git checkout -b new-feature-x
   ```
4. **Make Your Changes**: Develop and test your changes locally.
5. **Commit Your Changes**: Commit with a clear message describing your updates.
   ```sh
   git commit -m 'Implemented new feature x.'
   ```
6. **Push to github**: Push the changes to your forked repository.
   ```sh
   git push origin new-feature-x
   ```
7. **Submit a Pull Request**: Create a PR against the original project repository. Clearly describe the changes and their motivations.
8. **Review**: Once your PR is reviewed and approved, it will be merged into the main branch. Congratulations on your contribution!
</details>

<details closed>
<summary>Contributor Graph</summary>
<br>
<p align="left">
   <a href="https://github.com/Fydyr/flutter-project-r411/graphs/contributors">
      <img src="https://contrib.rocks/image?repo=Fydyr/flutter-project-r411">
   </a>
</p>
</details>

---

## 🙌 Acknowledgments

**- List any resources, contributors, inspiration, etc. here.**

**List of Api use :**
- http://kinator.fr:37391
- https://raw.githubusercontent.com/PokeAPI

*For the application to work, contact Julien (kinatorrexrusse) on discord*

---
