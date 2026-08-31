# ProGuard rules for KasmVNC Android Client

# Keep all Kotlin classes
-keep class kotlin.** { *; }
-keep class kotlinx.** { *; }

# Keep Jetpack Compose
-keep class androidx.compose.** { *; }

# Keep Android lifecycle classes
-keep class androidx.lifecycle.** { *; }

# Keep WebView
-keep class android.webkit.** { *; }

# Keep OkHttp
-keep class okhttp3.** { *; }
-keep class okio.** { *; }

# Keep retrofit/serialization
-keep class com.google.gson.** { *; }
-keepclassmembers class * {
    @com.google.gson.annotations.SerializedName <fields>;
}

# Keep kotlinx-serialization
-keep class kotlinx.serialization.** { *; }
-keepclassmembers class * {
    @kotlinx.serialization.Serializable <fields>;
}

# Keep SecurityException and related security classes
-keep class android.security.** { *; }
-keep class javax.net.ssl.** { *; }

# Keep our app packages
-keep class com.kasmtech.kasmvnc.** { *; }
-keepclassmembers class com.kasmtech.kasmvnc.** {
    <init>(...);
    <fields>;
    <methods>;
}

# Keep DataStore classes
-keep class androidx.datastore.** { *; }

# Remove logging in release builds
-assumenosideeffects class android.util.Log {
    public static *** d(...);
    public static *** v(...);
    public static *** i(...);
}

# Optimization settings
-optimizationpasses 5
-dontusemixedcaseclassnames
-verbose

# Remove unused code
-dontnote **
-dontwarn **
-ignorewarnings
