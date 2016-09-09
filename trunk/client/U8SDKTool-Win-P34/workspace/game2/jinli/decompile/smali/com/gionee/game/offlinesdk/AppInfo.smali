.class public Lcom/gionee/game/offlinesdk/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private mApiKey:Ljava/lang/String;

.field private mIsSpecificPay:Z

.field private mPrivateKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/AppInfo;->mApiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/AppInfo;->mPrivateKey:Ljava/lang/String;

    return-object v0
.end method

.method public isSpecificPayMode()Z
    .registers 2

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/gionee/game/offlinesdk/AppInfo;->mIsSpecificPay:Z

    return v0
.end method

.method public setApiKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 9
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/AppInfo;->mApiKey:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public setPrivateKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "privateKey"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/AppInfo;->mPrivateKey:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setSpecificPayMode()V
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gionee/game/offlinesdk/AppInfo;->mIsSpecificPay:Z

    .line 26
    return-void
.end method
