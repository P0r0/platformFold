.class final Lcom/alipay/sdk/app/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/H5PayActivity;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/H5PayActivity;)V
    .registers 2

    .prologue
    .line 334
    iput-object p1, p0, Lcom/alipay/sdk/app/g;->a:Lcom/alipay/sdk/app/H5PayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/alipay/sdk/app/g;->a:Lcom/alipay/sdk/app/H5PayActivity;

    invoke-static {v0}, Lcom/alipay/sdk/app/H5PayActivity;->f(Lcom/alipay/sdk/app/H5PayActivity;)V

    .line 339
    return-void
.end method
