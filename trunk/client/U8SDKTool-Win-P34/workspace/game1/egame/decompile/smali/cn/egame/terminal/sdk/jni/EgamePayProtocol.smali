.class public Lcn/egame/terminal/sdk/jni/EgamePayProtocol;
.super Ljava/lang/Object;
.source "EgamePayProtocol.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "egamepay_dr2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native call(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public static native call(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public static native callCore(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public static native callCore(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public static native initCore(Landroid/content/Context;)Lcn/egame/terminal/sdk/jni/ProtocolMessage;
.end method

.method public static native initPay(Landroid/content/Context;)Lcn/egame/terminal/sdk/jni/ProtocolMessage;
.end method

.method public static native pay(Landroid/content/Context;Ljava/util/Map;Lcn/egame/terminal/paysdk/EgamePayListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<**>;",
            "Lcn/egame/terminal/paysdk/EgamePayListener;",
            ")V"
        }
    .end annotation
.end method
