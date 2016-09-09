.class public Lcom/u8/sdk/JinLiProxyApplication;
.super Landroid/app/Application;
.source "JinLiProxyApplication.java"

# interfaces
.implements Lcom/u8/sdk/IApplicationListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onProxyAttachBaseContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 19
    return-void
.end method

.method public onProxyConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 25
    return-void
.end method

.method public onProxyCreate()V
    .registers 1

    .prologue
    .line 13
    return-void
.end method

.method public onTerminate()V
    .registers 1

    .prologue
    .line 31
    return-void
.end method
