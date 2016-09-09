.class public interface abstract Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener;
.super Ljava/lang/Object;
.source "WsRpcConnectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/net/WsRpcConnectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPushListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onPushReceived(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
