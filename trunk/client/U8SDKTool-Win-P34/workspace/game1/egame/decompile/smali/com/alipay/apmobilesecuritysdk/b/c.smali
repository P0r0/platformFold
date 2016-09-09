.class public final Lcom/alipay/apmobilesecuritysdk/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/apmobilesecuritysdk/b/b;


# direct methods
.method public constructor <init>(Lcom/alipay/apmobilesecuritysdk/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/b/c;->a:Lcom/alipay/apmobilesecuritysdk/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/b/c;->a:Lcom/alipay/apmobilesecuritysdk/b/b;

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/b/b;->a()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/d;->a(Ljava/lang/Throwable;)V

    goto :goto_5
.end method
