-keepclassmembers class com.web3auth.single_factor_auth_flutter.* {
    <fields>;
    <init>();
    <methods>;
}
-keep class com.web3auth.singlefactorauth.** { *; }
-keep class com.web3auth.singlefactorauth.types.** { *; }
-keep class com.web3auth.singlefactorauth.** { *; }
-keep class com.web3auth.singlefactorauth.types.** { *; }

# Keep Gson serialized classes (prevents issues with reflection-based deserialization)
-keep class com.google.gson.** { *; }
-keepattributes *Annotation*

-keep class org.torusresearch.fetchnodedetails.types.** { *; }
-keepclassmembers enum * { *; }
