.class public abstract Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;
.super Ljava/lang/Object;
.source "VoiceCodeSetCallback.java"

# interfaces
.implements Lcom/baidu/sapi2/callback/LoginStatusAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/sapi2/callback/LoginStatusAware",
        "<",
        "Lcom/baidu/sapi2/result/VoiceCodeSetResult;",
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
