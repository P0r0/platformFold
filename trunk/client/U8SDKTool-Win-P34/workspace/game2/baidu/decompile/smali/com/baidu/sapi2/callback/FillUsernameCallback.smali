.class public abstract Lcom/baidu/sapi2/callback/FillUsernameCallback;
.super Ljava/lang/Object;
.source "FillUsernameCallback.java"

# interfaces
.implements Lcom/baidu/sapi2/callback/LoginStatusAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/sapi2/callback/LoginStatusAware",
        "<",
        "Lcom/baidu/sapi2/result/FillUsernameResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onUserHaveUsername(Lcom/baidu/sapi2/result/FillUsernameResult;)V
.end method