.class public interface abstract Lmobisocial/longdan/net/WsRpcConnection$OnConnectivityChangedListener;
.super Ljava/lang/Object;
.source "WsRpcConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/net/WsRpcConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnConnectivityChangedListener"
.end annotation


# virtual methods
.method public abstract onSocketConnected()V
.end method

.method public abstract onSocketConnectionAttemptFailed()V
.end method

.method public abstract onSocketDisconnected()V
.end method
