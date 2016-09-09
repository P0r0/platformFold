.class interface abstract Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;
.super Ljava/lang/Object;
.source "WsRpcConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/net/WsRpcConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "OnInternalRpcResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResponse:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getResponseType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TTResponse;>;"
        }
    .end annotation
.end method

.method public abstract onException(Lmobisocial/longdan/exception/LongdanException;)V
.end method

.method public abstract onResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResponse;)V"
        }
    .end annotation
.end method
