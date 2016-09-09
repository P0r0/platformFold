.class public Lcom/unicom/shield/unipay;
.super Ljava/lang/Object;
.source "unipay.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static install(Landroid/app/Application;Landroid/content/Context;)V
    .registers 8

    .prologue
    .line 11
    const-string v0, "me_unipay"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v4, "unipay"

    const-string v5, "unicom_classez.jar"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/unicom/shield/unipay;->install_native(Landroid/app/Application;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static native install_native(Landroid/app/Application;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static int_999(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 23
    const-string v0, "sdk_load_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 25
    const-string v1, "unipaysdk_loadpath"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 27
    return-void
.end method

.method public static native string(Ljava/lang/String;)Ljava/lang/String;
.end method
