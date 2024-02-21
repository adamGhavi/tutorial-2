# Latihan 1

## Apa saja pesan log yang dicetak pada panel Output?
--- Debugging process started ---
Godot Engine v3.5.3.stable.official.6c814135b - https://godotengine.org
OpenGL ES 3.0 Renderer: NVIDIA GeForce MX330/PCIe/SSE2
Async. shader compilation: OFF
 
Platform initialized

## Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?
Reached objective!

## Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?
ObjectiveArea memiliki node CollisionShape2D yang akan men-trigger console output "Reached objective!" ketika mendeteksi collision dengan BlueShip

# Latihan 2

## Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite. Apa fungsi dari node bertipe Sprite?
Node ini berfungsi untuk menampilkan aset visual milik objek.

## Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?
RigidBody2D dapat digerakkan sementara StaticBody2D tidak.

## Ubah nilai atribut Mass dan Weight pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?
Saat playtesting, tidak terdapat perbedaan di antara Mass dan Weight awal dan setelah kedua nilai tersebut saya ubah. Namun hal menarik yang saya amati adalah saat saya mengubah Mass di inspector, Weight juga secara otomatis mengikuti dan sebaliknya.

## Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?
BlueShip akan jatuh menembus StonePlatform. Ini sebab CollisionShape2D diperlukan untuk menentukan collision mask untuk physics engine.

## Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?
Perubahan yang saya lakukan pada Position, Rotation, dan Scale langsung terlihat secara visual. Ini sebab node Sprite meng-inherit parent node yang saya ubah atribut-atributnya. Jika saya mengubah ketiga atribut tersebut pada node CollisionShape2D milik BlueShip saja, maka perubahan yang saya lakukan tidak akan terlihat secara visual (walaupun tetap akan mempengaruhi game). Dan jika saya ubah ketiga atribut tersebut pada node Sprite saja, maka perubahannya akan langsung terlihat namun aset visual BlueShip akan ter-offset dari koordinat parent node dan collisionshape miliknya.

## Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?
Position kedua node adalah koordinat relatif dari parent node mereka, yaitu PlatformBlue. PlatformBlue memang sudah benar berada di koordinat absolut yang merepresentasikan (). 
