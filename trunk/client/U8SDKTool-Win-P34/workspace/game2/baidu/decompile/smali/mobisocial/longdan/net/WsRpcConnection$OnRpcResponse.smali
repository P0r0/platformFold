.class public interface abstract Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;
.super Ljava/lang/Object;
.source "WsRpcConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/net/WsRpcConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRpcResponse"
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
.method public abstract onException(Lmobisocial/longdan/exception/LongdanException;)V
.end method

.method public abstract onResponse(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
