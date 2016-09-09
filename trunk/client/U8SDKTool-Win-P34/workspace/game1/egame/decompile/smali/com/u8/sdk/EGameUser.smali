.class public Lcom/u8/sdk/EGameUser;
.super Lcom/u8/sdk/U8UserAdapter;
.source "EGameUser.java"


# instance fields
.field private supportedMethodStrings:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 5
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/u8/sdk/U8UserAdapter;-><init>()V

    .line 10
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "exit"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/u8/sdk/EGameUser;->supportedMethodStrings:[Ljava/lang/String;

    .line 13
    invoke-static {}, Lcom/u8/sdk/EGameSDK;->getInstance()Lcom/u8/sdk/EGameSDK;

    move-result-object v0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getSDKParams()Lcom/u8/sdk/SDKParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/u8/sdk/EGameSDK;->initSDK(Lcom/u8/sdk/SDKParams;)V

    .line 14
    return-void
.end method


# virtual methods
.method public exit()V
    .registers 2

    .prologue
    .line 20
    invoke-static {}, Lcom/u8/sdk/EGameSDK;->getInstance()Lcom/u8/sdk/EGameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/EGameSDK;->exit()V

    .line 21
    return-void
.end method

.method public isSupportMethod(Ljava/lang/String;)Z
    .registers 3
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/u8/sdk/EGameUser;->supportedMethodStrings:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/u8/sdk/utils/Arrays;->contain([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
