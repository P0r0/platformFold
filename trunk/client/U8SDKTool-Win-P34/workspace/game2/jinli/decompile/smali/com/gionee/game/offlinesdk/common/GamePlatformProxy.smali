.class public abstract Lcom/gionee/game/offlinesdk/common/GamePlatformProxy;
.super Ljava/lang/Object;
.source "GamePlatformProxy.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract checkInstanllState(Landroid/app/Activity;)Z
.end method

.method public abstract createOrder(Landroid/app/Activity;Lcom/gionee/gsp/standalone/CreateOrderForStandalone;Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;)V
.end method

.method public abstract getGnInstanllPackageInfoList(Landroid/app/Activity;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnInstanllPackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract init(Landroid/content/Context;Lcom/gionee/game/offlinesdk/AppInfo;)V
.end method

.method public abstract install(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;Z)V
.end method

.method public abstract pay(Landroid/app/Activity;Lcom/gionee/gsp/GnOrderInfo;Lcom/gionee/gsp/AmigoPayer$MyPayCallback;ILjava/lang/String;)V
.end method
