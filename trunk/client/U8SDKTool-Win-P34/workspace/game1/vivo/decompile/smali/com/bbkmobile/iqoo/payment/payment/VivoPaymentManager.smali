.class public Lcom/bbkmobile/iqoo/payment/payment/VivoPaymentManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/bbkmobile/iqoo/payment/payment/VivoPaymentManager;


# instance fields
.field private b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbkmobile/iqoo/payment/payment/VivoPaymentManager;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/bbkmobile/iqoo/payment/payment/VivoPaymentManager;
    .registers 2

    sget-object v0, Lcom/bbkmobile/iqoo/payment/payment/VivoPaymentManager;->a:Lcom/bbkmobile/iqoo/payment/payment/VivoPaymentManager;

    if-nez v0, :cond_b

    new-instance v0, Lcom/bbkmobile/iqoo/payment/payment/VivoPaymentManager;

    invoke-direct {v0, p0}, Lcom/bbkmobile/iqoo/payment/payment/VivoPaymentManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bbkmobile/iqoo/payment/payment/VivoPaymentManager;->a:Lcom/bbkmobile/iqoo/payment/payment/VivoPaymentManager;

    :cond_b
    sget-object v0, Lcom/bbkmobile/iqoo/payment/payment/VivoPaymentManager;->a:Lcom/bbkmobile/iqoo/payment/payment/VivoPaymentManager;

    return-object v0
.end method


# virtual methods
.method public payResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/payment/VivoPaymentManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbkmobile/iqoo/payment/payment/OnVivoPayResultListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bbkmobile/iqoo/payment/payment/OnVivoPayResultListener;->payResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public registeListener(Lcom/bbkmobile/iqoo/payment/payment/OnVivoPayResultListener;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/payment/VivoPaymentManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public unRegistListener(Lcom/bbkmobile/iqoo/payment/payment/OnVivoPayResultListener;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/payment/VivoPaymentManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method
