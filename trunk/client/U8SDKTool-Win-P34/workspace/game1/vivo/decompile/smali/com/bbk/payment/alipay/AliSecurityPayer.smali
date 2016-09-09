.class public Lcom/bbk/payment/alipay/AliSecurityPayer;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String;


# instance fields
.field b:Ljava/lang/Integer;

.field c:Lcom/alipay/android/app/IAlixPay;

.field d:Z

.field e:Landroid/app/Activity;

.field private f:Landroid/content/ServiceConnection;

.field private g:Lcom/alipay/android/app/IRemoteServiceCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "AliSecurityPayer"

    sput-object v0, Lcom/bbk/payment/alipay/AliSecurityPayer;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/payment/alipay/AliSecurityPayer;->b:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/bbk/payment/alipay/AliSecurityPayer;->c:Lcom/alipay/android/app/IAlixPay;

    iput-boolean v1, p0, Lcom/bbk/payment/alipay/AliSecurityPayer;->d:Z

    iput-object v2, p0, Lcom/bbk/payment/alipay/AliSecurityPayer;->e:Landroid/app/Activity;

    new-instance v0, Lcom/bbk/payment/alipay/a;

    invoke-direct {v0, p0}, Lcom/bbk/payment/alipay/a;-><init>(Lcom/bbk/payment/alipay/AliSecurityPayer;)V

    iput-object v0, p0, Lcom/bbk/payment/alipay/AliSecurityPayer;->f:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/bbk/payment/alipay/b;

    invoke-direct {v0, p0}, Lcom/bbk/payment/alipay/b;-><init>(Lcom/bbk/payment/alipay/AliSecurityPayer;)V

    iput-object v0, p0, Lcom/bbk/payment/alipay/AliSecurityPayer;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    return-void
.end method

.method static synthetic a(Lcom/bbk/payment/alipay/AliSecurityPayer;)Lcom/alipay/android/app/IRemoteServiceCallback;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/alipay/AliSecurityPayer;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    return-object v0
.end method

.method static synthetic b(Lcom/bbk/payment/alipay/AliSecurityPayer;)Landroid/content/ServiceConnection;
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/alipay/AliSecurityPayer;->f:Landroid/content/ServiceConnection;

    return-object v0
.end method


# virtual methods
.method public pay(Ljava/lang/String;Landroid/os/Handler;ILandroid/app/Activity;)Z
    .registers 9

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/bbk/payment/alipay/AliSecurityPayer;->d:Z

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    iput-boolean v0, p0, Lcom/bbk/payment/alipay/AliSecurityPayer;->d:Z

    iput-object p4, p0, Lcom/bbk/payment/alipay/AliSecurityPayer;->e:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bbk/payment/alipay/AliSecurityPayer;->c:Lcom/alipay/android/app/IAlixPay;

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/bbk/payment/alipay/AliSecurityPayer;->e:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/alipay/android/app/IAlixPay;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bbk/payment/alipay/AliSecurityPayer;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_21
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "pay thread starting .............."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/bbk/payment/alipay/c;

    invoke-direct {v2, p0, p1, p2}, Lcom/bbk/payment/alipay/c;-><init>(Lcom/bbk/payment/alipay/AliSecurityPayer;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "pay thread end .............."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6
.end method
