.class public interface abstract Lcom/gionee/pay/gsp/IGnPayCallback;
.super Ljava/lang/Object;
.source "IGnPayCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gionee/pay/gsp/IGnPayCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract payEnd(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startActivity(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
