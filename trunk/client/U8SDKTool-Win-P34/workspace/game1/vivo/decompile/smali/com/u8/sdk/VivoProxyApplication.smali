.class public Lcom/u8/sdk/VivoProxyApplication;
.super Ljava/lang/Object;
.source "VivoProxyApplication.java"

# interfaces
.implements Lcom/u8/sdk/IApplicationListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProxyAttachBaseContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 14
    return-void
.end method

.method public onProxyConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 18
    return-void
.end method

.method public onProxyCreate()V
    .registers 1

    .prologue
    .line 10
    return-void
.end method

.method public onTerminate()V
    .registers 1

    .prologue
    .line 24
    return-void
.end method
