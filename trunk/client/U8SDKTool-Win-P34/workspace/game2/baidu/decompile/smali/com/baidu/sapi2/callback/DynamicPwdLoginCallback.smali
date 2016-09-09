.class public abstract Lcom/baidu/sapi2/callback/DynamicPwdLoginCallback;
.super Ljava/lang/Object;
.source "DynamicPwdLoginCallback.java"

# interfaces
.implements Lcom/baidu/sapi2/callback/SapiCallbackInterceptor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/sapi2/callback/SapiCallbackInterceptor",
        "<",
        "Lcom/baidu/sapi2/result/DynamicPwdLoginResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeSuccess(Lcom/baidu/sapi2/result/DynamicPwdLoginResult;)V
    .registers 2
    .param p1, "result"    # Lcom/baidu/sapi2/result/DynamicPwdLoginResult;

    .prologue
    .line 15
    return-void
.end method

.method public bridge synthetic beforeSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 11
    check-cast p1, Lcom/baidu/sapi2/result/DynamicPwdLoginResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/sapi2/callback/DynamicPwdLoginCallback;->beforeSuccess(Lcom/baidu/sapi2/result/DynamicPwdLoginResult;)V

    return-void
.end method
