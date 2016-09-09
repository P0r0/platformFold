.class public Lcom/u8/sdk/operatorPayProxyApplication;
.super Ljava/lang/Object;
.source "operatorPayProxyApplication.java"

# interfaces
.implements Lcom/u8/sdk/IApplicationListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProxyAttachBaseContext(Landroid/content/Context;)V
    .registers 3
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/secneo/mmb/Helper;->install(Landroid/app/Application;)V

    .line 23
    return-void
.end method

.method public onProxyConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 29
    return-void
.end method

.method public onProxyCreate()V
    .registers 2

    .prologue
    .line 15
    const-string v0, "megjb"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public onTerminate()V
    .registers 1

    .prologue
    .line 35
    return-void
.end method
