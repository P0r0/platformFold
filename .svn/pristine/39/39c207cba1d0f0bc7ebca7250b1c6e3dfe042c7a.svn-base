.class public Lcom/u8/sdk/OppoUser;
.super Lcom/u8/sdk/U8UserAdapter;
.source "OppoUser.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/u8/sdk/U8UserAdapter;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public exit()V
    .registers 2

    .prologue
    .line 16
    invoke-static {}, Lcom/u8/sdk/OppoSDK;->getInstance()Lcom/u8/sdk/OppoSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/OppoSDK;->sdkExit()V

    .line 17
    return-void
.end method

.method public isSupportMethod(Ljava/lang/String;)Z
    .registers 3
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 10
    const/4 v0, 0x1

    return v0
.end method
