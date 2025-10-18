plugins {
    id("com.android.application")
    id("kotlin-android")
    // يجب أن يكون Flutter plugin بعد Android وKotlin
    id("dev.flutter.flutter-gradle-plugin")
    // ✅ أضف هذا السطر لتفعيل Google Services
    id("com.google.gms.google-services")
}

android {
    namespace = "com.example.ecommerce"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.example.ecommerce"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // لاحقًا يمكنك استبدال التوقيع المفعل هنا بتوقيعك الحقيقي
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    // ✅ أضف منصة Firebase BoM
    implementation(platform("com.google.firebase:firebase-bom:34.4.0"))

    // ✅ أضف مكتبة Firebase التي تحتاجها (مثلاً Analytics)
    implementation("com.google.firebase:firebase-analytics")

    // يمكنك لاحقًا إضافة أي مكتبات أخرى مثل:
    // implementation("com.google.firebase:firebase-auth")
    // implementation("com.google.firebase:firebase-firestore")
}
