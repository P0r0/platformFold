.class public abstract Lcom/baidu/sapi2/callback/FaceCheckCallback;
.super Ljava/lang/Object;
.source "FaceCheckCallback.java"

# interfaces
.implements Lcom/baidu/sapi2/callback/LoginStatusAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/sapi2/callback/LoginStatusAware",
        "<",
        "Lcom/baidu/sapi2/result/FaceCheckResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAccountTypeConflict(Lcom/baidu/sapi2/result/FaceCheckResult;)V
.end method

.method public abstract onNeedVerify(Lcom/baidu/sapi2/result/FaceCheckResult;)V
.end method

.method public abstract onNoRegistered(Lcom/baidu/sapi2/result/FaceCheckResult;)V
.end method
