.class public abstract Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;
.super Ljava/lang/Object;
.source "IGnCreateOrderListener.java"

# interfaces
.implements Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;


# instance fields
.field private cancel:Z

.field private createOrderForStandalone:Lcom/gionee/gsp/standalone/CreateOrderForStandalone;


# direct methods
.method public constructor <init>(Lcom/gionee/gsp/standalone/CreateOrderForStandalone;)V
    .registers 2
    .param p1, "createOrderForStandalone"    # Lcom/gionee/gsp/standalone/CreateOrderForStandalone;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;->createOrderForStandalone:Lcom/gionee/gsp/standalone/CreateOrderForStandalone;

    .line 13
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;->cancel:Z

    .line 27
    return-void
.end method

.method public getCreateOrderForStandalone()Lcom/gionee/gsp/standalone/CreateOrderForStandalone;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;->createOrderForStandalone:Lcom/gionee/gsp/standalone/CreateOrderForStandalone;

    return-object v0
.end method

.method public isCancel()Z
    .registers 2

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;->cancel:Z

    return v0
.end method

.method public abstract onComplete(Lcom/gionee/gsp/GnOrderInfo;)V
.end method
