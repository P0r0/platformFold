.class public Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;
.super Ljava/lang/Object;
.source "GameCenterSettings.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5d51e6151f2bee12L


# instance fields
.field public app_key:Ljava/lang/String;

.field public app_secret:Ljava/lang/String;

.field public isDebugModel:Z

.field public isOrientationPort:Z

.field public isSingleGame:Z

.field public pkgName:Ljava/lang/String;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isDebugModel:Z

    .line 13
    iput-boolean v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isOrientationPort:Z

    .line 20
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZZ)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isDebugModel:Z

    .line 13
    iput-boolean v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isOrientationPort:Z

    .line 24
    iput-boolean p1, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isSingleGame:Z

    .line 25
    iput-object p2, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->app_key:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->app_secret:Ljava/lang/String;

    .line 27
    iput-boolean p4, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isDebugModel:Z

    .line 28
    iput-boolean p5, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isOrientationPort:Z

    .line 29
    return-void
.end method


# virtual methods
.method public getApp_key()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->app_key:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_secret()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->app_secret:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isDebugModel()Z
    .registers 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isDebugModel:Z

    return v0
.end method

.method public isOrientationPort()Z
    .registers 2

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isOrientationPort:Z

    return v0
.end method

.method public isSingleGame()Z
    .registers 2

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isSingleGame:Z

    return v0
.end method

.method public setApp_key(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->app_key:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setApp_secret(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 44
    iput-object p1, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->app_secret:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setDebugModel(Z)V
    .registers 2

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isDebugModel:Z

    .line 53
    return-void
.end method

.method public setOrientationPort(Z)V
    .registers 2

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isOrientationPort:Z

    .line 61
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 68
    iput-object p1, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->pkgName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setSingleGame(Z)V
    .registers 2

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isSingleGame:Z

    .line 93
    return-void
.end method

.method public setVersionCode(I)V
    .registers 2

    .prologue
    .line 76
    iput p1, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->versionCode:I

    .line 77
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 84
    iput-object p1, p0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->versionName:Ljava/lang/String;

    .line 85
    return-void
.end method
