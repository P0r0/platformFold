.class public interface abstract Lcom/gionee/pay/gsp/IGnPay;
.super Ljava/lang/Object;
.source "IGnPay.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gionee/pay/gsp/IGnPay$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerCallback(Lcom/gionee/pay/gsp/IGnPayCallback;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCallback(Lcom/gionee/pay/gsp/IGnPayCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
