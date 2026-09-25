# Monitune ProGuard rules.
#
# Keep Shizuku and the hidden-API bypass, which are accessed reflectively.

-keep class rikka.shizuku.** { *; }
-keep class org.lsposed.hiddenapibypass.** { *; }

# Keep the app's MethodChannel entry point.
-keep class com.goodeesh.monitune.MainActivity { *; }
