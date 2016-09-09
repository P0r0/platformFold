.class public Lcom/u8/sdk/plugin/U8OperatorPay;
.super Ljava/lang/Object;
.source "U8OperatorPay.java"


# static fields
.field private static instance:Lcom/u8/sdk/plugin/U8OperatorPay;


# instance fields
.field private payPlugin:Lcom/u8/sdk/IOperatorPay;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/u8/sdk/plugin/U8OperatorPay;
    .locals 1

    sget-object v0, Lcom/u8/sdk/plugin/U8OperatorPay;->instance:Lcom/u8/sdk/plugin/U8OperatorPay;

    if-nez v0, :cond_0

    new-instance v0, Lcom/u8/sdk/plugin/U8OperatorPay;

    invoke-direct {v0}, Lcom/u8/sdk/plugin/U8OperatorPay;-><init>()V

    sput-object v0, Lcom/u8/sdk/plugin/U8OperatorPay;->instance:Lcom/u8/sdk/plugin/U8OperatorPay;

    :cond_0
    sget-object v0, Lcom/u8/sdk/plugin/U8OperatorPay;->instance:Lcom/u8/sdk/plugin/U8OperatorPay;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/PluginFactory;->getInstance()Lcom/u8/sdk/PluginFactory;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/u8/sdk/PluginFactory;->initPlugin(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/IOperatorPay;

    iput-object v0, p0, Lcom/u8/sdk/plugin/U8OperatorPay;->payPlugin:Lcom/u8/sdk/IOperatorPay;

    return-void
.end method

.method public isSupport(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8OperatorPay;->payPlugin:Lcom/u8/sdk/IOperatorPay;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8OperatorPay;->payPlugin:Lcom/u8/sdk/IOperatorPay;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IOperatorPay;->isSupportMethod(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8OperatorPay;->payPlugin:Lcom/u8/sdk/IOperatorPay;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8OperatorPay;->payPlugin:Lcom/u8/sdk/IOperatorPay;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IOperatorPay;->pay(Lcom/u8/sdk/PayParams;)V

    goto :goto_0
.end method
