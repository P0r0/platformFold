.class public Lcom/baidu/gamesdk/BDGameApplication;
.super Landroid/app/Application;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 1

    .prologue
    .line 22
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 23
    invoke-static {p0}, Lcom/baidu/gamesdk/BDGameSDK;->initApplication(Landroid/app/Application;)V

    .line 24
    return-void
.end method
